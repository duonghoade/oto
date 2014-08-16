class CreateAutoSales < ActiveRecord::Migration
  def change
    create_table :auto_sales do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
