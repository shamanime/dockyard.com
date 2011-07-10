require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Email DockYard', %{
  As a potential client
  I want to contact DockYard via Email
}, :js => true do

  scenario 'Submitting with requred information' do
    visit '/'
    fill_in 'Company Name',  :with => 'Test Company'
    fill_in 'Contact Name',  :with => 'Test Contact'
    fill_in 'Contact Email', :with => 'test@test.com'
    fill_in 'Message',       :with => 'Test Message'
    click_button 'Send'
    page.should have_content 'Thank-you. Someone will be in contact shortly.'
  end
end

