class CreateActa < ActiveRecord::Migration[5.2]
  def change
    create_table :acta do |t|
      t.date :fecha
      t.text :description
      t.text :signature_delivery
      t.text :signature_requests

      t.timestamps
    end
  end
end
