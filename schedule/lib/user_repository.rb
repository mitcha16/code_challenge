require_relative 'user'
require_relative 'conflict_checker'

class UserRepository
  attr_reader :data, :conflict_checker, :users
  def initialize(data, conflict_checker)
    @data             = data
    @conflict_checker = conflict_checker
    @users            = manage
  end

  def manage
    data.map do |line|
      User.new(line, self)
    end
  end
end
