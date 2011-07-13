require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Email DockYard', %{
  As a potential client
  I want to contact DockYard via Email
} do

  before do
    reset_mailer
    visit '/'
  end

  scenario 'Submitting with requred information over js', :js => true do
    fill_in 'Company Name',  :with => 'Test Company'
    fill_in 'Contact Name',  :with => 'Test Contact'
    fill_in 'Contact Email', :with => 'test@test.com'
    fill_in 'Message',       :with => 'Test Message'
    click_button 'Send Message'
    page.should have_content 'Thank-you. Someone will be in contact shortly.'
    email = open_email('contact@dockyard.com')
    email.default_part_body.should include 'Test Company'
    email.default_part_body.should include 'Test Message'
  end

  scenario 'Submitting with requred information without js' do
    fill_in 'Company Name',  :with => 'Test Company'
    fill_in 'Contact Name',  :with => 'Test Contact'
    fill_in 'Contact Email', :with => 'test@test.com'
    fill_in 'Message',       :with => 'Test Message'
    click_button 'Send Message'
    page.should have_content 'Thank-you. Someone will be in contact shortly.'
    email = open_email('contact@dockyard.com')
    email.default_part_body.should include 'Test Company'
    email.default_part_body.should include 'Test Message'
  end

  scenario 'Submitting no information without js' do
    click_button 'Send Message'
    page.should have_content 'Please fill in the required fields'
    all_emails.should be_empty
  end
end

