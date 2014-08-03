require "#{Rails.root}/app/models/product"

class Tasks::GetApidata
  def self.execute
    @keyword =" "
    for i in 1..50 do
      @res = Amazon::Ecs.item_search(@keyword, 
                                     :item_page => i, :search_index => 'Electronics', :response_group => 'Medium')

      @res.items.each do |m| 
        @product = Product.new(
          img_url: m.get('MediumImage/URL'), 
          model_number: m.get('ASIN'),        
          price:  m.get('OfferSummary/LowestUsedPrice/Amount'), 
          title:  m.get('ItemAttributes/Title'), 
          detail_url: m.get('DetailPageURL')
        )
        @product.save
      end
    end
  end
end
