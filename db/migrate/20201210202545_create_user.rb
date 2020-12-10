class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :user do |t|
      t.string :name
      t.string :address
      t.string :username
      t.string :password
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
