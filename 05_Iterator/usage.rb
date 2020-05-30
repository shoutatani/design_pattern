require './external_iterator'
require './internal_iterator'
require './enumerable_sizes'

cities = %w[Tokyo Nagoya Osaka]

cities_external_iterator = ExternalIterator.new(cities)
while cities_external_iterator.has_next?
  puts "item: #{cities_external_iterator.next_item} by external iterator"
end

internal_iterator = InternalIterator.new
internal_iterator.each(cities) do |city|
  puts "item: #{city} by internal iterator"
end
