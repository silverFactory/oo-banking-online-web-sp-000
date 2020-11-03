class Transfer
  def initialize(sender, receiver, status = pending)
    @sender = sender
    @receiver = receiver
    @status = status
  end
end
