class HTMLFormatter
  def output(context)
    puts '<html>'
    puts '  <head>'
    puts "    <title>#{context.title}</title>"
    puts '  </head>'
    puts '  <body>'
    context.bodies.each do |body|
      puts "    <p>#{body}</p>"
    end
    puts '  </body>'
    puts '</html>'
  end
end
