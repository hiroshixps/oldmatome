require "open-uri"
require "nokogiri"

module ProductsHelper

  YAHOO_API_ID = "dj0zaiZpPUNIRG1wZE55bEJ1UyZzPWNvbnN1bWVyc2VjcmV0Jng9ZGQ-"

  def get_yahoopc

    enc_word = URI.encode(@product.product_name)
    url = "http://auctions.yahooapis.jp/AuctionWebService/V2/search?appid=#{YAHOO_API_ID}&query=#{enc_word}"
    doc = Nokogiri::XML(open(url))
    @yahoo_price = doc.xpath('//xmlns:CurrentPrice').first.text
    @yahoo_url = doc.xpath('//xmlns:AuctionItemUrl').first.text

  end

  def get_amazonpc
    @keyword = @product.product_name
    Amazon::Ecs.debug = true
    @res = Amazon::Ecs.item_search(@keyword, 
                                   :item_page => 1, :search_index => 'All', :response_group => 'Medium')
    logger.debug(@res.inspect)
    if @res.items.first
      @amazon_price = @res.items.first.get('OfferSummary/LowestNewPrice/Amount') 
      @amazon_detail = @res.items.first.get('DetailPageURL')
      #    else
      #      @amazon_recommend = @res.items.get('MoreSearchResultsUrl')
    end
    #    render :json => {:hoge => @amazon_price}
  end

  def get_rakutenpc
    client = Rakuten::Client.new('1094593437835155159', '131468e2.e5e051bb.131468e3.380b0f28')
    result = client.item_search('2010-09-15', {:keyword =>  @product.product_name.gsub(/(\s.)\s|\s(.$)/, '\1'), :sort => '+itemPrice', :page => 1, :hits => 1})
    if result['Items']['Item'][0]['itemPrice']
      @rakuten_price =  result['Items']['Item'][0]['itemPrice']
      @rakuten_detail = result['Items']['Item'][0]['itemUrl']
    end
  end
end
