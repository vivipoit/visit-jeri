# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :menu_locales
  has_many :pages

  scope :build_navbar, -> (content_locale_id) {
    includes(:menu_locales, pages: [:page_locales]).where(menu_locales: {content_locale_id: content_locale_id}, pages: {page_locales: {content_locale_id: content_locale_id}}).references(:menu_locales)
  }
end
