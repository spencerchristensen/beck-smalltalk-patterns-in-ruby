# frozen_string_literal: true

# Q: What do you name an instance variable?
# A: Name instance variables for the role they play in the computation. Make the name plural if the variable will hold a Collection.
class RoleSuggestingInstanceVariableName
  attr_accessor :employee, :paychecks

  def initialize(employee, paychecks = [])
    @employee = employee
    @paychecks = paychecks
  end
end
