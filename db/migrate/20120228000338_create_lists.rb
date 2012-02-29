class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name_of_list
      t.timestamps
    end
  end
end
