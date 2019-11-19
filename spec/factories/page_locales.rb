# frozen_string_literal: true
FactoryBot.define do
  factory :page_locale do
    menu_title { 'Sunset' }
    page_title { 'Sunset on the Dune - Jeri CE' }
    link       { 'sunset-dune-jeri-ce' }
    content    { 'Deiusmod tempor incididunt ut labore et dolore magna aliqua.' }
    association :page
    association :content_locale
  end
end
