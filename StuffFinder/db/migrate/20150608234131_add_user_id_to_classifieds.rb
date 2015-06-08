class AddUserIdToClassifieds < ActiveRecord::Migration
  def change
    add_reference :classifieds, :user, index: true, foreign_key: true
  end
end
