require 'pry'
class Artist

attr_accessor :name 

@@all=[]
@@song_count=0

def initialize(name)
    @name = name
    @songs = []
    @@all<<self
end

def songs
    Song.all.select {|song| song.artist==self}
  
end

def add_song(song)
    @songs<<song
   song.artist = self
   @@song_count += 1
end

def add_song_by_name(songname)
    song=Song.new(songname)
    @songs<<song
   song.artist = self   
   @@song_count += 1
end

def self.song_count
    @@song_count
    @@song_count += 1
    @@song_count += 1
end

end