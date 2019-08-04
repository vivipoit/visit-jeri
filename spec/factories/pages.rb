FactoryBot.define do
  factory :page do
    name { 'Duna do Pôr do Sol' }
    association :menu
  end
end
