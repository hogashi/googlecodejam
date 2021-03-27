# sums = [
#   {0=>1},
#   {1=>12, 2=>21},
#   {2=>123, 3=>213, 5=>231, 4=>321},
#   {3=>1234, 4=>2134, 6=>4321, 5=>3214, 8=>4312, 7=>4231, 9=>2431},
#   {4=>12345, 5=>21345, 7=>43215, 6=>32145, 9=>54231, 8=>54321, 10=>54213, 11=>52431, 12=>54312, 14=>24531, 13=>45312},
#   {5=>123456, 6=>213456, 8=>432156, 7=>321456, 10=>654321, 9=>543216, 11=>654231, 12=>653241, 13=>652431, 15=>652413, 14=>654213, 17=>645312, 16=>654312, 19=>465312, 18=>653412, 20=>246531},
#   {6=>1234567, 7=>2134567, 9=>4321567, 8=>3214567, 11=>6543217, 10=>5432167, 12=>7654321, 13=>7654231, 14=>7653241, 16=>7653214, 15=>7652431, 18=>7654213, 17=>7652314, 20=>7654312, 19=>7652413, 21=>7645312, 22=>7653124, 23=>7465312, 24=>7653412, 25=>6753412, 27=>2467531, 26=>4675312},
# ]

t = gets.chomp.to_i

t.times{|ti|
  n, c = gets.chomp.split(' ').map(&:to_i)

  minsum = n - 1
  maxsum = 1 + n * (n - 1) / 2
  if c < minsum || maxsum < c
    puts "Case ##{ti + 1}: IMPOSSIBLE"
  else
    puts "Case ##{ti + 1}: #{ans}"
  end
}
