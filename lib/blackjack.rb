require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand_num = Random.rand(1...12)
  return rand_num
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets 
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal_total = deal_card + deal_card
  display_card_total(deal_total)
  return deal_total
end

def hit?(total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  #binding.pry
    while user_input != 's' && user_input != 'h' do 
      invalid_command
      prompt_user
      user_input = get_user_input
    end
    if user_input == 's'
      total = total
    elsif user_input == 'h'
      total += deal_card
    end
  total
end

def invalid_command
  # code invalid_command here
  invalid_command_message = "Please enter a valid command"
  puts invalid_command_message
end
#binding.pry
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
  end
  display_card_total(card_total)
  end_game(card_total)
end
    
