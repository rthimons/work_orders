class Transaction < ActiveRecord::Base
  belongs_to :user
  def type_as_string
    if self.transaction_type == 0
      return "Correspondence"
    elsif self.transaction_type == 1
      return "Comment"
    else 
      return "Status change"
    end
  end
end
