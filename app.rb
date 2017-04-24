require('sinatra')
require('sinatra/reloader')
require('./lib/parcel.rb')
also_reload('/lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @width = params.fetch('width')
  @length = params.fetch('length')
  @height = params.fetch('height')
  @weight = params.fetch('weight')
  @mode = params.fetch('mode')
  @distance = params.fetch('distance')
  parcel = Parcel.new(@width, @length, @height, @weight, @mode, @distance)
  @cost = parcel.shipping_cost
  erb(:result)
end
