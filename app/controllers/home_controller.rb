class HomeController < ApplicationController
  def index
    @page_locales = PageLocale.home_info @content_locale_id
  end
end
