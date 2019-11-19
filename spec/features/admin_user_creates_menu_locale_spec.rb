# frozen_string_literal: true

require 'rails_helper'

feature 'admin user creates menu locale' do
  scenario 'sucessfully' do
    create(:menu, name: 'Passeios')
    create(:content_locale, name: 'en')

    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Menus Idiomas'
    click_on 'Novo'

    select 'Passeios', from: 'Menu'
    select 'en', from: 'Idioma'
    fill_in 'Nome', with: 'Tours'
    click_on 'Criar Menu Idioma'

    expect(page).to have_content 'Passeios en Tours'
  end
end
