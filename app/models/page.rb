class Page < ApplicationRecord
  belongs_to :menu
  has_many :page_locales
  has_many :items
end
