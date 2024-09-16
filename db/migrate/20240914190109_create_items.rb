class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :sale_price
      t.decimal :purchase_price
      t.string :status

      t.timestamps
    end
  end
end
