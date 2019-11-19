# frozen_string_literal: true

class Page < ApplicationRecord
  belongs_to :menu
  has_many :page_locales
  has_many :items

  has_many_attached :images
end
