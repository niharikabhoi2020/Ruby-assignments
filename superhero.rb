module Superpower 
  def check_power(x)
    if(x == @power)
      puts "He can #{x}!"
    else
      puts "Sorry, He can't #{x}."
    end
  end
end

class Superheroes
  include Superpower
  
  def initialize (power)
    @power = power
  end

end

spiderman = Superheroes.new("jump")
print "Spiderman: "
spiderman.check_power("fly")

flash = Superheroes.new("run")
print "Flash: " 
flash.check_power("run")

shaktiman = Superheroes.new("fly")
print "Shaktiman: "
shaktiman.check_power("fly")

