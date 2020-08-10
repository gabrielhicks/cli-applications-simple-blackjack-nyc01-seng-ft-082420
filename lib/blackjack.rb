require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(initial_round)
  prompt_user
  card_total = initial_round
  answer = get_user_input
  next_card = deal_card
  
  while answer != 'h' && answer != 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  
  if user_input = 'h'
    card_total += next_card
  end
  
  card_total
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
