class CreateTableForSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.references :magazine
      t.references :reader
      t.integer :price
    end
  end
end