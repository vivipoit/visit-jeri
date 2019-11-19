# frozen_string_literal: true
class ApplicationController < ActionController::Base
  before_action :ensure_locale
  before_action :build_navbar

  def ensure_locale
    params[:locale] = 'pt' if params[:locale].blank?
    I18n.locale = params[:locale]
  end

  def build_navbar
    @content_locale_id = ContentLocale.where(hreflang_code: params[:locale]).first
    @navbar_menus = Menu.build_navbar @content_locale_id
    @language_options = ContentLocale.all.order(:name)
  end
end
