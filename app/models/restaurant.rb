class Restaurant
  @@all=[]

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |t|
      t==name
    end
  end

  def reviews
    self.reviews
  end

  def customers

  end









end
