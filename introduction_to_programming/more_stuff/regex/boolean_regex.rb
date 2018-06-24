def has_a_b?(string)
  if string =~ /'e'/
    puts "mmmmatchio!"
  else
    puts "nada here"
  end
end

has_a_b?("strunzun'")
has_a_b?("a chi t'e' muerto... bbucchinar'")
