class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  # Class methods
  def self.all
    @@all
  end

  def self.average_lift_total
    self.all.map do |lifter|
      lifter.lift_total
    end.sum
  end

  # Instance methods
  def gym_memberships
    self.memberships.find_all do |membership|
      membership.gym
    end.uniq
  end

  def memberships
    Membership.all.find_all do |memberships|
      memberships.lifter == self
    end
  end

  def total_costs
    sum = 0
    self.memberships.each do |membership|
      sum += membership.cost 
    end
    sum
  end

end
