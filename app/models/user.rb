class User < ActiveRecord::Base
  has_many :surveys
  has_many :taken_surveys
  has_many :responses

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end
end
