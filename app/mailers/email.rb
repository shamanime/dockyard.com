class Email < ActionMailer::Base
  def contact(contact)
    @contact = contact
    mail(:to => 'sales@dockyard.com', :from => "#{@contact.name} <#{@contact.email}>", :subject => 'New Contact!')
  end
end
