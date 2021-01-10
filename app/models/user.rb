class User < ActiveRecord::Base
    has_many :signs
    has_many :birthstones, through: :signs
    has_secure_password
  
    validates :username, presence: true, uniqueness: true
  end
  