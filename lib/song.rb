class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

 def song_artist=(name) 
  artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)

 end

 def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")
    song = self.new(song_name)
    song.song_artist=(artist_name)    
    song
  end


#SONG.NEW_BY_FILENAME  
  # parse song_name and artist_name using " - "
  # create a new song instance
  # associate that new song with an artist, Song#artist=(artist_name)
  # return new song instance

  # create a method that takes in the name and gets the artist object. 
  # Song#artist=(artist_name). See obj example

# SONG#ARTIST_NAME=(NAME)
  # Turn the artist's name string into an artist object
    # Either we have to create that artist instance
    # Or it already exists and we have to find it.
    # Artist.find_or_create_by_name(artists-name-here)
  #Assign the song to the artist 
     # Artist#add_song(some_song) 

  # def Artist.find_or_create_by_name(artists-name-here)



end
