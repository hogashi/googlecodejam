t = gets.chomp.to_i

t.times{|x|
  n, k = gets.chomp.map{|i| i.to_i }

  avg = (1.0 * k / n).floor
  amari = k - (avg * n)

  puts "Case ##{x + 1}: #{y}"
  puts ans.map{|line|
    line.join(' ')
  }.join('\n')
}
