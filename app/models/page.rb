class Page < ApplicationRecord
  belongs_to :menu
  has_many :items
end
