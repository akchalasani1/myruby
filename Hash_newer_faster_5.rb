# USE irb

=begin
Hashes are also commonly used as a way to have named parameters in functions.
Note that no brackets are used below. If a hash is the last argument on a method call,
no braces are needed, thus creating a really clean interface:
=end

Person.create(name: "John Doe", age: 27)

def self.create(params)
  @name = params[:name]
  @age  = params[:age]
end
