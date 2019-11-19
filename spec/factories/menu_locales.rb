# frozen_string_literal: true

FactoryBot.define do
  factory :menu_locale do
    name { 'Tours' }
    association :menu
    association :content_locale
  end
end
