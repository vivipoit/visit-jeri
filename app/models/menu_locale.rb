class MenuLocale < ApplicationRecord
  belongs_to :menu
  belongs_to :content_locale

  scope :display_on_navbar, -> (locale) {
    includes(:content_locale).where('content_locales.hreflang_code = ?', locale).references(:content_locale)
  }
end
