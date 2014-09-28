require 'rubygems'
require "open-uri"
require "nokogiri"
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require


YAHOO_API_ID = "dj0zaiZpPUNIRG1wZE55bEJ1UyZzPWNvbnN1bWVyc2VjcmV0Jng9ZGQ-"

# 中カテゴリは取得できないので、マスタからさがして代入
# pc.camera, keitaiカテゴリのみなので注意
Product.all.each do |product| 
  if !SCategory.find_by_s_category(product.s_category)
    product.delete
  elsif !product.m_category
    product.m_category = SCategory.find_by_s_category(product.s_category).m_category.m_category 
    product.l_category = SCategory.find_by_s_category(product.s_category).l_category.l_category 
    product.save
  end
end   


Product.all.each do |product| 
  # get_yahoopc

  enc_key = URI.escape(product.product_name.gsub(/\[|\]|\?|&|\(|\)\{|\}|\?|\*|\/|\+/, " "))
  url1 = "http://auctions.yahooapis.jp/AuctionWebService/V2/search?appid=#{YAHOO_API_ID}&query=#{enc_key}&sort=cbids"
  begin
    doc1 = Nokogiri::XML(open(url1))
    if @yahoo_price = doc1.xpath('//xmlns:CurrentPrice').first
      @yahoo_price = doc1.xpath('//xmlns:CurrentPrice').first.text
      @yahoo_detail = doc1.xpath('//xmlns:AuctionItemUrl').first.text
      product.yahoo_price = @yahoo_price
      product.yahoo_url = "http://ck.jp.ap.valuecommerce.com/servlet/referral?sid=3159712&pid=882988247&vc_url=#{@yahoo_detail}"
    end
  rescue
  end

  # get_amazonpc
  @keyword = product.product_name
  Amazon::Ecs.debug = true
  begin
    @res = Amazon::Ecs.item_search(@keyword, 
                                   :item_page => 1, :search_index => 'All', :response_group => 'Medium')
    if @res.items.first
      @amazon_price = @res.items.first.get('OfferSummary/LowestUsedPrice/Amount') 
      @amazon_price2 = @res.items.first.get('OfferSummary/LowestNewPrice/Amount') 
      @amazon_detail = @res.items.first.get('DetailPageURL')
      if @amazon_price
        product.amazon_price = @amazon_price <  @amazon_price2 ? @amazon_price : @amazon_price2
      else
        product.amazon_price = @amazon_price2
      end
      product.amazon_url = @amazon_detail
    end
  rescue
  end

  # get_rakutenpc
  url = "http://hb.afl.rakuten.co.jp/hgc/0e6d5595.f4187c7a.0e6d5596.9b1eb6e7/?pc=http%3a%2f%2fsearch.rakuten.co.jp%2fsearch%2fmall%2f#{enc_key}%2f%3fscid%3daf_link_urltxt&amp;m=http%3a%2f%2fm.rakuten.co.jp%2f"
  begin
    doc = Nokogiri::HTML(open(url), nil, "UTF-8" )
    if @rakuten_detail = doc.xpath('//div[@id="ratArea"]/div/div[@class = "rsrSResultItemInfo"]/p[@class ="price"]/a/@href').first
      @rakuten_price = doc.xpath('//div[@id="ratArea"]/div/div[@class = "rsrSResultItemInfo"]/p[@class ="price"]/a').first.text.gsub(/[^0-9]/,"").to_i
      @rakuten_detail = doc.xpath('//div[@id="ratArea"]/div/div[@class = "rsrSResultItemInfo"]/p[@class ="price"]/a/@href').first.text
      product.rakuten_price = @rakuten_price
      product.rakuten_url = "http://hb.afl.rakuten.co.jp/hgc/131fc102.73a75855.131fc103.71a48503/?pc=#{@rakuten_detail}%3fscid%3"
    end
  rescue
  end

  # get_ebaypc
  url = "http://www.ebay.com/sch/i.html?&_nkw=#{enc_key}"
  begin
    doc = Nokogiri::HTML(open(url), nil, "UTF-8" )
    if @ebay_detail = doc.xpath('//h3[@class="lvtitle"]/a/@href').first
      @ebay_price = doc.xpath('//span[@class="g-b"]').first.text.gsub(/[^0-9]/,"").to_i*0.01*109
      @ebay_detail = doc.xpath('//h3[@class="lvtitle"]/a/@href').first.text
      product.ebay_price = @ebay_price
      product.ebay_url = @ebay_detail
    end
  rescue
  end
  product.save
end

