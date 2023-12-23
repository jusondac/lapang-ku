class Dashboard::DashboardHandler
  attr_accessor :result

  def initialize
    @result = {}
    self.weeks_date
    self.hours_list
  end

  def weeks_date
    start = DateTime.now.beginning_of_week
    finish = DateTime.now.end_of_week
    @result[:date] = {start: start, finish: finish, range: (start..finish).to_a}
  end

  def hours_list
    
  end
end
