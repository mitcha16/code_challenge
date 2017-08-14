require_relative 'instructor'
require_relative 'instructor_repository'
require_relative 'user'
require_relative 'user_repository'
require 'csv'
require_relative 'file_reader'
require 'pry'

class ConflictChecker
  attr_accessor :instructor_repository, :user_repository

  def initialize (instructors_path, users_path)
    #instructor_availability.csv, input.csv
    reader      = FileReader.new
    users       = reader.read(users_path)
    instructors = reader.read(instructors_path)
    @user_repository       = UserRepository.new(users, self)
    @instructor_repository = InstructorRepository.new(instructors, self)
  end
end


if __FILE__ == $0
  ConflictChecker.new("../instructor_availability.csv", "../input.csv")
end
