class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.references :demand, null: false, foreign_key: true
      t.references :printer, null: false, foreign_key: { to_table: :users }
      t.float :price
      t.integer :status
      t.integer :client_score
      t.integer :printer_score

      t.timestamps
    end
  end
end
