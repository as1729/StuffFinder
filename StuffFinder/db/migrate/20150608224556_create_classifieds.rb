class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.integer :category_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
