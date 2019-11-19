# frozen_string_literal: true

FactoryBot.define do
  factory :page do
    name { 'Duna do Pôr do Sol' }
    association :menu

    trait :with_locales do
      after(:create) do |page|
        pt = ContentLocale.find_or_create_by(hreflang_code: 'pt')
        en = ContentLocale.find_or_create_by(hreflang_code: 'en')

        create(:page_locale, page: page, content_locale: pt)
        create(:page_locale, page: page, content_locale: en)
      end
    end
  end
end
