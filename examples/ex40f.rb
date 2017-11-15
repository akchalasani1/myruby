class Old_Actors
  attr_accessor :name, :role, :movie

  def initialize(name, role, movie)
    @name = name
    @role = role
    @movie = movie
  end

  def testing_initializer
    puts @name
    puts @role
    puts @movie
  end
end

act = Old_Actors.new("NTR", "Hero", "DVSK")

act.testing_initializer

