t = Thread.new { sleep 1; Thread.pass; Thread.stop; }
puts t.status
t.run
puts t.status
t.run
puts t.status