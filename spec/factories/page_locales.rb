FactoryBot.define do
  factory :page_locale do
    page { nil }
    content_locale { nil }
    menu_title { "MyString" }
    page_title { "MyString" }
    link { "MyString" }
    content { "MyText" }
  end
end
