# define private methods
# understand the context in which yuo will use such methods
# define private methods

# we can only call private methods within the context of the defining class
# the receiver of a private method is always self

#why use the: Private methods are a way of encapsulating functionality within a class.

# intialize method is special bcz
  # not invoked directly , we use ClassName.new , create an instance and the invoke it
  # its private method by default

#private methods are written with the word private above them apart from initialize


class Bartender
  attr_accessor :name

  @@all  = []  #accessible by class methos use of self

  def initialize(name)  #instance of class  #private method
    @name = name
    @@all << self #pushing every instance of bartender to all array to be held there
  end

  def self.all #class method acts on all class not an instance of class, returns all of bartenders
    @@all
  end


  def intro     #instance method since its called on an instance of Bartender class
    "Hello, my name is #{self.name}!"
  end

# make some private methods: 
    #choose_liquor, #choose_mixer, and #choose_garnish.
# also create a public method #make_drink that calls on those private methods.

  def make_drink
    @cocktail_ingredients = []
    choose_garnish
    choose_liquor
    choose_mixer
    puts "Here is your drink. It contains #{@cocktail_ingredients}"
  end

  private   #private methods restricts an outsider from calling methods that belong to an object

  def choose_liquor
    @cocktail_ingredients << "whiskey"
  end

  def choose_mixer 
    @cocktail_ingredients << "vermouth"
  end

  def choose_garnish
    @cocktail_ingredients << "olives"
  end
end


phill = Bartender.new("Phillip Kinuthia")

phill.make_drink