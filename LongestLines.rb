filename = ARGV[0]

biggest_lines = []
lines = []
number_of_lines = 0

File.open(filename, 'r') do |f|
  number_of_lines = f.readline.to_i
  lines = f.readlines
end

lines.sort_by! { |line| line.length }
lines.reverse!

number_of_lines.times do |i|
  puts lines[i]
end