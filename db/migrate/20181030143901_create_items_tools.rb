class CreateItemsTools < ActiveRecord::Migration[5.2]
  def change
    create_table :items_tools do |t|
      t.integer :tools_id
      t.integer :acta_id
      t.integer :quantity
      t.integer :unit_prince
      t.integer :total_prince
      t.text :firm

      t.timestamps
    end
  end
end
