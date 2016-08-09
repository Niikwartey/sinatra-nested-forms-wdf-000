class Ship
  attr_accessor :name, :type, :booty

  @@all = []
  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty

    self.class.all << self
  end
end