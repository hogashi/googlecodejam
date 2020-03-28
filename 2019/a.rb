t = gets.chomp.to_i

t.times{|x|
  n = gets.chomp
  a = n.gsub(/^[^4]*/) {|s| '' }.gsub(/[^4]/) {|s| '0' }.gsub(/4/) {|s| '1' }
  b = n.gsub(/4/) {|s| '3' }
  puts "Case ##{x}: #{a} #{b}"
}
