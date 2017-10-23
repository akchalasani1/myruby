class Actor

  def Actor.load_with_info(n, bdate, ddate=nil)
    a = Actor.new
    a.name = n
    a.birth_date = bdate
    a.death_date = ddate
    return a
  end
end

a = Actor.load_with_info("NTR", "1907-06-04", "1976-11-28")
puts a.name
puts a.age
puts a.alive?