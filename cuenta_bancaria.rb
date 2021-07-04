class BankAccount
    attr_accessor :user_name
    attr_reader :vip, :account_number
    
    def initialize(user_name, account_number, vip = 0)
        if account_number.digits.length != 8
            raise RangeError, "Número de dígitos incorrecto."
        end
        if !(0..1).include? (vip)
            raise RangeError, "Número VIP incorrecto."
        end
        @user_name = user_name
        @account_number = account_number
        @vip = vip
    end
    def account_vip
        "#{self.vip}-#{self.account_number}"
    end
end

results = BankAccount.new("Juan", 12345678, 1)

puts results.user_name
puts results.account_vip