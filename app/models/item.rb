# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :page
  has_many :item_locales, dependent: :destroy

  scope :for_this_locale, lambda { |content_locale_id|
    includes(:item_locales)
      .where(item_locales: { content_locale_id: content_locale_id })
      .references(:item_locales)
  }
end
