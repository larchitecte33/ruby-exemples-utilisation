count = 0
arr = []

# i prend successivement la valeur 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
10.times do |i|
	arr[i] = Thread.new {
		sleep(rand(0) / 10.0)
		Thread.current["mycount"] = count
		count += 1
	}
end

arr.each {|t| t.join; print t["mycount"], ", "}
puts "count = #{count}"