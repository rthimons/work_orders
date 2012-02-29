class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :order_id
      t.string :content
      t.integer :transaction_type
      t.integer :user_id
      t.timestamps
    end
  end
end
