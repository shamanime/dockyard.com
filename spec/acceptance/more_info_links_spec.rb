require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'More info links', %{
  As a potential client
  When I click a link I expect more information
}, :js => true do

  background do
    visit '/'
  end

  # These can be run individually but capybara-webkit is throwing a hissy fit
  # when run combined

  # scenario 'Clicking a link for the first time' do
  #   visit '/'
  #   page.find('#web').should_not be_visible
  #   click_link 'web'
  #   page.find('#web').should be_visible
  #   page.find('a', :text => 'web')[:class].should eq 'current'
  # end

  # scenario 'Clicking a link then clicking the same link' do
  #   visit '/'
  #   click_link 'web'
  #   click_link 'web'
  #   page.find('#web').should_not be_visible
  #   page.find('a', :text => 'web')[:class].should eq ''
  # end

  # scenario 'Clicking a link then clicking a different link' do
  #   click_link 'web'
  #   click_link 'mobile'
  #   page.find('#web').should_not be_visible
  #   page.find('#mobile').should be_visible
  #   page.find('a', :text => 'web')[:class].should eq ''
  #   page.find('a', :text => 'mobile')[:class].should eq 'current'
  # end

end

