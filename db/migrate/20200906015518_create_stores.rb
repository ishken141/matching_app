class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :tell
      t.string :address
      t.text :schedule
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
