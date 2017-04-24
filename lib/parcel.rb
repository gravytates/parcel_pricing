class Parcel
  define_method(:initialize) do |width, length, height, weight, delivery_mode, distance|
    @width = width.to_i
    @length = length.to_i
    @height = height.to_i
    @weight = weight.to_i
    @delivery_mode = delivery_mode
    @distance = distance.to_i
  end

  define_method(:volume) do
    @width.*(@length).*(@height)
  end

  define_method(:shipping_cost) do
    cost = 0
    parcel_volume = self.volume
    (1..parcel_volume).each do
      cost += 0.25
    end
    (1..@weight).each do
      cost += 1
    end
    if @delivery_mode.==('truck')
      cost += 1
    elsif @delivery_mode.==('plane')
      cost += 6
    elsif @delivery_mode.==('bike')
      cost += 10
    end
    (1..@distance).each do
      cost += 0.05
    end
    cost
  end

  define_method(:gift_cost) do
    gift_cost = 0
    surface_area = (2*(@length*@width)) + (2 * (@length*@height)) + (2*(@width*@height))
    (1..surface_area).each do
      gift_cost += 0.01
    end
    gift_cost.round(2)
  end

end
