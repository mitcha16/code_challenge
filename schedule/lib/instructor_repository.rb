require_relative 'instructor'
require_relative 'conflict_checker'

class InstructorRepository
  attr_reader :data, :conflict_checker, :instructors
  def initialize(data, conflict_checker)
    @data             = data
    @conflict_checker = conflict_checker
    @instructors      = manage
  end

  def manage
    data.map do |line|
      Instructor.new(line, self)
    end
  end
end
