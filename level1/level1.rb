file_path	= File.expand_path("../level1_5.in", __FILE__)
input		= File.readlines(file_path).drop(1)

data = input.map {|string| string.split(",")}.transpose

data = data.map{ |arr| arr.map{ |v| v.to_f } }

puts data[0].min.to_i.to_s + " " + data[0].max.to_i.to_s
puts data[1].min.to_s + " " + data[1].max.to_s
puts data[2].min.to_s + " " + data[2].max.to_s
puts data[3].max