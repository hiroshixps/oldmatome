class Product < ActiveRecord::Base
  def self.search(search)
    if search
      Product.where([ 'title LIKE ?', "%#{search}%"])
    end
  end
end
