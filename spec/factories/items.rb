FactoryBot.define do
  factory :item do
    name { 'Compartilhado' }
    association :page
  end
end
