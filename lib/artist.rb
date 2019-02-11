require 'song'

class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(name)
    self.add_song(new Song(name))
  end
end