class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :qty
      t.text :details
      t.time :pick_up_time

      t.timestamps
    end
  end
end
