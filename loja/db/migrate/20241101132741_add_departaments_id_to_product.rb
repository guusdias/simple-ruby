class AddDepartamentsIdToProduct < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :departament_id, :integer
  end
end
