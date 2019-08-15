class PageLocalesController < ApplicationController
  def show
    @page_locale = PageLocale.show_info @content_locale_id, params[:id]

    if @page_locale.class == PageLocale
      @items = @page_locale.page.items.for_this_locale @content_locale_id
    else
      redirect_to root_path, status: :not_found
    end
  end
end
