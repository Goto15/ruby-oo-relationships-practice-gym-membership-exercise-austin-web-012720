class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  # Class methods
  def self.all
    @@all
  end

  # Instance Methods
  def lifters_totals
    self.lifters.map do |lifter|
      lifter.lift_total
    end.sum
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter 
    end
  end

  def lifters_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def memberships
    Membership.all.find_all do |membership|
      if membership.gym == self
        membership
      end
    end
  end
end
