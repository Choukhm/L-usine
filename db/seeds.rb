require 'faker'

10.times do
  Assembly.create(name: Faker::Food.dish)
end

20.times do
  Part.create(part_number: Faker::Food.vegetables)
end

Assembly.all.each do |a|
  rand(5).times do a.parts << Part.all.sample end
end

  
