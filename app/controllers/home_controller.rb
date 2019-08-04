class HomeController < ApplicationController
  def index
    @menu_locales = MenuLocale.display_on_navbar params[:locale]
  end
end
