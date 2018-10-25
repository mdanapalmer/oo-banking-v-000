class Transfer
attr_accessor :sender, :receiver, :status, :amount, :balance

  def initialize(sender, receiver, status)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = 50
  end

  def valid?
    if @sender.balance > 0 && @receiver.balance > 0
      true
    else
      false
    end
  end


end
