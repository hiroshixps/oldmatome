class MCategory < ActiveRecord::Base
  belongs_to :l_category
  has_many :s_categories
  validates :m_category, presence: true
end
