# frozen_string_literal: true

class PageLocale < ApplicationRecord
  belongs_to :page
  belongs_to :content_locale

  extend FriendlyId
  friendly_id :link

  scope :show_info, ->(content_locale_id, link) {
    includes(:page).where(content_locale_id: content_locale_id, link: link).first
  }

  scope :home_info, ->(content_locale_id) {
    includes(:page).where(content_locale_id: content_locale_id).order(updated_at: :desc).limit(3)
  }

  before_save :parameterize_link

  private

  def parameterize_link
    self.link = self.link.parameterize
  end
end
