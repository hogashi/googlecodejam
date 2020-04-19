t = gets.chomp.to_i

t.times{|x|
  n = gets.chomp.to_i
  c = 0
  j = 0
  y = ''
  tasks = []
  n.times{|i|
    tasks[i] = [i] + gets.chomp.split(' ').map{|ii| ii.to_i }
  }
  tasks.sort!{|a, b| a[1] <=> b[1] }

  tasks.each_index{|index|
    i = tasks[index]
    orgindex, s, e = i
    if c <= s
      tasks[index].push('C')
      c = e
    elsif j <= s
      tasks[index].push('J')
      j = e
    else
      y = 'IMPOSSIBLE'
      break
    end
  }

  if y == ''
    y = tasks.sort{|a, b|
      a[0] <=> b[0]
    }.map{|i|
      i[3]
    }.join('')
  end

  puts "Case ##{x + 1}: #{y}"
}
