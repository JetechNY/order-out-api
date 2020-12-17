class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.string :note
      t.boolean :checkout
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
