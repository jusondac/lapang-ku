class Dashboard::DashboardHandler
  attr_accessor :date
  attr_accessor :rent

  def initialize
    start = DateTime.now.beginning_of_week
    finish = DateTime.now.end_of_week
    @date = {}
    @rent = Rent.all.select { |x| 
      x.start.between?(start, finish) 
    }
    set_date
  end

  def set_date
    date = DateTime.now
    # setting up current week
    start = date.beginning_of_week
    finish = date.end_of_week
    # setting up each day for a week
    # and set into an Hash
    (start..finish).to_a.each { |date|
      week_date(date)
    }
  end

  def week_date(date)
    @date[date] = @rent.select { |x|
      x.start > date.beginning_of_day && x.finish < date.end_of_day
    }
  end
end
