# frozen_string_literal: true

require 'find'
require_relative 'pattern'

class PatternExtractor
  def initialize
    @patterns = []
  end

  def extract_patterns
    patterns = []
    Find.find('../.') do |path|
      if File.file?(path) && File.extname(path) == '.rb'
        pattern = extract_pattern(path)
        patterns << pattern if pattern
      end
    end
    patterns
  end

  def extract_pattern(path)
    pattern = Pattern.new
    pattern.name = File.basename(path, '.rb')
    read_problem_and_solution(path, pattern)
    pattern if pattern.problem && pattern.solution
  end

  def read_problem_and_solution(path, pattern)
    File.foreach(path) do |line|
      match = line.match(/^# (Q|A): (.+)/)
      next unless match

      case match[1]
      when 'Q'
        pattern.problem = match[2]
      when 'A'
        pattern.solution = match[2]
      end
    end
  end
end
