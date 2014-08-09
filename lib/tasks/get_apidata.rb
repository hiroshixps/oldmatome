require "#{Rails.root}/app/models/product"

class Tasks::GetApidata
  def self.execute
    @keymaps = [" ","a", "b", "c", "d", "e","f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    @keymaps.each do |keyword|
      #各キーワドに対して10ページ目まで取得   
      for i in 1..10 do
        sleep(0.5)
        @res = Amazon::Ecs.item_search(keyword, 
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
          puts m.get('ASIN')
        end
      end
    end
  end
end
