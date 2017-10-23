require 'time'

class Person
  attr_accessor :name, :age, :sex, :birth_date, :birth_place, :death_date

  ## class methods
  def Person.load_with_info(n, bdate, ddate=nil)
    a = Person.new
    a.name = n
    a.birth_date = bdate
    a.death_date = ddate
    return a
  end

  ## instance methods
  def age
    ((alive? ? Time.now : Time.parse(death_date)) - Time.parse(birth_date)).to_i / 60 / 60 / 24 / 365
  end

  def alive?
    death_date.nil?
  end

end

class Actor < Person
  attr_accessor :filmography
end

class Writer < Person
  attr_accessor :published_works
end