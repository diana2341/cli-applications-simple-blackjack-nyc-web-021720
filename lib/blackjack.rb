require 'pry'
def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11) 

end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  display_card_total(deal_card+deal_card)
  deal_card + deal_card
end
def invalid_command
puts  "Please enter a valid command"
    end
    
#def hit?(number)
#  prompt_user
 #user_input= get_user_input
#if user_input=="h"
#  number += deal_card
#  elsif user_input =="s"
#  number
#else
#  return invalid_command 

 # end
#end

def hit?(current_card_value)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    current_card_value += deal_card
  end
  return current_card_value
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  round=initial_round
   until round > 21 do
  round=hit?(round)
  display_card_total(round)
binding.pry
end
end_game(round)
end

    
