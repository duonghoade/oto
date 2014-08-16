class AddUserIdToAutoSale < ActiveRecord::Migration
  def change
    add_column :auto_sales, :user_id, :integer
  end
end
