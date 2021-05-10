##
# This program uses recursion to play the tower of hanoi in java
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-10
# frozen_string_literal: true

def tower_hanoi(tower_height, from_rod, to_rod, aux_rod)
  if tower_height == 1
    # When there is one ring, move it to rod C
    puts "Move disk 1 from rod #{from_rod} to rod #{to_rod}"
  else
    # Takes the disk below and moves it using recursion
    tower_hanoi(tower_height - 1, from_rod, aux_rod, to_rod)
    # Prints out where the disk moved
    puts "Move disk #{tower_height} from rod #{from_rod} to rod #{to_rod}"
    # Takes the disk below and moves it using recursion
    tower_hanoi(tower_height - 1, aux_rod, to_rod, from_rod)
  end
end

begin
  # Asks user to input amount of disks
  puts 'Please enter how many disks you would like in your tower'
  # Gets user input
  tower_height = gets.chomp.to_i
  puts

  # Checks if user inpputed correct number
  if tower_height >= 1
    # Calls function and prints "Done"
    tower_hanoi(tower_height, 'A', 'C', 'B')
    puts "\nDone"
  else
    # Asks user to input other number
    puts 'Please enter a number greater than 0. '
  end
rescue StandardError
  # If the input cannot be converted into a int, tell the user that they need to input the correct numbers
  puts 'Please enter a valid input'
end
