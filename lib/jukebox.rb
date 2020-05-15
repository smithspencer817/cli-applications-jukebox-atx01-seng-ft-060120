# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i=1
  songs.each do |song|
    puts "#{i}. #{song}"
    i+=1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.strip
  range = (1..10).to_a
  if songs.include?(answer)
    puts "Playing #{answer}"
  elsif range.include?(answer.to_i)
    puts "Playing #{songs[answer.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  answer = ""
  while answer != "exit" do
    puts "Please enter a command:"
    answer = gets.strip
    case answer
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    else
      "I don't recognize that"
  end
  exit_jukebox
end
  
end





