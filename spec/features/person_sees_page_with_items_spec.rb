# frozen_string_literal: true
require 'rails_helper'

feature 'person sees page with items' do
  scenario 'sucessfully' do
    locale = create(:content_locale, hreflang_code: 'en')
    page_locale = create(:page_locale, content_locale: locale, link: 'page')

    item = create(:item, page: page_locale.page)
    create(:item_locale, item: item, content_locale: locale, list_title: 'ABC', list_summary: 'DEF')

    visit '/en/page'

    expect(page).to have_css 'h2', text: 'ABC'
    expect(page).to have_content 'DEF'
  end

  scenario 'in correct language' do
    wrong_locale = create(:content_locale, hreflang_code: 'pt')
    correct_locale = create(:content_locale, hreflang_code: 'en')
    page_locale = create(:page_locale, content_locale: correct_locale, link: 'page')

    item = create(:item, page: page_locale.page)
    create(:item_locale, item: item, content_locale: wrong_locale, list_title: 'ABC', list_summary: 'DEF')
    create(:item_locale, item: item, content_locale: correct_locale, list_title: 'GHI', list_summary: 'JKL')

    visit '/en/page'

    expect(page).to have_content 'GHI'
    expect(page).to have_content 'JKL'

    expect(page).not_to have_content 'ABC'
    expect(page).not_to have_content 'DEF'
  end
end
