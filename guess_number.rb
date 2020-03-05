# Write a program which picks a random number between 1 and 100. Ask the user to guess the number. Tell them when they get it right (and then exit)
# Instead of exiting, ask the user if they would like to play again
# Give the user a hint - “Higher!” or “Lower!” depending on how close their guess was
# If the user is close (within 5 or 10 - you decide), then give them more help - “Almost! But Lower!”, etc
# Keep track of the number of guesses the user has to make and tell them how many it took at the end
# Track how long (in seconds or minutes) it takes the user to guess correctly and let them know when they get it right
# Allow the user to set the upper and lower limits when they start the game (wrap your logic in a class, so that you pass these values in when starting up)
# Write the same program, but the other way around! Make a program which will try to guess a number you are thinking of. Make it react to feedback such as “lower, higher”, etc!

# random_number = Random.new.rand(5)
# loop do
#   print "Guess the number between 0 and 5 (e to exit:) "
#   answer = gets.chomp
#   if answer == "e"
#     puts "The number was #{random_number}"
#     break
#   else
#     if answer.to_i == random_number
#       puts "You guessed correctly!"
#       break
#     else
#       print "Try Again"
#     end
#   end
# end

# Random Number Guesser

# class GuessNumber
#     attr_writer :lower, :upper
#     def intialize
#         @lower = lower
#         @upper = upper
#     end

#     def guess_num(lower, upper)
#         random_number = Random.new.rand(lower..upper)
#         guess_total = 0
#         starting = Time.now
#         loop do 
#             puts "Guess the random number!"
#             user_guess = gets.chomp.to_i
#             guess_total +=1
#             if user_guess == random_number
#                 puts "You got it right!"
#                 puts "It took you this many guesses: #{guess_total}!"
#                 elapsed = Time.now - starting
#                 elapsed = elapsed.to_i
#                 puts "It took you " + elapsed.to_s + " seconds."
#                 break
#             else
#                 puts "You got it wrong!"
#                 if user_guess < random_number
#                     puts "Go higher!"
#                     puts random_number
#                 else user_guess > random_number
#                     puts "Go lower!"
#                     puts random_number
#                 end
#             end
#         end
#     end
# end

#User number guesser

class GuessNumberUser
    attr_writer :lower, :upper
    def intialize
        @lower = lower
        @upper = upper
    end

    def guess_num(lower, upper)
        random_number = Random.new.rand(lower..upper)
        guess_total = 0
        starting = Time.now
        # random_number_higher = nil 
        # random_number_lower = nil 
        loop do 
            puts "Is your number " + random_number.to_s + "? Answer with y/n."
            user_answer = gets.chomp
            guess_total +=1
            if user_answer == "y"
                puts "The program got it right!"
                puts "It took this many guesses: #{guess_total}!"
                elapsed = Time.now - starting
                elapsed = elapsed.to_i
                puts "It took you " + elapsed.to_s + " seconds."
                break
            else
                puts "Is your number higher or lower? Answer with h or l."
                adjust_guess = gets.chomp
                if adjust_guess == "h"
                    random_number_higher = Random.new.rand(random_number..upper)
                    random_number = random_number_higher
                elsif adjust_guess == "l"
                    random_number_lower = Random.new.rand(lower..random_number)
                    random_number = random_number_higher
                end
            end
        end
    end
end

guess = GuessNumberUser.new
puts "Enter your lower limit."
lower_num = gets.chomp.to_i
puts "Enter your higher limit."
higher_num = gets.chomp.to_i
GuessNumberUser.new.guess_num(lower_num, higher_num)
