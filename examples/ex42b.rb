## Animal is-a object
class Animal

  def animal?()
    true
  end

  def say_hello(sound=nil)
    puts "#{sound} #{sound}"
  end
end

### class Dog and class Cat are both sub-classes of class Animal ###

## Dog is-a Animal
class Dog < Animal
  def initialize(name)
    ## Dog has-a name
    @name = name
  end

  def say_hello()
    super("woof")
  end
end

## Cat is-a Animal
class Cat < Animal
  def initialize(name)
    ## Cat has-a name
    @name = name
  end

  def say_hello()
    super("meow")
  end
end

### create an instance of Dog and create an instance of Cat ###

## rover is-a Dog
rover = Dog.new("Rover")
## from rover, get the say_hello function and call it. Do the same for paws.
rover.say_hello
## paws is-a Cat
paws = Cat.new("Paws")
paws.say_hello



## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    # name is a instance variables
    @name = name

    ## Person has-a pet of some kind
    # pet is a instance variables
    @pet = nil

    ## Person has-a list of hobbies
    # hobbies is a instance variables
    @hobbies = []

    ## Person has-a Dietary Preferences
    # preferences is a instance variables
    @preferences = {}
  end

  attr_accessor :pet, :hobbies, :preferences

  def describe()
    puts "This person's name is #{@name}."
    puts "#{@name}'s hobbies include: "

    @hobbies.each { |hobby| puts hobby}

    puts "#{@name}'s food preferences are: "

    @preferences.each { |key, value| puts "#{key}: #{value}"}

    puts "#{@name} has a pet named #{@pet.name}." unless @pet.nil?
    #puts "#{@name} has a pet named #{@name="Paws"}." unless @pet.nil?

  end
end

##  paws is an instance of class Cat < Animal with the name Paws. ##
## Paws is-a cat
paws = Cat.new("Paws")

##  mary is an instance of class Person with the name Mary. ##
## Mary is-a person
mary = Person.new("Mary")

##  Mary has-a pet paws
mary.pet = paws

## Mary has knitting, running, scuba diving as her hobbies.
mary.hobbies = ['knitting', 'running', 'scuba diving']

## Mary's dietary preferences
mary.preferences = {'coffee' => 'dark roast', 'eggs' => 'sunny side up', 'steak' => 'well done'}

mary.describe