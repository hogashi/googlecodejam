t = gets.chomp.to_i

t.times{|tt|
  xr, yr = gets.chomp.split(' ').map{|i| i.to_i }
  x, y = [xr, yr].map{|i| i.abs }

  res = 'IMPOSSIBLE'

  if ((x % 2) + (y % 2)) != 1
    puts "Case ##{tt + 1}: #{res}"
    next
  end

  xl, yl = [x,  y].map{|i|
    if i == 0
      0
    else
      logl = Math.log2(i).ceil
      2 ** (logl + 1) - i
    end
  }

  cand = nil
  index = 0
  xorxys = [[x, y], [xl, y], [x, yl], [xl, yl]]
  xors = xorxys.map{|i| i[0] ^ i[1] }
  xors.map{|xor|
    # p [xorxys[index], xor.to_s(2), index]
    xx, yy = xorxys[index]
    larger = xx > yy ? xx : yy
    if ((xor + 1).to_s(2).length == (larger.to_s(2).length + 1))
      # p [xor.to_s(2), index]
      cand = xor
      break
    end
    index += 1
  }

  unless cand.nil?
    res = ''
    length = xors[index].to_s(2).length
    xrstr = xorxys[index][0].to_s(2).reverse
    yrstr = xorxys[index][1].to_s(2).reverse
    xstr = xrstr + ('0' * (xl.to_s(2).length - xrstr.length))
    ystr = yrstr + ('0' * (yl.to_s(2).length - yrstr.length))
    # p index
    case index
      when 0
        length.times{|i|
          res += xstr[i] == '1' ? 'e' : 'n'
        }
      when 1
        length.times{|i|
          if xstr[i] == '1'
            if xstr[i + 1].nil?
              res += 'e'
            else
              res += 'w'
            end
          else
            res += 'n'
          end
        }
      when 2
        length.times{|i|
          if xstr[i] == '1'
            res += 'e'
          else
            if ystr[i + 1].nil?
              res += 'n'
            else
              res += 's'
            end
          end
        }
      else # 3
        length.times{|i|
          if xstr[i] == '1'
            if xstr[i + 1].nil?
              res += 'e'
            else
              res += 'w'
            end
          else
            if ystr[i + 1].nil?
              res += 'n'
            else
              res += 's'
            end
          end
        }
    end

    if xr < 0
      res = res.gsub(/e/, 'W').gsub(/w/, 'E')
    else
      res = res.gsub(/e/, 'E').gsub(/w/, 'W')
    end

    # p yr

    if yr < 0
      res = res.gsub(/n/, 'S').gsub(/s/, 'N')
    else
      res = res.gsub(/n/, 'N').gsub(/s/, 'S')
    end
  end

  puts "Case ##{tt + 1}: #{res}"
}
