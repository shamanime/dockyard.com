require 'spec_helper'

describe Contact do
  it { should_not have_valid(:company_name).when(nil, '') }
  it { should_not have_valid(:contact_name).when(nil, '') }
  it { should     have_valid(:contact_email).when('test@test.com') }
  it { should_not have_valid(:contact_email).when(nil, '', 'test') }
  it { should_not have_valid(:message).when(nil, '') }
  its(:persisted?) { should be_false }

  describe 'spam validation' do
    context 'name is present and js_check is blank'  do
      subject { Contact.new(:name => 'test') }
      it { should_not have_valid(:spam) }
    end
    context 'name is present and js_check is present' do
      subject { Contact.new(:name => 'test', :js_check => true) }
      it { should_not have_valid(:spam) }
    end
    context 'name is blank and js_check is blank' do
      it { should_not have_valid(:spam) }
    end
    context 'name is blank and js_check is present' do
      subject { Contact.new(:js_check => true) }
      it { should have_valid(:spam) }
    end
  end

  describe '.new' do
    it 'assigns paramaters' do
      contact = Contact.new(:company_name => 'Test Company', :contact_name => 'Test Contact', :contact_email => 'test@test.com', :message => 'Test Message', :source => 'test', :js_check => true)
      contact.company_name.should eql "Test Company"
      contact.contact_name.should eql"Test Contact"
      contact.contact_email.should eql "test@test.com"
      contact.message.should eql "Test Message"
    end
  end
  describe '#send_email' do
    before do
      body = %{
From: Test Contact
Company: Test Company
Email: test@test.com
Source: test
Message: Test Message
}
      email = mock('Email')
      email.expects(:deliver)
      Email.expects(:contact).with(:from => 'Test Contact <test@test.com>', :body => body).returns(email)
    end

    it 'sends and delivers the email' do
      contact = Contact.new(:company_name => 'Test Company', :contact_name => 'Test Contact', :contact_email => 'test@test.com', :message => 'Test Message', :js_check => true)
      contact.send_email
    end
  end
end

