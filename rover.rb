#Object Oriented Programming: Exercise 2

class Rover

  attr_accessor :x, :y, :direction
  attr_reader :command

  def initialize(x, y, direction) 
    @x = x
    @y = y
    @direction = direction
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
    if @direction == "N"
      @y += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "E"
      @x += 1
    elsif @direction == "W"
      @x -= 1
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    end
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    end
  end

  def to_s
    "I am at #{@x}, #{@y}, #{@direction}"
  end

end

def mission_control
  puts "Enter rover's initial position:"
  puts "x y direction(N, E, W, S). Seperate each by space."
  user_position = gets.chomp 
  p = user_position.split   
  
  my_rover = Rover.new(p[0].to_i, p[1].to_i, p[2].to_s)

  puts "Enter navigation instruction:"
  puts "M - move forward, L - turn left, R - turn right"
  user_command = gets.chomp

  my_rover.read_instruction(user_command)

  puts my_rover
end

mission_control
  
# puts my_rover

# my_rover = Rover.new(1, 2, "N")

# my_rover.read_instruction("LMLMLMLMM")
# puts my_rover



