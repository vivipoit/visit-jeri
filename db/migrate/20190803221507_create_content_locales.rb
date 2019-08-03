class CreateContentLocales < ActiveRecord::Migration[5.2]
  def change
    create_table :content_locales do |t|
      t.string :name
      t.string :hreflang_code

      t.timestamps
    end
  end
end
