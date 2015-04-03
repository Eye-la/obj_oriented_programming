#Object Oriented Programming: Exercise 2

class Rover
	def initialize(init_x, init_y, direction) 
    @x = init_x
	  @y = init_y
	  @direction = direction
  end

  def read_instruction(s_instruct)
    array = s_instruct.split(//)
    array.each do |s|
      if s == "L"
        self.class.turn_left
      elsif s == "R"
        self.class.turn_right
      elsif s == "M"
        self.class.move_forward
      end
    end
  end
  
  def move_forward
    if @direction == "N"
      @y += 1
    end
    if @direction == "S"
      @y -= 1
    end
    if @direction == "E"
      @x += 1
    end
    if @direction == "W"
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




my_rover = Rover.new(2, 2, "S")
direction = Rover.read_instruction("LMLMLMMM")



