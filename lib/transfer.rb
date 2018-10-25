class Transfer
attr_accessor :sender, :receiver, :status, :amount, :balance

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end

  def valid?
    if @sender.valid? && @receiver.valid? && @status == 'pending' && @sender.balance > @amount
      true
    else
      false
    end
  end

  def execute_transaction
    if valid?
      @sender.balance -= amount
      @receiver.balance += amount
      @status = 'complete'
    else
      "Transaction rejected. Please check your account balance."
      @status == 'rejected'
    end
    execute_transaction
  end

end
