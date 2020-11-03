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
    self.sender.valid?(self.amount) && self.receiver.valid?(self.amount) ? true : false
  end
  def execute_transaction
    if self.valid? && self.status == "pending"
      self.sender.balance = self.sender.balance - self.amount
      self.receiver.balance = self.receiver.balance + self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      

    end
  end
end
