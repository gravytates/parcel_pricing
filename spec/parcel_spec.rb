require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('check dimensions to find volume') do
      new_parcel = Parcel.new(6,5,7)
      expect(new_parcel.volume).to(eq(210))
    end
  end
end
