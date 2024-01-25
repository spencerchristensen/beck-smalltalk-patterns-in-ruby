# frozen_string_literal: true

class Pattern
  attr_accessor :problem, :solution
  attr_reader :name

  def name=(name)
    @name = name.gsub('_', ' ').split.map(&:capitalize).join(' ')
  end
end
