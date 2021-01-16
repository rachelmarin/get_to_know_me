class Sign < ActiveRecord::Base
    belongs_to :user
    zodiac_reader :date_of_birth

  end