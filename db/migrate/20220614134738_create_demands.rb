class CreateDemands < ActiveRecord::Migration[6.1]
  def change
    create_table :demands do |t|
      t.references :client, null: false, foreign_key: { to_table: :users }
      t.references :product, null: false, foreign_key: true
      t.float :proposed_price
      t.text :comment
      t.date :publication_date

      t.timestamps
    end
  end
end
