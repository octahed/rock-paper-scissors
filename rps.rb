CHOICES = ["rock", "paper", "scissors"]
# Create a method that chooses one of the three choices
def get_computer_choice 
  CHOICES.sample
end

# Create a method that gets a choice from the user
def get_player_choice 
  puts "\nEnter a number that corresponds with your choice"
  CHOICES.each_index {|i| puts "#{i + 1}: #{CHOICES[i]}"}
  print "> "
  answer = gets.chomp.to_i
  CHOICES[answer - 1]
end

$player_score = 0
$computer_score = 0
# Gets player's and computer's choices and declares the winner
def play_round (players_choice, computers_choice)
  if players_choice == computers_choice 
    puts "Tie"
  elsif players_choice == "rock" && computers_choice == "paper"
    puts "Paper beats rock, you lose!"
    $computer_score += 1
  elsif players_choice == "rock" && computers_choice == "scissors"
    puts "Rock beats scissors, you win!"
    $player_score += 1
  elsif players_choice == "paper" && computers_choice == "rock"
    puts "Paper beats rock, you win!"
    $player_score += 1
  elsif players_choice == "paper" && computers_choice == "scissors"
    puts "Scissors beat paper, you lose!"
    $computer_score += 1
  elsif players_choice == "scissors" && computers_choice == "paper"
    puts "Scissors beat paper, you win"
    $player_score += 1
  elsif players_choice == "scissors" && computers_choice == "rock"
    puts "Rock beats scissors, you lose!"
    $computer_score += 1
  end
end

# Method that plays several rounds of the game
def play_game (wins) 
  until ($computer_score == wins) || ($player_score == wins) do
    play_round(get_player_choice, get_computer_choice)
  end 
end
