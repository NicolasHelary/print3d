class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :file3d
      t.string :picture

      t.timestamps
    end
  end
end
