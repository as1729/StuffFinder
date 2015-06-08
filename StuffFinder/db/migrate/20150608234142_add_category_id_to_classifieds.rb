class AddCategoryIdToClassifieds < ActiveRecord::Migration
  def change
    add_reference :classifieds, :category, index: true, foreign_key: true
  end
end
