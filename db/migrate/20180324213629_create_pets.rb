class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :nickname
      t.string :animal
      t.integer :age
      t.string :breed
      t.text :info
      t.integer :shelter_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
