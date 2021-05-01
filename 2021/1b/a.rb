t = gets.chomp.to_i

t.times{|tt|
  n, k = gets.chomp.split(' ').map(&:to_i)
  ints = gets.chomp.split(' ').map(&:to_i).sort.uniq

  max1 = 0
  max2 = 0
  maxi1 = 0
  maxi2 = 0
  old = 0

  (ints + [k + 1]).each{|it|
    aida = it - old - 1
    if aida > max1
      max2 = max1
      maxi2 = maxi1
      max1 = aida
      maxi1 = it
    elsif aida > max2
      max2 = aida
      maxi2 = it
    end

    old = it
  }

  # p ints
  # p [max1, maxi1, max2, maxi2]

  ans1 = 0
  if max1 > 0
    haji = false
    if maxi1 == ints[0] || maxi1 == k + 1
      haji = true
    end
    ans1 = haji ? max1 : (max1 + 1) / 2;
  end
  ans2 = 0
  if max2 > 0
    haji = false
    if maxi2 == ints[0] || maxi2 == k + 1
      haji = true
    end
    ans2 = haji ? max2 : (max2 + 1) / 2;
  end

  # p [ans1, ans2]

  ans = 1.0 * (ans1 + ans2) / k
  puts "Case ##{tt + 1}: #{ans}"
}


