#Rspec


require 'rubygem'
require 'bundler/setup'

#require_relative 'db/setup'
#Dir.glob("./models/**/*.rb").each {|f| require f}
#require_relative './models/widget'

klass = File.open('models/widget.rb', 'r') {|f| f.read}
eval(klass)

puts Widget.new.inspect

puts "Serenity now!"