class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.references :menu, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
