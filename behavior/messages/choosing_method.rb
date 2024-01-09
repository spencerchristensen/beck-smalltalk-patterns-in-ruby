# frozen_string_literal: true

# Q: How do you execute one of several alternatives?
# A: Send a message to one of several different kinds of objects. When you observe explicit conditional logic repeated in several places, it is time to represent the alternatives as objects with a choosing method.
class ChoosingMethod
  def initialize
    @film = Film.new
  end

  def perform_bad_procedural_condition
    case @film
    when Film
      'producer'
    when Book
      'author'
    end
  end

  def perform_good_oo_choosing_method
    @film.responsible
  end
end

class Film
  def responsible
    'producer'
  end
end

class Book
  def responsible
    'author'
  end
end
