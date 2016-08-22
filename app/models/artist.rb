class Artist < ActiveRecord::Base
  has_many :songs

  def self.sort_artists
    preference = Preference.last
    order(name: preference.artist_sort_order)
  end
end
