require './report'

class HTMLReport < Report
  def output_start
    puts '<html>'
  end

  def output_head_start
    puts '  <head>'
  end

  def output_head
    puts "    <title>#{@title}</title>"
  end

  def output_head_end
    puts '  </head>'
  end

  def output_body_start
    puts '  <body>'
  end

  def output_body
    @bodies.each do |body|
      puts "    <p>#{body}</p>"
    end
  end

  def output_body_end
    puts '  </body>'
  end

  def output_end
    puts '</html>'
  end
end
