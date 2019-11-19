# frozen_string_literal: true

class MenuLocale < ApplicationRecord
  belongs_to :menu
  belongs_to :content_locale
end
