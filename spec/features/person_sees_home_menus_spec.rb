require 'rails_helper'

feature 'person sees home menus' do
  scenario 'sucessfully' do
    pt = create(:content_locale, hreflang_code: 'pt')
    en = create(:content_locale, hreflang_code: 'en')

    menu = create(:menu, :with_page)

    create(:menu_locale, menu: menu, content_locale: pt, name: 'Passeios')
    create(:menu_locale, menu: menu, content_locale: en, name: 'Tours')

    visit root_path

    expect(page).to have_content 'Passeios'
    expect(page).not_to have_content 'Tours'
  end
end
