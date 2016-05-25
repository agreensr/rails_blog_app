class User < ActiveRecord::Base
  # One user has_many articles
  has_many :articles
  #Before an email address is saved to the db it will be converted to downcase.
  before_save { self.email = email.downcase }
  validates :username, presence: true,
            uniqueness: { case_sensitve: false },
            length: {minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105 },
            uniqueness: {case_sensitve: false },
            format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end
