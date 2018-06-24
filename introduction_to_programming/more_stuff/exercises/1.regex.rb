#Write a program that checks if the sequence of characters "lab" exists in
#the following strings. If it does exist, print out the word.

# SOLUSH 1

if "laboratory" =~ /lab/
  puts "laboratory"
end

# SOLUSH 2

array = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"
]

array.each do |x|
  if x =~ /lab/
    puts x
  end
end

# SOLUSH 3

def scout(word)
  if word =~ /lab/
    puts word
  end
end

scout("elaborate")

# ACTUAL SOLUSH

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end
