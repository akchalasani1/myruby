class Song
  attr_reader :lyrics, :singer

  def initialize(lyrics, singer)
    @lyrics = lyrics
    @singer = singer
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
    puts ' - ' * 10
  end

  def define_singer()
    puts ' - ' * 10
    puts "The singer of the song is #{@singer}"
  end

  def get_line(line_number)
    line = @lyrics[line_number-1]
    puts "Lyric #{line_number} is:  #{line}"
  end
end

  happy_bday = Song.new(["Happy birthday to you",
                        "I don't want to get sued",
                        "So I'll stop right there"

  ], "")

  bulls_on_parade = Song.new(["They really around the family",
                           "With pocket full of shells"], "Rage Against the Machine")
  bulls_on_parade.define_singer()
  bulls_on_parade.get_line(2)
  puts "The lyrics of Bulls on Parade are:"
  puts bulls_on_parade.lyrics
  puts ' - ' * 10

  little_lamb = Song.new(["Mary had a little lamb",
                       "Little lamb, little lamb",
                       "Mary had a little lamb",
                       "Its fleece was white as snow"], "")

  another_day_in_paradise = Song.new(["Oh think twice, it's another day for you \
  and me in paradise", "Oh think twice, 'cause it's just another day for you",
                                    "You and me in paradise, think about it"], "")
=begin
2. Put the lyrics in a separate variable, then pass that variable to the class to use instead.
I put a few lines of Merry Christmas into an array and assign it to the variable merry_xmas_lyrics.
I then create a new Song object by giving it the merry_xmas_lyrics as an argument.
This new song object is assigned to the merry_xmas variable.
Finally I call the sing_me_a_song method on the merry_xmas song object.
=end
  marry_xmas_lyrics = ["We wish you a marry christmas",
  "We wish you a marry christmas", "We wish you a marry christmas",
  "And a happy new year"]

  marry_xmas = Song.new(marry_xmas_lyrics, "")

marry_xmas.sing_me_a_song()

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

little_lamb.sing_me_a_song()

another_day_in_paradise.sing_me_a_song()


