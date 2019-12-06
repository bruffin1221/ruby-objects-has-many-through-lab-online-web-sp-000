class Artist

@@all=[]

attr_accessor :name, :songs, :genre

def initialize(name)
  @name=name
  @@all<<self
end

def self.all
  @@all
end

def songs
  Song.all.select{|songs| songs.artist==self}
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def genres
  Song.all.map{|songs| songs.genre}
end

end
