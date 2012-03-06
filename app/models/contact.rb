# encoding: UTF-8

class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :company_name, :contact_name, :contact_email, :message, :source

  validates_presence_of :company_name, :contact_name, :contact_email, :message, :message => %{can’t be blank}
  validates :contact_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'invalid email format' }

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def persisted?
    false
  end

  def send_email
    Email.contact(:from => build_email_from, :body => build_email_body).deliver
  end

  private

  def build_email_from
    "#{contact_name} <#{contact_email}>"
  end

  def build_email_body
    %{
From: #{contact_name}
Company: #{company_name}
Email: #{contact_email}
Source: #{source}
Message: #{message}
}
  end
end

