require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:set_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes user entry to determine cost of shipping') do
    visit('/')
    fill_in('width', :with => '1')
    fill_in('length', :with => '1')
    fill_in('height', :with => '1')
    fill_in('weight', :with => '1')
    select('Bike', :from => 'mode')
    fill_in('distance', :with => '1')

    click_button('Tabulate!')
    expect(page).to have_content('11.3')
  end
end
