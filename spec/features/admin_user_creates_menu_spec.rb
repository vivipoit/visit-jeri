require 'rails_helper'

feature 'admin user creates menu' do
  scenario 'sucessfully' do
    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Menus'
    click_on 'Novo'

    fill_in 'Nome', with: 'Hospedagem'
    click_on 'Criar Menu'

    expect(page).to have_content 'Hospedagem'
  end
end
