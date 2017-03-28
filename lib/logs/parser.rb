require_relative 'log'
require_relative 'page_views'

logs = []
File.readlines(ARGV[0]).each do |line|
  values = line.split(" ")
  logs << Log.new(values[0], values[1])
end

page_views = PageViews.new(logs)

puts "View count for each page: "
page_views.views.each { |page, count| puts page + " " + count.to_s + " visits" }
puts
puts "Unique view count for each page: "
page_views.uniqueViews.each { |page, count| puts page + " " + count.to_s + " visits" }
