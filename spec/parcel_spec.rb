require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('check dimensions to find volume') do
      new_parcel = Parcel.new(6,5,7,1,"Bike",1)
      expect(new_parcel.volume).to(eq(210))
    end
  end

  describe('#shipping_cost') do
    it('finds price for shipping based on volume and other shipping parameters') do
      new_parcel = Parcel.new(1,1,1,1,"Bike",1)
      expect(new_parcel.shipping_cost).to(eq(11.3))
    end
  end

  describe('#gift_cost') do
    it('finds extra price for gift wrapping based on surface area') do
      new_parcel = Parcel.new(1,1,1,1,"Bike",1)
      expect(new_parcel.gift_cost).to(eq(0.06))
    end
  end
end
