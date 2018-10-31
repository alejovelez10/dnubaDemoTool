class CreateEmployeds < ActiveRecord::Migration[5.2]
  def change
    create_table :employeds do |t|
      t.string :name
      t.integer :cedula
      t.string :cargo
      t.integer :actum_id

      t.timestamps
    end
  end
end
