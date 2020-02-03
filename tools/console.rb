# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

hulk = Lifter.new("Hulk", 1000)
stone = Lifter.new("Stone Cold", 1500)
giant = Lifter.new("Andre", 1250)

santa = Gym.new("Santa Monica")
vince = Gym.new("WWE")

monthly = Membership.new(hulk, santa, 1500)
yearly = Membership.new(stone, santa, 25000)
yearly2 = Membership.new(hulk, vince, 25000)
lifetime = Membership.new(giant, vince, 1)


binding.pry

puts "Gains!"
