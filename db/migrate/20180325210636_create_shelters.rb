class CreateShelters < ActiveRecord::Migration[5.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.integer :address_id

      t.timestamps null: false
    end
  end
end
