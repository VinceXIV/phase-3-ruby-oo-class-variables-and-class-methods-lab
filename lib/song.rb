require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        # pp @@artists

        @@artists << artist 
        # unless !!@@artists.find {|existing_artist| existing_artist == artist}

        # pp @@artists
        # puts ""
        
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        uniq_genres = Song::genres
        result = {}
        uniq_genres.each do |uniq_genre|
            result["#{uniq_genre}"] = @@genres.count(uniq_genre)
        end
        result
    end

    def self.artist_count
        uniq_artists = Song::artists
        result = {}
        uniq_artists.each do |uniq_artist|
            result["#{uniq_artist}"] = @@artists.count(uniq_artist)
        end
        result
    end
end

# binding.pry