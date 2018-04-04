class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :nickname
      t.string :animal
      t.integer :age
      t.string :breed
      t.text :info
      t.references :owner, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
