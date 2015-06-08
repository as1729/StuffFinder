class RemoveUserIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :classifieds, :user_id, :integer
  end
end
