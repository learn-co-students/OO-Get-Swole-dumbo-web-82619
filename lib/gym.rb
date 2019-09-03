class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end 

  def lifters 
    memberships.map {|membership| membership.lifter}
  end 

  def lifter_names 
    lifters.map {|lifter| lifter.name}
  end 

  def lifter_lift
    lifters.map{|lifter| lifter.lift_total}
    .inject(:+)
  end 

end

