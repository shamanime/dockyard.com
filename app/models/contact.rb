class Contact
  extend  ActiveModel::Naming
  extend  ActiveModel::Translation
  include ActiveModel::Validations
  include ActiveModel::Conversion
  attr_accessor :name, :email, :company, :message, :find_us
  
  validates :name, :email, :message, :find_us, :presence => true
  validates :email, :format => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/

  def initialize(params={})
    params.each do |attr, value|
      self.public_send("#{attr}=", value)
    end if params
  end
  
  def persisted?
    false
  end
end