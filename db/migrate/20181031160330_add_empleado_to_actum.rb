class AddEmpleadoToActum < ActiveRecord::Migration[5.2]
  def change
    add_column :acta, :employed_id, :integer
  end
end
