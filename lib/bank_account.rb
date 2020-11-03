class BankAccount
  attr_reader :name, :balance, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  def deposit(amount)
    @balance += amount
  end
  def display_balance
    "Your balance is $#{self.balance}."
  end
  def valid?
    if self.status == "open" && self.balance > 0
      true
    end
  end
end
