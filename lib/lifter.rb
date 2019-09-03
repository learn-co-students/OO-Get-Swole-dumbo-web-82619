class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all
    @@all
  end 

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms 
    memberships.map {|membership| membership.gym}
  end 

  def self.avg_lift 
    lift_arr = Lifter.all.map {|lifter| lifter.lift_total}
    lift_arr.inject{ |sum, el| sum + el }.to_f / lift_arr.size
  end 

  def cost 
    memberships.map {|membership| membership.cost}.inject(:+)
  end 

  def new_membership(gym, cost)
    Membership.new(cost, self, gym)
  end 

end
