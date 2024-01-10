# frozen_string_literal: true

# Q: How do you code the interaction between two objects that need to remain independent?
# A: Refine the protocol between the objects so the words used are consistent
class MediatingProtocol
  include FileOperations
end

module FileOperations
  def read_file; end

  def write_file; end
end
