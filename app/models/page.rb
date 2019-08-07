class Page < ApplicationRecord
  belongs_to :menu
  has_many :page_locales
  has_many :items

  scope :show_info, -> (content_locale_id, id) {
    includes(:page_locales).where(id: id, page_locales: {content_locale_id: content_locale_id}).references(:page_locales).first
  }
end
