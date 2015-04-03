#Object Oriented Programming: Exercise 2

class Rover 

  attr_accessor :x, :y, :direction, :p_x, :p_y
  attr_reader :command

  def initialize(x, y, direction) 
    @@x = x.to_i
    @@y = y.to_i
    @@direction = direction.to_s
  end

  def read_instruction(command)
    command.split(//).each do |s| 
      if s =="M"
        move_forward
      elsif s == "L"
        turn_left
      elsif s == "R"
        turn_right
      end
    end
  end

  def move_forward
    if @@direction == "N"
      @@y += 1
    elsif @@direction == "S"
      @@y -= 1
    elsif @@direction == "E"
      @@x += 1
    elsif @@direction == "W"
      @@x -= 1
    end
  end

  def turn_left
    if @@direction == "N"
      @@direction = "W"
    elsif @@direction == "W"
      @@direction = "S"
    elsif @@direction == "S"
      @@direction = "E"
    elsif @@direction == "E"
      @@direction = "N"
    end
  end

  def turn_right
    if @@direction == "N"
      @@direction = "E"
    elsif @@direction == "E"
      @@direction = "S"
    elsif @@direction == "S"
      @@direction = "W"
    elsif @@direction == "W"
      @@direction = "N"
    end
  end

  def to_s
    puts "I am at #{@@x}, #{@@y}, #{@direction}"
  end

end

class Plateau < Rover
  
  attr_reader :p_x, :p_y   
  
  def initialize(p_x, p_y)
    @p_x = p_x.to_i
    @p_y = p_y.to_i  
  end

  def off_grid
    if @p_x < @@x || @p_y < @@y || @@x < 0 || @@y < 0
      puts "Error: Rover off of plateau! Please try again."
    else 
      puts "#{super}"
    end
  end

end

def mission_control
  #Set plateau size
  puts "Indicate plateau size:"
  puts "x y. Seperate by space"
  plateau = gets.chomp
  grid = plateau.split
  puts grid
  plateau_set = Plateau.new(grid[0], grid[1])

  #Loop 2x
  counter = 0
  until counter == 2
    
    puts "Enter rover's initial position:"
    puts "x y direction(N, E, W, S). Seperate each by space."
    user_position = gets.chomp 
    p = user_position.split   
  
    my_rover = Rover.new(p[0], p[1], p[2])

    puts "Enter navigation instruction:"
    puts "M - move forward, L - turn left, R - turn right"
    user_command = gets.chomp

    my_rover.read_instruction(user_command)

    my_rover.off_grid
    
    counter += 1
  end
end

mission_control
  



