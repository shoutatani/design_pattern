require './report'
require './html_formatter'
require './plain_formatter'

title = 'HTMLReport Title'
bodies = %w[中身 特に無し]

report = Report.new(title, bodies, HTMLFormatter.new)
report.output

report.formatter = PlainFormatter.new
report.output
