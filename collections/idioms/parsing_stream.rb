# frozen_string_literal: true

# Q: How do yo write a simple parser?
# A: Put the Stream in an instance variable. Have all parsing methods work form the same Stream.
class ParsingStream
  def initialize(stream)
    @stream = stream
  end

  def parse
    result = []

    until @stream.eof?
      line = @stream.readline
      result << process_one(line)
      result << process_two(line)
    end

    result
  end

  def process_one(line)
    "one: #{line}"
  end

  def process_two(line)
    "two: #{line}"
  end
end
