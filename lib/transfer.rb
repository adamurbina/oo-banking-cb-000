class Transfer

    attr_accessor :sender, :receiver, :amount, :status

    def initialize(sender, receiver, amount)
        @sender = sender
        @receiver = receiver
        @amount = amount
        @status = "pending"
    end

    def valid?
        @sender.valid? && @receiver.valid?
    end

    def execute_transaction
        if !@sender.valid?
            @status = "rejected"
            "Transaction rejected. Please check your account balance."
        elsif status == "pending"
            @sender.deposit(-amount)
            @receiver.deposit(amount)
            @status = "complete"
        end
    end

end
