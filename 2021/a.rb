t = gets.chomp.to_i

t.times{|ti|
  n = gets.chomp.to_i
  # indexes = []
  # el = gets.chomp.split(' ').map{|ee, i|
  #   e = ee.to_i
  #   indexes.insert(indexes.bsearch_index{|v| v > e }, e)
  #   e
  # }

  # indexes.map{|ind|
  # }

  el = gets.chomp.split(' ').map(&:to_i)

  # p el
  # p '---'

  sum = 0
  (n - 1).times{|i|
    min = n - 1
    el[i .. n - 1].each_index{|jj|
      j = jj + i
      min = j if el[min] > el[j]
    }
    sum += min - i + 1
    head = i > 0 ? el[0 .. i - 1] : []
    mid = el[i .. min].reverse
    tail = min < n - 1 ? el[min + 1 .. n - 1] : []
    el = head + mid + tail

    # p el
  }

  puts "Case #{ti + 1}: #{sum}"
}


