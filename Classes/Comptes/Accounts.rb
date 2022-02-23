class Accounts
	attr_reader :balance
	protected :balance
	
	def initialize(balance)
		@balance = balance
	end

	def greaterBalanceThan(other)
		return @balance > other.balance
	end
	
	private
		def debit(account, amount)
			account.balance -= amount
		end
		
		def credit(account, amount)
			account.balance += amount
		end
	
	public
		def retourneBalance
			@balance
		end
	
		def transferToSavings(amount)
			debit(@checking, amount)
			credit(@savings, amount)
		end
end