class ItemLocale < ApplicationRecord
  belongs_to :item
  belongs_to :content_locale

  before_save :parameterize_link

  scope :show_info, -> (content_locale_id, link) {
    where(content_locale_id: content_locale_id, link: link).first
  }

  scope :home_info, -> (content_locale_id) {
    includes(item: [page: [:page_locales]]).where(content_locale_id: content_locale_id, item: {page: {page_locales: {content_locale_id: content_locale_id}}}).order(updated_at: :desc).limit(3)
  }

  private

  def parameterize_link
    self.link = self.link.parameterize
  end
end
