class Dashboard::DashboardHandler
  attr_accessor :result
  attr_accessor :rent

  def initialize
    @result = {}
    self.weeks_date
    self.rent
  end

  def weeks_date
    start = DateTime.now.beginning_of_week
    finish = DateTime.now.end_of_week
    @result[:date] = {start: start, finish: finish, range: (start..finish).to_a}
  end

  def get_rent_by(date)
    @rent.map { |rent|

    }
  end

  def rent
    @result[:rent] = @rent = Rent.all
  end
end
