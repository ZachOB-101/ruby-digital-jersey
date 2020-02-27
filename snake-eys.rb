# Create a program which outputs a random number between 1 and 6, simulating the roll of a die
# Make your program ask the user how many dice s/he would like to roll. Display the result as individual numbers (e.g. 4, 6, 2 if three dice were rolled)
# Add the total to the output above
# Create a class which represents a die and re-structure your program to use this
# Create a child class of your ‘die’ which outputs one of the values used in the game ‘Crown and Anchor’ - http://en.wikipedia.org/wiki/Crown_and_Anchor
# Create a new program, using your die class above which mimics the game ‘Crown and Anchor’. Ask the user which area they would like to bet on (and how much), simulate the dice roll, and tell them how much they would have won (or lost)!
# Create a new program, using your die class. Using the rules of Yahtzee, allow the user to make multiple throws of the dice and record their score


def dice_roll
    rand(1..6)
end

print "How many dice would you like to roll?"
user_roll = gets.chomp.to_i

i=1
x = user_roll
total = 0

while i<=x
    number = dice_roll
    i+=1
    puts number
    total += number
end 

puts total


