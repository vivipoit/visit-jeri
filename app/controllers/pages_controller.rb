class PagesController < ApplicationController
  def show
    @page = Page.show_info @content_locale_id, params[:id]

    if @page.present?
      @items = @page.items.for_this_locale @content_locale_id
    else
      redirect_to root_path, status: :not_found
    end
  end
end
