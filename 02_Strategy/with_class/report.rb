class Report
  attr_reader :title, :bodies
  attr_accessor :formatter
  def initialize(title, bodies, formatter)
    @title = title
    @bodies = bodies
    @formatter = formatter
  end

  def output
    @formatter.output(self)
  end
end
