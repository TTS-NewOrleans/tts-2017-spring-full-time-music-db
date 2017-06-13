class Song < ApplicationRecord
  belongs_to :artist

  # Validation
    # name present, minimum 2 characters
    validates :name, presence: true, length: {minimum: 2}

    # artist is present and that artist is already in our database
    validates :artist_id, presence: true
    validates :artist, presence: true
end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
