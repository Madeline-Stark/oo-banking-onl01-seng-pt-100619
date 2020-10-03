require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid? 
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    # each transfer can only happen once
    if self.status == "pending" && self.valid? && self.sender.balance > self.amount
      self.sender.balance -= self.amount # was using - which didn't mutate balance
      self.receiver.deposit(self.amount)
      self.status = "complete"
    else 
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end

  end

  def reverse_transfer 
    if self.status == "complete"
      self.receiver.balance -= self.amount 
      self.sender.deposit(self.amount)
      self.status = "reversed"
    end
  end

end
