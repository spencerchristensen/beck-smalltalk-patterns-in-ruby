# frozen_string_literal: true

class MarkdownFormatter
  def initialize(patterns)
    @patterns = patterns
  end

  def to_table
    output = "| Name | Problem | Solution |\n"
    output += "|:--|:--|:--|\n"
    @patterns.each do |pattern|
      output += "| #{pattern.name} | #{pattern.problem} | #{pattern.solution} |\n"
    end
    output
  end
end
