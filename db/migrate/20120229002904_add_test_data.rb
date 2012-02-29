class AddTestData < ActiveRecord::Migration
  def up
    User.create(:name => "bob", :email_address => "bob@me.com")
    User.create(:name => "susan", :email_address => "susant@me.com")
    Order.create(:list_id => 1, :user_id => 1, :subject => "Jim Tippey x2333 broken phone", :status => "open") 
    List.create(:name_of_list => "TelecomQueue")
    Transaction.create(:order_id => 1, :transaction_type => 1, :user_id => 2, :content => "Jim Tippey has reported that his phone is not functioning properly")
    Transaction.create(:order_id => 1, :transaction_type => 1, :user_id => 1, :content => "I have worked on this for several hours. Problem with the line. WOrking on next action.")
    Order.create(:list_id => 2, :user_id => 2, :subject => "Belinda Greer x2303 broken computer", :status => "new")
    List.create(:name_of_list => "Helpdesk")
    Transaction.create(:order_id => 2, :transaction_type => 1, :user_id => 1, :content => "Belinda has reported that her computer is not functioning properly")
    Transaction.create(:order_id => 2, :transaction_type => 1, :user_id => 2, :content => "I have worked on this for several hours. Problem with the motherboard. WOrking on next action.")
  end

  def down
    User.delete_all
    Order.delete_all
    List.delete_all
    Transaction.delete_all
  end
end
