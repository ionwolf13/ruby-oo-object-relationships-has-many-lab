class Artist

    attr_accessor :name, :songs

    @@all = []
    
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.each do |song|
            song.artist == self
            @songs << song
        end
        @songs
    end

    def add_song(song_name)
        Song.all.each do |song|
            if song.name == song_name
                song.artist = self
                return song
            end
        end
    end

    # def add_song_by_name(song_name)
    #     song_name = Song.new(song_name)
    #     song_name.artist = self
    # end

    # def self.song_count
    #     Song.all.length
    # end

end