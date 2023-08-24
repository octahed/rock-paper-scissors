CHOICES = ["rock", "paper", "scissors"]
# Create a method that chooses one of the three choices
def get_computer_choice 
  CHOICES.sample
end

#Create a method that gets a choice from the user
def get_player_choice 
  puts "Enter a number that corresponds with your choice"
  CHOICES.each_index {|i| puts "#{i + 1}: #{CHOICES[i]}"}
  print "> "
  answer = gets.chomp.to_i
  CHOICES[answer - 1]
end
