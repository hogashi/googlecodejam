t = gets.chomp.to_i

t.times{|tt|
  xr, yr, m = gets.chomp.split(' ')
  res = 'IMPOSSIBLE'

  far = 10000
  x, y = [xr, yr].map{|i| i.to_i }
  minute = 0

  # spots = m.split('').inject{|s|
  m.split('').each{|s|
    minute += 1
    case s
      when 'N'
        y += 1
      when 'S'
        y -= 1
      when 'E'
        x += 1
      else # W
        x -= 1
    end
    if x.abs + y.abs <= minute
      res = "#{minute}"
      break
    end
  }

  puts "Case ##{tt + 1}: #{res}"
}
