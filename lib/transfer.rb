class Transfer
attr_accessor :sender, :receiver, :status, :amount, :balance

  def initialize(sender, receiver, status)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = 50
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    while valid?
      counter = 0
      @sender.balance -= amount
      @receiver.balance += amount
      @status = 'complete'
      counter +-1
      counter == 1
      break
    else
      "Transaction rejected. Please check your account balance."
  end
end

end
