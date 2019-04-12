class User < ActiveRecord::Base
has_secure_password
#validates_uniqueness_of :username
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

has_many :greetups
end
