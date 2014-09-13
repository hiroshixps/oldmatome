module ProductsHelper

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

end
