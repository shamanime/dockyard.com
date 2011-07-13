class Email < ActionMailer::Base
  default :to => 'contact@dockyard.com'

  def contact(attributes = {})
    mail :from => attributes[:from], :subject => 'New Contact Inquiery', :body => attributes[:body]
  end
end
