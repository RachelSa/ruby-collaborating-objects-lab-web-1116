require 'pry'
class Artist

  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name 
    @songs = [] 
    save
  end

  def self.all
    @@all
  end


  def songs
    @songs
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def save
    self.class.all << self
    #binding.pry
  end

  def self.find_or_create_by_name(name)
    if (self.all.detect {|person| person.name == name})   
      self.all.detect {|person| person.name == name}
     else  
      Artist.new(name)
   end
  end

def print_songs
  songs.each do |song|
    puts song.name
  end
end


end 