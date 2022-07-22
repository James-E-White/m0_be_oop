# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  attr_reader :horn, :main_color, :body_color, :tail_color
  def initialize(body_color, tail_color)
   @horn = 1
   @main_color = "silver"
   @body_color = body_color
   @tail_color = tail_color
  end

  # def body_color
  #  @body_color
  # end

  def say(message)
   "*~*#{message}*~*"
  end
end

fred = Unicorn.new("purple", "pink")
puts fred.body_color
puts fred.tail_color
puts fred.say("I am a lovely motherfucker!")




#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat
#  by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(name, pet = "Bat")
   @name = name
   @pet = pet
   @thirsty = true
  end

  def drink
       @thirsty = false
  end
end
nasforatu = Vampire.new("Nasforatu", "Scorpion")
p nasforatu.name
p nasforatu.pet
p nasforatu.thirsty
nasforatu.drink
p nasforatu.thirsty



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  attr_reader :name, :rider, :color, :is_hungry, :hunger
  def initialize(name, rider, color)
   @name = name
   @rider = rider
   @color = color
   @is_hungry = true
   @eaten = 0
  end

  def eat
    @eaten += 0
    if @eaten >= 4
      @is_hungry = false
    end
  end
end



draven = Dragon.new("Draven", "Kobe", "Green")

p draven.name
p draven.rider
p draven.color

draven.eat
p draven.is_hungry
p draven.eat
p draven.eat
p draven.eat
p draven.is_hungry


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
  def initialize(name, disposition)
  @name = name
  @disposition = disposition
  @age = 0
  @is_adult = false
  @is_old = false
  @has_ring = false
end

def birthday
  @age += 1
  if @age >= 33 && @age < 101
    @is_adult = true
  elsif @age >= 101
    @is_old = true
    @is_adult = true
 end
end

def ring
  @name = "Frodo"
  @has_ring = true
 end
end

prescott = Hobbit.new("Prescott", "Rowdy")
p prescott.name
p prescott.disposition
p prescott.age
prescott.birthday
p prescott.age*101
p prescott.is_adult
p prescott.is_old
p prescott.has_ring
