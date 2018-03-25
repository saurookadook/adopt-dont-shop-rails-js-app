class CreateCaretakers < ActiveRecord::Migration[5.1]
  def change
    create_table :caretakers do |t|
      t.integer :employee_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
