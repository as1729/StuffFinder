class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.datetime :remember_created_at

      t.timestamps null: false
    end
  end
end
