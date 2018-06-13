class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    def intitialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance += amount
    end
end
