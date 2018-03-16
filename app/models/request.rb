class Request < ApplicationRecord
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :telephone, :validate => true
  attribute :type, 			:validate => ["Structural Soils Special Inspector", "Reinforced Concrete", "Post-tensioned Concrete", "Structural Masonry", "Structural Steel & Bolting", "Structural Steel & Welding", "Spray Applied Fire Resistive Material & Fire Proofing", "D1.1 Certified Welding Inspector", "D1.8 Certified Welding Inspector", "Visual Testing Level II", "Magnetic Particle Testing Level II", "Dye Penetrant Testing Level II", "Field Testing Technician Level I", "GSSI Structure Scan Mini", "Load Testing", "Other"]

  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Service Request: Date: <%= @slot.date %> Time: <%= @slot.start_time %> - <%= @slot.end_time %>",
      :to => "dckeller1@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
end
