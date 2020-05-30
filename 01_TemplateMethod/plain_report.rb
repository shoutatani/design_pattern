require './report'

class PlainReport < Report
  def output_head
    puts @title
  end

  def output_body
    @bodies.each { |body| puts body }
  end
end
