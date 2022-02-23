class Logger
	private_class_method :new
	@@logger = nil
	def Logger.create
		@@logger = new unless @@loger
		@@loger
	end
end