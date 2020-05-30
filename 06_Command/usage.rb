require './button'

command = lambda do |button|
  puts "button: #{button} is clicked!"
end

wakeup_button = Button.new(&command)
wakeup_button.on_click
