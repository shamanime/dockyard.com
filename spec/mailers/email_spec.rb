require "spec_helper"

describe Email do
  include EmailSpec::Helpers
  include EmailSpec::Matchers

  subject do
    Email.contact(:from => 'test@test.com', :body => 'Test body')
  end

  it { should deliver_to('contact@dockyard.com') }
  it { should deliver_from('test@test.com') }
  it { should have_body_text('Test body') }
  it { should have_subject('New Contact Enquiry') }
end
