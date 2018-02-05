require 'gosu'

class Tutorial < Gosu::Window
  def initialize
    puts "Starting up my game..."
    super 640, 480
    self.caption = "Tutorial Game"

  end

  def update
    # Update the game
    

  end

  def draw
    # Draw the game
  end

  # Handle the button down event
  def button_down(buttonId)
    puts "A button was pressed..."

    case buttonId
    when Gosu::KbEscape
      puts "Pressed escape - game over!"
      close
    when Gosu::MsLeft
      puts 'Mouse Left clicked'
    when Gosu::MsRight
      puts 'Mouse Right clicked'
    end
  end
  


end

Tutorial.new.show