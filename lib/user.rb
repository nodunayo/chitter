require 'bcrypt'

class User
  include DataMapper::Resource

  attr_reader :password
  attr_accessor :password_confirmation

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String, :unique => true, message: "There is an existing account using this email address." 
  property :username, String, :unique => true, message: "This username is already taken."

  property :password_digest, Text

  validates_confirmation_of :password, message: "Your passwords didn't match!"

  def password= password
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def self.authenticate username, password
    user = first(username: username)
    if user && BCrypt::Password.new(user.password_digest) == password
      user
    else
      nil
    end
  end

end

