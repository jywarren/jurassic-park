# Jurassic Park | Tally
puts "\n"

total = 0
dinosaurs = [
  {:species => 'Manechisaurs',          :expected => 73, :version => 4.2 },
  {:species => 'Corythisaurs',          :expected => 19, :version => 3.9 },
  {:species => 'Gallimimus',            :expected => 70, :version => 4.0 },
  {:species => 'Anklosaurs',            :expected => 64, :version => 2.9 },
  {:species => 'Pachycephalosaurs',     :expected => 33, :version => 4.5 },
  {:species => 'Brachiosaurs',          :expected => 20, :version => 3.5 },
  {:species => 'Parasaurolophus',       :expected => 55, :version => 3.1 },
  {:species => 'Spear Fish',            :expected => 78, :version => 4.0 },
  {:species => 'Theropoda Avialiae',    :expected => 61, :version => 3.5 },
  {:species => 'Carcharodontosaurinids',:expected => 68, :version => 4.1 },
  {:species => 'Caihong Juji',          :expected => 39, :version => 4.0 },
  {:species => 'Mesozoica',             :expected => 54, :version => 4.1 },
  {:species => 'Plesiosaurs',           :expected => 19, :version => 2.5 },
  {:species => 'Ichthyosaurs',          :expected => 27, :version => 4.3 },
  {:species => 'Mansourasaurs',         :expected => 11, :version => 5.1 },
  {:species => 'Brontosaurs',           :expected => 57, :version => 4.1 },
  {:species => 'Diplodocusaurs',        :expected => 8 , :version => 2.0 },
  {:species => 'Allosaurs',             :expected => 11, :version => 2.0 },
  {:species => 'Tyrants',	        	    :expected => 11, :version => 3.5 },
  {:species => 'Massospondyls',         :expected => 9 , :version => 3.0 },
  {:species => 'Mosasaurs',             :expected => 15, :version => 2.5 },
  {:species => 'Argentinasaurs',        :expected => 9 , :version => 2.9 },
  {:species => 'Tyrannosaurs',          :expected => 2 , :version => 4.1 },
  {:species => 'Maiasaurs',             :expected => 21, :version => 3.3 },
  {:species => 'Stegosaurs',            :expected => 4 , :version => 3.9 },
  {:species => 'Triceratops',           :expected => 8 , :version => 3.1 },
  {:species => 'Procompsognathids',     :expected => 49, :version => 3.9 },
  {:species => 'Othnielia',             :expected => 16, :version => 3.1 },
  {:species => 'Velociraptors',         :expected => 8 , :version => 3.0 },
  {:species => 'Apatosaurs',            :expected => 17, :version => 3.1 },
  {:species => 'Hadrosaurs',            :expected => 11, :version => 3.1 },
  {:species => 'Dilophosaurs',          :expected => 7 , :version => 4.3 },
  {:species => 'Pterosaurs',            :expected => 6 , :version => 4.3 },
  {:species => 'Hypsilophodontids',     :expected => 33, :version => 2.9 },
  {:species => 'Euoplocephalids',       :expected => 16, :version => 4.0 },
  {:species => 'Styracosaurs',          :expected => 18, :version => 3.9 },
  {:species => 'Microceratops',         :expected => 22, :version => 4.1 }
]

dinosaurs.each do |a|
  a[:found] = a[:expected]
end

expected = dinosaurs.collect{|a| a[:expected]}.inject(0, :+)
found    = dinosaurs.collect{|a| a[:found]   }.inject(0, :+)

puts "Total Dinosaurs                             #{expected}"
puts "-"*60
puts "    Species".ljust(30)+"Expected".rjust(10)+"Found".rjust(10)+"Ver".rjust(10)
puts "-"*60

dinosaurs.each do |a|
  puts a[:species].ljust(30)+a[:expected].to_s.rjust(10)+a[:found].to_s.rjust(10)+a[:version].to_s.rjust(10)
end

puts "-"*60
puts "Total"+" "*25+expected.to_s.rjust(10)+found.to_s.rjust(10)
puts "\n"

sleep 2
puts "All Dinosaurs Present."
