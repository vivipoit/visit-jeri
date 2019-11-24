# frozen_string_literal: true

class PageLocale < ApplicationRecord
  extend FriendlyId
  friendly_id :link

  belongs_to :page
  belongs_to :content_locale

  before_save :parameterize_link

  scope :show_info, ->(content_locale_id, link) { includes(:page).find_by(content_locale_id: content_locale_id, link: link) }
  scope :home_info, ->(content_locale_id) { includes(:page).where(content_locale_id: content_locale_id).order(updated_at: :desc).limit(3) }

  private

  def parameterize_link
    self.link = link.parameterize
  end
end
