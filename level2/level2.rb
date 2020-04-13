file_path	= File.expand_path("../level2_5.in", __FILE__)
input		= File.readlines(file_path).drop(1)

data = input.map {|string| string.split(",")}.transpose

data[6] = data[6].map { |v| v.to_i }

flights = data[4].zip(data[5], data[6])

flights = flights.uniq


flights.each do |data|
	data.delete_at(2)
end

h = Hash.new(0)
flights.each { | v | h.store(v, h[v]+1) }


h = h.sort
h.each do |data, value|
	puts data[0] + " " + data[1] + " " + value.to_s
end