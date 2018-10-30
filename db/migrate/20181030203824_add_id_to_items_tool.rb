class AddIdToItemsTool < ActiveRecord::Migration[5.2]
  def change
    add_column :items_tools, :actum_id, :integer
  end
end
