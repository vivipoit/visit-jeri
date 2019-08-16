class HomeController < ApplicationController
  def index
    @page_locales = PageLocale.home_info @content_locale_id
    @item_locales = ItemLocale.home_info @content_locale_id
  end
end
