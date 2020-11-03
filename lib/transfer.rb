class Transfer
  attr_accessor :status, :amount
  attr_reader :sender, :receiver
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  def valid?
    self.sender.valid? && self.receiver.valid? ? true : false
  end
  def execute_transaction
    if self.valid?
      self.receiver.deposit(self.amount)
      self.sender.balance = self.sender.balance - self.amount
      self.status = "complete"
      self.amount = 0
    else
    #  self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
