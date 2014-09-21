require "open-uri"
require "nokogiri"

module ProductsHelper

  YAHOO_API_ID = "dj0zaiZpPUNIRG1wZE55bEJ1UyZzPWNvbnN1bWVyc2VjcmV0Jng9ZGQ-"

  def get_yahoopc

    enc_word = URI.encode(@product.product_name)
    url1 = "http://auctions.yahooapis.jp/AuctionWebService/V2/search?appid=#{YAHOO_API_ID}&query=#{enc_word}"
    #yahoo shopping用
    # url2 = "http://shopping.yahooapis.jp/ShoppingWebService/V1/itemSearch?appid=#{YAHOO_API_ID}&query=#{enc_word}"
    doc1 = Nokogiri::XML(open(url1))
    # doc2 = Nokogiri::XML(open(url2))
    if @yahoo_price = doc1.xpath('//xmlns:CurrentPrice').first
      @yahoo_price = doc1.xpath('//xmlns:CurrentPrice').first.text
      @yahoo_detail = doc1.xpath('//xmlns:AuctionItemUrl').first.text
      # @yahoos_price = doc2.xpath('//xmlns:Price').first.text
      # @yahoos_detail = doc2.xpath('//xmlns:Url').first.text
    end

  end

  def get_amazonpc
    @keyword = @product.product_name
    Amazon::Ecs.debug = true
    @res = Amazon::Ecs.item_search(@keyword, 
                                   :item_page => 1, :search_index => 'All', :response_group => 'Medium')
    logger.debug(@res.inspect)
    if @res.items.first
      @amazon_price = @res.items.first.get('OfferSummary/LowestUsedPrice/Amount') 
      @amazon_detail = @res.items.first.get('DetailPageURL')
      #    else
      #      @amazon_recommend = @res.items.get('MoreSearchResultsUrl')
    end
    #    render :json => {:hoge => @amazon_price}
  end

  def get_rakutenpc
    enc_key = URI.escape(@product.product_name.gsub(/\[|\]/, " "))
    url = "http://search.rakuten.co.jp/search/mall/#{enc_key}/"
    doc = Nokogiri::HTML(open(url), nil, "UTF-8" )
    if @rakuten_detail = doc.xpath('//div[@id="ratArea"]/div/div[@class = "rsrSResultItemInfo"]/p[@class ="price"]/a/@href').first
      @rakuten_price = doc.xpath('//div[@id="ratArea"]/div/div[@class = "rsrSResultItemInfo"]/p[@class ="price"]/a').first.text.gsub(/[^0-9]/,"").to_i
      @rakuten_detail = doc.xpath('//div[@id="ratArea"]/div/div[@class = "rsrSResultItemInfo"]/p[@class ="price"]/a/@href').first.text
    end
  end
end
