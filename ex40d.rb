require 'time'

class Actor

  def age
    if alive?
      a = Time.now - Time.parse(birth_date)
    else
      a = Time.parse(death_date) - Time.parse(birth_date)
    end

    return (a / 60 / 60 / 24 / 365).to_i
  end
end

an_actor = Actor.new
an_actor.name = "NTR"
an_actor.birth_date = "1/26/1925"
an_actor.death_date = "1/28/2008"

puts an_actor.age

