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
    if valid?
      amount -= @sender
      amount += @receiver
      status = 'complete'
    else
      false
  end
end

end
