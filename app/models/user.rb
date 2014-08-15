class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :email, type: String
  field :password_digest, type: String
  #field :is_active, type: Mongoid::Boolean, default: true 
  field :is_admin, type: Boolean, default: false
  
  has_secure_password
  has_many :photos

end
