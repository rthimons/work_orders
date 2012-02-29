class Order < ActiveRecord::Base
  has_many :transactions
end
