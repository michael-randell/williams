class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :phone, :validate => true
  attribute :email, :validate => true
  attribute :message, :validate => true

  def headers
    {
      :subject => "Williams Contact From Site",
      :to => "michael.james.randell@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
