class Sign < ActiveRecord::Base
    belongs_to :user
    has_many :birthstones
    zodiac_reader :date_of_birth
  
    
  end