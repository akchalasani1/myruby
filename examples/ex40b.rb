class Actor
  attr_accessor :name, :age, :sex, :birth_date, :birth_place, :filmography
end

an_actor = Actor.new
an_actor.name = "NTR"
an_actor.age = 83
an_actor.sex = "M"
an_actor.filmography = ["DVSK", "bobbili simham"]

puts an_actor.inspect


class Actress < Actor

end

an_actress = Actress.new
an_actress.name = "Savitri"
an_actress.age = 75
an_actress.sex = "F"
an_actress.filmography = ["Miss Amma", "Mayabazar"]

puts an_actress.inspect


#actresses = the_cast_of_being_john_malkovich.select{|a| a.sex=='F'}
#puts actresses.map{|a| a.name}.join(', ')

