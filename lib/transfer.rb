class Transfer
attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, status)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end  

end
