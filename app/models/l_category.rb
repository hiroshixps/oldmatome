class LCategory < ActiveRecord::Base
  validates :l_category, presence: true, uniqueness: true
end
