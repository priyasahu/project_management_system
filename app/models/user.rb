class User < ActiveRecord::Base
  #VALID_EMAIL_REGEX: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
  before_save {self.email = email.downcase}
  validates :username , presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :user_id, presence: true
  has_many :articles

  has_secure_password
end