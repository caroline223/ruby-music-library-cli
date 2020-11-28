class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all 
    end

    def save
        @@all << self
    end

    def self.destroy_all
        @@all.clear 
    end

    def self.create(genre)
        genre = self.new(genre)
        genre.save
        genre  
    end

    def songs
        @songs 
    end

    def artists
        @artists_array = []
        @songs.each do |song|
            if @artists_array.include?(song.artist)
                nil
            else
                @artists_array << song.artist
            end
        end
        @artists_array
    end
end