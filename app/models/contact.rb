class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => true
  attribute :message, :validate => true

  def headers
    {
      :subject => "Contact Form",
      :to => "michael.james.randell@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
