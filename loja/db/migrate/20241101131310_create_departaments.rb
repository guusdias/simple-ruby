class CreateDepartaments < ActiveRecord::Migration[7.2]
  def change
    create_table :departaments do |t|
      t.string :name

      t.timestamps
    end
  end
end
