require_relative 'Accounts'

account1 = Accounts.new(100)
puts "Balance : #{account1.retourneBalance}"
account1.transferToSavings(15)