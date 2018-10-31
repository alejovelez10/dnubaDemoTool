class RemoveFieldNameFromEmployed < ActiveRecord::Migration[5.2]
  def change
    remove_column :employeds, :actum_id, :integer
  end
end
