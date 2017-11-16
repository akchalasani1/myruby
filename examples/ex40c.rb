class Actor
  def alive?
    death_date.nil?
  end
end

# to find living actors
actors.select{ |a| a.alive?}