class Request < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :telephone, :validate => true
  attribute :type, 			:validate => ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]

  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "New Service Request",
      :to => "eli@structuralinspectionconnection.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
