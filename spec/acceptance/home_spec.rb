require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Home', %{
  As a potential client
  I want to find a Ruby on Rails consultancy
} do

  scenario 'Hitting the home page' do
    visit '/'
    page.should have_content 'DockYard'
  end
end

