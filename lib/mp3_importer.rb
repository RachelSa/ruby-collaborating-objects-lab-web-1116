class MP3Importer
  # parses a directory of files
  # sends the filenames to a song class

  # path attribute gets set on initialization
  # MP3Importer.new('./db/mp3s').import
attr_accessor :path
def initialize(path)
  @path = path # './db/mp3s'
end

def files
 files = Dir.entries(@path)
normalized=[]
 files.each do |file| 
  if file[-3..-1] == "mp3"
     normalized << file
     
  end 
end
normalized
end

 def import
  files.each do |filename|
    Song.new_by_filename(filename)
  end
end
 
 end

