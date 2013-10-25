class Contactu

  include ActiveModel::Model
  validates :name, presence: :true
  validates :email, presence: :true
  validates :message, presence: :true 
  # validates :recaptcha_response_field, presence: :true
  
  attr_accessor :name, :email, :message

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  # def persisted?
  #   false
  # end
end