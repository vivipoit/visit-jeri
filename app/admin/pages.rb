# frozen_string_literal: true

ActiveAdmin.register Page do
  menu priority: 9
  permit_params :menu_id, :name, images: []

  member_action :delete_page_image, method: :delete do
   @img = ActiveStorage::Attachment.find(params[:id])
   @img.purge_later
   redirect_back(fallback_location: edit_admin_page_path)
  end

  index do
    selectable_column
    id_column
    column :menu
    column :name
    column 'Imagens' do |page|
      page.images.map(&:filename).join('<br/>').html_safe
    end
    actions
  end

  filter :menu
  filter :name

  show do
    attributes_table do
      row :menu
      row :name
      row :images do |page|
        page.images.each do |img|
          div do
            span do
              image_tag img, style: 'height:20vh;'
            end
            span do
              link_to "EXCLUIR #{img.filename}", delete_page_image_admin_page_path(img.id), method: :delete, data: { confirm: 'Tem certeza?' }
            end
          end
        end
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :menu
      f.input :name
      f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

  controller do
    def create
      super do |format|
        redirect_to(collection_url) && return if resource.valid?
      end
    end

    def update
      super do |format|
        redirect_to(collection_url) && return if resource.valid?
      end
    end
  end

end
