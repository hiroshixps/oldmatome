class Product < ActiveRecord::Base
  validates :product_name, presence: true, uniqueness: true
  def self.search(search)
    if search
      Product.where([ 'title LIKE ?', "%#{search}%"])
    end
  end
end
