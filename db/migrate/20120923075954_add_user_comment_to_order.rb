class AddUserCommentToOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :user_comment, :text
  end
end
