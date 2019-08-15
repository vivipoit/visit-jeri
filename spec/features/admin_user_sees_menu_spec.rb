require 'rails_helper'

feature 'admin user sees menu' do
  scenario 'sucessfully' do
    login_as create(:admin_user)

    visit admin_dashboard_path

    expect(page).to have_content 'Idiomas Traduções Gerais Menus Menus Idiomas'
    expect(page).to have_content 'Menus Menus Idiomas Páginas Páginas Idiomas Itens Itens Idiomas'
  end
end
