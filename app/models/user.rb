class User < ActiveRecord::Base
has_secure_password
#validates_uniqueness_of :username
  validates :name, presence: true
  validates :user_name, presence: true
  validates :user_name, uniqueness: true

has_many :greetups
end
