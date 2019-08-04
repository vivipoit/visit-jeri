require 'rails_helper'

feature 'person sees home menus' do
  scenario 'sucessfully' do
    pt_br = create(:content_locale, hreflang_code: 'pt-br')
    en_us = create(:content_locale, hreflang_code: 'en-us')

    menu = create(:menu)

    create(:menu_locale, menu: menu, content_locale: pt_br, name: 'Passeios')
    create(:menu_locale, menu: menu, content_locale: en_us, name: 'Tours')

    visit root_path

    expect(page).to have_content 'Passeios'
    expect(page).not_to have_content 'Tours'
  end
end
