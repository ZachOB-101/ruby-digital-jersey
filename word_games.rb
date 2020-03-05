# Word games
# Create a program which takes string input from the user and then prints it reversed
# Modify your program so that it scrambles the word randomly (turning it into an anagram)
# Allow the user to guess the anagram and tell them if they get it right (or not), before letting them guess again
# Now try things the other way around - ask the user for an anagram which the program will try to solve. To start with, print a list of 5 words and ask the user to scramble one of them.
# Write a routine which goes through each word in the list and checks if it could be the answer to the anagram. Remember:
# It must be the same length
# It must contain all the same letters
# It must contain the letters the right number of times
# Wrap the code which performs these tests in a class, so that when you are given an anagram, you create an instance of ‘Anagram’ (or however you have named it), then call methods or properties on this to test candidates words to see if they match
# Find an online word-list file (e.g. this one http://wordlist.aspell.net/), download it and load it into your program so that it can solve anagrams without limiting the user’s choice!


puts "Enter a word to be reversed: "
user_input = gets.chomp.to_s
print user_input.reverse!