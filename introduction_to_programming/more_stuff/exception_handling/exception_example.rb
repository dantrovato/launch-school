names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "ouch. you broke me"
  end
end


# this is for handling errors. a file might be corrupted or
# some input be incorrect. you can't mesure the length of nil
