require 'gosu'

class Tutorial < Gosu::Window
  def initialize
    super 600, 500, false
    self.caption = "Tutorial Game"
    @background_image = Gosu::Image.new "image/bird_Background3.jpg"
    @mouse_cursor = Gosu::Image.new "image/Cursor Icon 1.png"

    @birds = Array.new
    3.times do
      @birds << Bird.new
    end
  end

  def update
    @birds.each do |currBird|
      currBird.update
    end

    if button_down? Gosu::Button:: KbLeft
      @birds[0].move_left
    end

    if button_down? Gosu::Button:: KbRight
      @birds[0].move_right
    end

    if button_down? Gosu::Button:: KbDown
      @birds[0].move_down
    end

    if button_down? Gosu::Button:: KbUp
      @birds[0].move_up
    end
  end

  def draw
    # Draw the background
    @background_image.draw(0, 0, -1)
    @birds.each do |currBird|
      currBird.draw
    end

    # Draw the mouse cursor
    @mouse_cursor.draw(mouse_x - 5, mouse_y - 5, 1)
  end

  def button_down(buttonId)
    case buttonId
    when Gosu::KbEscape
      puts "Pressed escape - game over!"
      close
    when Gosu::MsLeft
      puts 'Mouse clicked - lts see if we hit a bird'
      bird_clicked = nil
      @birds.each do |currBird|
        if currBird.isClicked(mouse_x, mouse_y) != nil
          bird_clicked = currBird
        end
      end

      if bird_clicked != nil
        puts "We clicked on a bird!"
        @birds.delete bird_clicked
      else
        @birds << Bird.new
      end

    end
  end
end

class Bird
  def initialize
    @icon = Gosu::Image.new "image/Bird1-transparent.png"
    @xPosition = rand(600)
    @yPosition = rand(500)
    @xMovement = +1
    @yMovement = +1
  end

  def isClicked mouse_x, mouse_y
    puts "The mouse is at #{mouse_x}, #{mouse_y}"
    if mouse_x >= @xPosition && mouse_x <= @xPosition + 124 && mouse_y >= @yPosition && mouse_y <= @yPosition + 124
      puts "is clicked"
      return true
    end
    false
  end

  def move_left
    @xMovement = -1
  end

  def move_right
    @xMovement = +1
  end

  def move_up
    @yMovement = -1
  end

  def move_down
    @yMovement = +1
  end

  def update
    @xPosition = @xPosition + @xMovement
    @yPosition = @yPosition + @yMovement

    # Limits
    #Right wall
    if @xPosition > 600 - 124
      @xMovement = -1
      if rand(2) < 1
        @yMovement = +1
      else
        @yMovement = -1
      end
    end
    #Bottom wall
    if @yPosition > 500 - 124
      @yMovement = -1
      if rand(2) < 1
        @xMovement = +1
      else
        @xMovement = -1
      end
    end
    #Left wall
    if @xPosition < 0
      @xMovement = +1
      if rand(2) < 1
        @yMovement = +1
      else
        @yMovement = -1
      end

    end
    #Top wall
    if @yPosition < 0
      @yMovement = +1
      if rand(2) < 1
        @xMovement = +1
      else
        @xMovement = -1
      end

    end
  end

  def draw
    @icon.draw(@xPosition, @yPosition, 1)
  end
end

Tutorial.new.show