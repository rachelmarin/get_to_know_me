birthstone_list = {
  "Jan" => {
    :stone => "Garnet",
    :meaning => "Protection"
  },
  "Feb" => {
    :stone => "Amethyst",
    :meaning => "Wisdom"
  },
  "Mar" => {
    :stone => "Aquamarine",
    :meaning => "Serenity"
  },
  "Apr" => {
    :stone => "Diamond",
    :meaning => "Strength"
  },
  "May" => {
    :stone => "Emerald",
    :meaning => "Hope"
  },
  "Jun" => {
    :stone => "Pearl or Alexandrite",
    :meaning => "Love"
  },
  "Jul" => {
    :stone => "Ruby",
    :meaning => "Vitalitym"
  },
  "Aug" => {
    :stone => "Peridot",
    :meaning => "Beauty"
  },
  "Sep" => {
    :stone => "Sapphire",
    :meaning => "Truth"
  },
  "Oct" => {
    :stone => "Tourmaline",
    :meaning => "Healing"
  },
  "Nov" => {
    :stone => "Citrine",
    :meaning => "Joy"
  },
  "Dec" => {
    :stone => "Turquoise",
    :meaning => "Friendship"
  }
}

birthstone_list.each do |month, birthstone_hash|
  c = Birthstone.new
  c.month = month
  birthstone_hash.each do |attribute, value|
    c[attribute] = value
  end
  c.save
end 


