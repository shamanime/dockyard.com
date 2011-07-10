class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :company_name, :contact_name, :contact_email, :message

  validates_presence_of :company_name, :contact_name, :contact_email, :message
  validates :contact_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'invalid email format' }

  def persisted?
    false
  end
end

