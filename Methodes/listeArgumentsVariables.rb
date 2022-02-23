def varags(arg1, *rest)
	puts "Recu #{arg1} et #{rest.join(', ')}"
end

varags("un")
varags("un", "deux")
varags("un", "deux", "trois")