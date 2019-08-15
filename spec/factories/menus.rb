FactoryBot.define do
  factory :menu do
    name { 'Passeios' }

    trait :with_page do
      after(:create) do |menu|
        create(:page, :with_locales, menu: menu)
      end
    end
  end
end
