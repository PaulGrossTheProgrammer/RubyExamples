require 'gosu'

class Tutorial < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Tutorial Game"

  end

  def update
    # Update the game
  end

  def draw
    # Draw the game
  end
end

Tutorial.new.show