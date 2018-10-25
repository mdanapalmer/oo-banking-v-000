class Transfer
attr_accessor :transfer, :sender, :receiver, :status

  def initialize(transfer, sender, receiver, status)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = status
  end

end
