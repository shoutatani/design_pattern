class PlainFormatter
  def output(context)
    puts context.title
    context.bodies.each { |body| puts body }
  end
end
