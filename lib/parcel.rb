class Parcel
  define_method(:initialize) do |width, length, height|
    @width = width.to_i
    @length = length.to_i
    @height = height.to_i
  end

  define_method(:volume) do
    @width.*(@length).*(@height)
  end
end
