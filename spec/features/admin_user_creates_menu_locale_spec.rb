require 'rails_helper'

feature 'admin user creates menu locale' do
  scenario 'sucessfully' do
    create(:menu, name: 'Passeios')
    create(:content_locale, name: 'en-us')

    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Menus Idiomas'
    click_on 'Novo'

    select 'Passeios', from: 'Menu'
    select 'en-us', from: 'Idioma'
    fill_in 'Nome', with: 'Tours'
    click_on 'Criar Menu Idioma'

    expect(page).to have_content 'Passeios en-us Tours'
  end
end