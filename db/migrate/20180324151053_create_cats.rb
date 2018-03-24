class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :nickname
      t.integer :age
      t.string :breed
      t.text :info
      t.string :shelter
      t.string :city
      t.string :state
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
