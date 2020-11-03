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
    if self.valid?
      #do stuff

    else
      #reject

    end
  end
end
