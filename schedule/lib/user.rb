class User
  attr_reader :id, :name, :training_type, :start_date,
              :start_time, :end_date, :end_time, :with, :repo
  def initialize(data, repo)
    @id            = data[:request_id].to_i
    @name          = data[:name]
    @training_type = data[:training_type]
    @start_date    = Date.parse(data[:start_date])
    start = data[:start_time].split(":")
    @start_time    = Time.new(1,1,1,start[0], start[1])
    @end_date      = Date.parse(data[:end_date])
    t_end          = data[:end_time].split(":")
    @end_time    = Time.new(1,1,1,t_end[0], t_end[1])
    @with          = data[:with]
    @repo          = repo
  end
end
