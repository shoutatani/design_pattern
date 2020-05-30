require './html_report'
require './plain_report'

title = 'HTMLReport Title'
bodies = %w[中身 特に無し]

report = HTMLReport.new(title, bodies)
puts report.output

report = PlainReport.new(title, bodies)
puts report.output
