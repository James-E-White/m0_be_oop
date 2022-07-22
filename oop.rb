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


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
