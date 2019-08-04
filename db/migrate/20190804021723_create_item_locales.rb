class CreateItemLocales < ActiveRecord::Migration[5.2]
  def change
    create_table :item_locales do |t|
      t.references :item, foreign_key: true
      t.references :content_locale, foreign_key: true
      t.string :list_title
      t.string :list_summary
      t.string :link
      t.string :page_title
      t.text :page_content

      t.timestamps
    end
  end
end
