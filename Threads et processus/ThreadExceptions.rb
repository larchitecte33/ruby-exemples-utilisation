threads = []

6.times { |i| 
	threads << Thread.new(i) {
		raise "Boom !" if i == 3
		puts i
	}
}

threads.each {|t| t.join}

Thread.abort_on_exception = true

threads = []

6.times { |i| 
	threads << Thread.new(i) {
		raise "Boom !" if i == 3
		puts i
	}
}

threads.each {|t| t.join}