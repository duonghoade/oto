class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.integer :auto_sale_id
      t.string :name
      t.integer :year
      t.string :madein
      t.string :type
      t.string :color
      t.string :went
      t.text :description

      t.timestamps
    end
  end
end
