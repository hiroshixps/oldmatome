class SCategory < ActiveRecord::Base
  belongs_to :m_category
  has_one :l_category, through: :m_category
  validates :s_category, presence: true
end
