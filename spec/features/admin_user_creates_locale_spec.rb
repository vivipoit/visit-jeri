require 'rails_helper'

feature 'admin user creates locale' do
  scenario 'sucessfully' do
    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Idiomas'
    click_on 'Novo'

    fill_in 'Nome', with: 'Português'
    fill_in 'Código hreflang', with: 'pt'
    click_on 'Criar Idioma'

    expect(page).to have_content 'Português pt'
  end
end
