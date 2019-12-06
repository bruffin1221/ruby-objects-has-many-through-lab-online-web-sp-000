class Genre

  @@all=[]

attr_accessor :name

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

def songs
  Song.all.select{|songs| songs.genre==self}
end

def artists
  Song.all.map{|songs| songs.artist}
end


end
