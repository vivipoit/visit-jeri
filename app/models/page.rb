# frozen_string_literal: true

class Page < ApplicationRecord
  belongs_to :menu
  has_many :page_locales, dependent: :destroy
  has_many :items, dependent: :destroy

  has_many_attached :images
end
