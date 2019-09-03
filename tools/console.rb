# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("Golds")
g2 = Gym.new("Crunch")

l1 = Lifter.new("A", 240)
l2 = Lifter.new("B", 160)
l3 = Lifter.new("C", 260)
l4 = Lifter.new("D", 300)

l1.new_membership(g1, 50)
l1.new_membership(g2, 150)
l2.new_membership(g1, 50)
l3.new_membership(g1, 50)
l4.new_membership(g1, 50)
l4.new_membership(g2, 150)

binding.pry

puts "Gains!"
