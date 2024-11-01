class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :preco
      t.integer :quantity

      t.timestamps
    end
  end
end
