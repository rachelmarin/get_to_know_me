class Birthstone < ActiveRecord::Base
#create birthstone
    require 'date'
    belongs_to :signs
    attr_accessor :month
    
month = []
    def birthstone(month)
    stone = ""
        case month
            when "January"
                stone = "Garnet, Meaning: Protection"
            when "February"
                stone = "Amethyst, Meaning: Wisdom"
            when "March"
                stone = "Aquamarine, Meaning: Serenity "
            when "April"
                stone = "Diamond, Meaning: Strength"
            when "05"
                 stone = "Emerald, Meaning: Hope"
            when "June"
                stone = "Pearl or Alexandrite, Meaning: Love"
            when "July"
                stone = "Ruby, Meaning: Vitality"
            when "August"
                stone = "Peridot, Meaning: Beauty"
            when "September"
                stone = "Sapphire, Meaning: Truth"
            when  "October"
                stone = "Tourmaline, Meaning: Healing"
            when "November"
                stone = "Citrine, Meaning: Joy"
            else "December"
                stone = "Turquoise, Meaning: Friendship"
           month << self
            end
        return stone
        end
    def self.all
        month
    end
end