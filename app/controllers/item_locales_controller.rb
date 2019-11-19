# frozen_string_literal: true

class ItemLocalesController < ApplicationController
  def show
    @item_locale = ItemLocale.show_info @content_locale_id, params[:id]

    unless @item_locale.class == ItemLocale
      redirect_to root_path, status: :not_found
    end
  end
end
