class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.integer :java_qty
      t.integer :beans_qty
      t.integer :sandwich_qty
      t.text :order_notes
      t.time :pick_up_time

      t.timestamps
    end
  end
end
