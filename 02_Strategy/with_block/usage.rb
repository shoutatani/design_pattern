require './report'

html_formatter = lambda do |context|
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

plain_formatter = lambda do |context|
  puts context.title
  context.bodies.each { |body| puts body }
end

title = 'HTMLReport Title'
bodies = %w[中身 特に無し]

report = Report.new(title, bodies, html_formatter)
report.output

report.formatter = plain_formatter
report.output
