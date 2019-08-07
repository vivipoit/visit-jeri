FactoryBot.define do
  factory :page do
    name { 'Duna do Pôr do Sol' }
    association :menu

    trait :with_locale do
      after(:create) do |page|
        create(:page_locale, page: page)
      end
    end
  end
end
