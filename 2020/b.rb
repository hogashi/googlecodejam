t = gets.chomp.to_i

t.times{|x|
  y = ''
  oldc = 0
  gets.chomp.each_char{|cc|
    c = cc.to_i
    diff = c - oldc
    if diff >= 0
      p = '(' * diff
    elsif diff < 0
      p = ')' * (-1 * diff)
    end
    y += "#{p}#{c}"
    oldc = c
  }

  y += ')' * oldc

  puts "Case ##{x + 1}: #{y}"
}
