class ApplicationController < ActionController::Base
  before_action :build_navbar

  def build_navbar
    @content_locale_id = ContentLocale.where(hreflang_code: params[:locale]).first
    @menus = Menu.build_navbar @content_locale_id
  end
end
