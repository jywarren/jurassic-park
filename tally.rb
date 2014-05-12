# Jurassic Park | Tally

total = 0
animals = [
  {:name => 'Tyrannosaurs',       :expected => 2 , :version => 4.1 },
  {:name => 'Maiasaurs',          :expected => 21, :version => 3.3 },
  {:name => 'Stegosaurs',         :expected => 4 , :version => 3.9 },
  {:name => 'Triceratops',        :expected => 8 , :version => 3.1 },
  {:name => 'Procompsognathids',  :expected => 49, :version => 3.9 },
  {:name => 'Othnielia',          :expected => 16, :version => 3.1 },
  {:name => 'Velociraptors',      :expected => 8 , :version => 3.0 },
  {:name => 'Apatosaurs',         :expected => 17, :version => 3.1 },
  {:name => 'Hadrosaurs',         :expected => 11, :version => 3.1 },
  {:name => 'Dilophosaurs',       :expected => 7 , :version => 4.3 },
  {:name => 'Pterosaurs',         :expected => 6 , :version => 4.3 },
  {:name => 'Hypsilophodontids',  :expected => 33, :version => 2.9 },
  {:name => 'Euoplocephalids',    :expected => 16, :version => 4.0 },
  {:name => 'Styracosaurs',       :expected => 18, :version => 3.9 },
  {:name => 'Microceratops',      :expected => 22, :version => 4.1 }
]

animals.each do |a|
  a[:found] = a[:expected]
end

expected = animals.collect{|a| a[:expected]}.inject(0, :+)
found    = animals.collect{|a| a[:found]   }.inject(0, :+)

puts "\n"
puts "Total Animals                             #{expected}"
puts "-"*60
puts "    Species".ljust(30)+"Expected".rjust(10)+"Found".rjust(10)+"Ver".rjust(10)
puts "-"*60

animals.each do |a|
  puts a[:name].ljust(30)+a[:expected].to_s.rjust(10)+a[:found].to_s.rjust(10)+a[:version].to_s.rjust(10)
end

puts "-"*60
puts "Total"+" "*25+expected.to_s.rjust(10)+found.to_s.rjust(10)

