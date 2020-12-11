class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.boolean :favorite
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
