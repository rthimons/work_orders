class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :subject
      t.string :status
      t.integer :list_id
      t.integer :user_id
      t.timestamps
    end
  end
end
