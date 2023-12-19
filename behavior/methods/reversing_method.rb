# frozen_string_literal: true

class ReversingMethod; end

# Q: How do you code a smooth flow of messages?

# guitar knows about worker's methods, will need modification if new methods added
class BadGuitar
  def perform_maintenance(worker)
    worker.remove_strings self
    worker.install_strings self
  end
end

# should handle owned work
class BadWorker
  def remove_strings(guitar)
    puts "Removing strings on #{guitar.id}"
  end

  def install_strings(guitar)
    puts "Installing strings on #{guitar.id}"
  end
end

# ---

# A:
# - Code a method on the parameter.
# - Derive its name from the original method.
# - Take the original receiver as a parameter to the new method.
# - Implement the method by sending the original message to the original receiver.

# Closed
class GoodGuitar
end

# perform_maintenance can be extended without modifying GoodGuitar
class GoodWorker
  def perform_maintenance(guitar)
    remove_strings guitar
    clean_fret_board guitar
    install_strings guitar
    tune guitar
  end

  def remove_strings(guitar)
    puts "Removing strings on #{guitar.id}"
  end

  def clean_fret_board(guitar)
    puts "Cleaning fret board on #{guitar.id}"
  end

  def install_strings(guitar)
    puts "Installing strings on #{guitar.id}"
  end

  def tune(guitar)
    puts "Tuning #{guitar.id}"
  end
end
