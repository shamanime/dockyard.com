require 'spec_helper'

describe Contact do
  it { should_not have_valid(:company_name).when(nil, '') }
  it { should_not have_valid(:contact_name).when(nil, '') }
  it { should     have_valid(:contact_email).when('test@test.com') }
  it { should_not have_valid(:contact_email).when(nil, '', 'test') }
  it { should_not have_valid(:message).when(nil, '') }
  its(:persisted?) { should be_false }
end

