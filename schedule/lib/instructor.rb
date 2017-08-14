class Instructor
  attr_reader :name, :training_type, :start_date, :max_participants,
              :start_time, :end_date, :end_time, :duration, :repo
  def initialize(data, repo)
    @name             = data[:name]
    @training_type    = data[:training_type]
    @max_participants = data[:max_participants]
    start             = data[:start_time].split(":")
    @start_time       = Time.new(1,1,1,start[0], start[1])
    @end_date         = Date.parse(data[:end_date])
    t_end             = data[:end_time].split(":")
    @end_time         = Time.new(1,1,1,t_end[0], t_end[1])
    @duration         = data[:duration]
    @repo             = repo
  end
end
