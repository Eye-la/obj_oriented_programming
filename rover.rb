#Object Oriented Programming: Exercise 2

class Rover

  attr_accessor :init_x, :init_y, :direction
  attr_reader :command

  def initialize(init_x, init_y, direction) 
    @x = init_x
    @y = init_y
    @direction = direction
  end

  def read_instruction(command)
    command.split(//).each do |s| 
      if s == "L"
        turn_left
      elsif s == "R"
        puts "turn_right"
      elsif s =="M"
        move_forward
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


my_rover = Rover.new(1, 2, "N")
puts my_rover

my_rover.read_instruction("LMLMLMMM")
puts my_rover



