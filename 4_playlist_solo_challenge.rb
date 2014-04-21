# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.



# Initial Solution
class Song
	def initialize(song, artist)
		@song = song
		@artist = artist
	end
	def play
		puts "♪#{@song} -- by #{@artist}"
	end
end

class Playlist
	def initialize(song_list)
		@song_list = song_list
	end

	def add(adding_list)
		adding_list.each do |song|
			@song_list << song
		end
	end

	def num_of_tracks
		@song_list.length
	end

	def remove(remove_list)
		remove_list.each do |song|
			@song_list.delete(song)
		end
	end

	def includes?(include_list)
		i = 0
		include_list.each do |song|
			if @song_list.include?(song) then i+=1
			end
		end
		if i==include_list.length
			true
		else
			false
		end
	end

	def play_all
		@song_list.each do |song|
			song.play
		end
	end

	def display
		@song_list.each do |song|
		 	puts song  
		end
	end
end






# Refactored Solution
# should I refactor the display method???? so that I can see the song names, 
# using attr_reader?

class Song
    attr_reader :song #you can read the name of the song then!
	def initialize(song, artist)
		@song = song
		@artist = artist
	end
	def play
		puts "♪#{@song} -- by #{@artist}"
	end
end

class Playlist
	def initialize(song_list)
		@song_list = song_list
	end

	def add(adding_list)
		adding_list.each do |song|
			@song_list << song
		end
	end

	def num_of_tracks
		@song_list.length 
	end

	def remove(remove_list)
		remove_list.each do |song|
			@song_list.delete(song)
		end
	end

	def includes?(include_list)
		i = 0
		include_list.each do |song|
			if @song_list.include?(song) then i+=1
			end
		end
		if i==include_list.length then true
		else then false
		end
	end

	def play_all
		@song_list.each do |song|
			song.play
		end
	end

	def display
		@song_list.each do |song|
		 	puts song.song # calling the name of the song 
		end
	end
end


# Pseudocode
# define a class Song
# initialize the class, taking two vaariables, song_name and artist\
#define a method "play" which shows the name of the song

# define a class Playlist
# initialize the class, taking one variable, an array of songs.
# define a method "add" which takes one variable, an array of songs
# define a method "num_of_tracks" which returns the length of the playlist
# define a method "remove" which takes an array
# define a method "includes?" which takes an array 
# define a method "play_all" which shows a list of songs
# define a method "display" which shows a list of songs



# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new([one_by_one, world_so_cold, going_under])
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add([lying_from_you, angels])
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove([angels])
p my_playlist.includes?([lying_from_you]) == true
my_playlist.play_all
my_playlist.display





# Reflection


