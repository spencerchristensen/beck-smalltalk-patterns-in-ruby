# frozen_string_literal: true

# Q: How can you code a computation that has many cases, such as when it is the cross product of two class hierarchies?
# A: Send a message to the argument. Append the class name of the receiver to the selector. Pass the receiver as an argument. This can lead to N x M methods.
class DoubleDispatch
end

class Player
  def play_instrument(instrument)
    instrument.be_played_by(self)
  end
end

class GuitarPlayer < Player
  def play_guitar(guitar)
    puts "Initiate shredding...#{guitar.object_id}"
  end

  def play_piano(piano)
    puts "I should have learned piano when I was a kid...#{piano.object_id}"
  end
end

class PianoPlayer < Player
  def play_guitar(guitar)
    puts "Why are the chord shapes so different? #{guitar.object_id}"
  end

  def play_piano(piano)
    puts "It is easy to play the piano #{piano.object_id}"
  end
end

class Instrument
  def be_played_by(player)
    raise NotImplementedError
  end
end

class Guitar < Instrument
  def be_played_by(player)
    player.play_guitar(self)
  end
end

class Piano < Instrument
  def be_played_by(player)
    player.play_piano(self)
  end
end
