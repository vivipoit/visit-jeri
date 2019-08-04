class PageLocale < ApplicationRecord
  belongs_to :page
  belongs_to :content_locale

  before_save :parameterize_link

  private

  def parameterize_link
    self.link = self.link.parameterize
  end
end
