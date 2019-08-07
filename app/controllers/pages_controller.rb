class PagesController < ApplicationController
  def show
    @page = Page.show_info @content_locale_id, params[:id]
  end
end
