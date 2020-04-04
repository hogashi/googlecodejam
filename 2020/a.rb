t = gets.chomp.to_i

t.times{|x|
  n = gets.chomp.to_i
  k = 0
  r = 0
  cs = Array.new(n, 0)
  cvalues = Array.new(n, 0).map{|v| {} }
  n.times{|i|
    j = 0
    rr = 0
    rvalues = {}
    k += gets.chomp.split(' ').map{|ii|
      iii = ii.to_i
      if cs[j] != 1
        if cvalues[j][iii].nil?
          cvalues[j][iii] = true
        else
          cs[j] = 1
        end
      end
      if rr != 1
        if rvalues[iii].nil?
          rvalues[iii] = true
        else
          rr = 1
        end
      end

      j += 1
      iii
    }[i]

    r += rr
  }

  c = 0
  cs.each{|v| c += v }
  puts "Case ##{x + 1}: #{k} #{r} #{c}"
}
