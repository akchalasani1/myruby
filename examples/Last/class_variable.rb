class Testclassvariables
  @@test = 123
  
  def self.test
    @@test
  end
  
  def self.test=(value)
    @@test = value
  end
end

class Test1 < Testclassvariables
  
end

puts Testclassvariables.test
puts Test1.test

class Test2 < Test1
  
end

puts Testclassvariables.test
puts Test2.test