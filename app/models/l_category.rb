class LCategory < ActiveRecord::Base
  has_many :m_categories
  has_many :l_categories, through: :m_categories
  validates :l_category, presence: true, uniqueness: true
end
