t = gets.chomp.to_i

t.times{|ti|
  x, y, s = gets.chomp.split(' ')
  x, y = x.to_i, y.to_i

  sum = 0
  isC = 0
  isJ = 0
  isQ = 0
  s.split('').each{|c|
    if c == 'C'
      if isJ == 1
        sum += y
      end
      isC = 1
      isJ = 0
    elsif c == 'J'
      if isC == 1
        sum += x
      end
      isJ = 1
      isC = 0
    end
  }
  puts "Case ##{ti + 1}: #{sum}"
}
