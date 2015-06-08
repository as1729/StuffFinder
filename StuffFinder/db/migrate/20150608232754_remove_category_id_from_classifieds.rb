class RemoveCategoryIdFromClassifieds < ActiveRecord::Migration
  def change
    remove_column :classifieds, :category_id, :integer
  end
end
