class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :auto_id
      t.string :avatar

      t.timestamps
    end
  end
end
