# Write a method that takes a year as input and returns the
# century. The return value should be a string that begins with
# the century number, and ends with st, nd, rd, or th as
# appropriate for that number.
#
# New centuries begin in years that end with 01. So, the years
#   1901-2000 comprise the 20th century.
#
# Examples:
#
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# TOOK TWO DAYS THIS BASTARD

def century(year)
  # create century_str--------------
  if year.to_s.end_with?('00')
    century_str = year / 100
  else
    century_str = year / 100 + 1
  end
  century_str = century_str.to_s
  # --------------------------------

  # create suffix-------------------
  suffix = nil

  if century_str.length == 1
    if century_str == '1'
      suffix = 'st'
    elsif century_str == '2'
      suffix = 'nd'
    elsif century_str == '3'
      suffix = 'rd'
    else
      suffix = 'th'
    end

  elsif century_str.length < 4
    if century_str.reverse[1] == '1'
      suffix = 'th'
    elsif century_str.end_with?('1')
      suffix = 'st'
    elsif century_str.end_with?('2')
      suffix = 'nd'
    elsif century_str.end_with?('3')
      suffix = 'rd'
    else
      suffix = 'th'
    end

  elsif century_str.length == 3
    # case century_str
    # end
  end
  # --------------------------------

  result = "#{century_str}#{suffix}"



  p result
end


century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'






# PREVIOUS TRY:

=begin
def century(year)

  century_str = ((year / 100) + 1).to_s
  suffix = ''
  if year < 101
     century_str = '1'
     suffix = 'st'

  elsif year.to_s.length < 6
    if year.to_s.reverse[0] = '0'

    end
    if century_str[0] == '1' && century_str.to_s.length == 1
      suffix = 'st'
    elsif century_str[0] == '1' && century_str.to_s.length == 2
      suffix = 'th'
    elsif century_str[0] == '2' && century_str.to_s.length == 1
      suffix = 'nd'
    elsif century_str[0] == '2' && century_str.to_s.length == 2
      if century_str[1] == '1'
        suffix = 'st'
      elsif century_str[1] == '2'
        suffix = 'nd'
      elsif century_str[1] == '3'
        suffix = 'rd'
      else
        suffix = 'th'
      end
    elsif century_str[0] == '3'
      suffix = 'rd'
    elsif '456789'.include?(century_str[0])
      suffix ='th'
    end
    # create suffix

  end
  # create century string

  if year.to_s.end_with?('0')
    century_str = century_str.to_i - 1
  end
  result = "#{century_str}#{suffix}"
  p result

end
=end
=begin
    year.to_s
    if year[1] == '1'
      suffix = 'th'
    elsif year[0] == '1'
      suffix = 'th'
    elsif year[0] == '2'
      suffix = 'nd'
    elsif year[0] == '3'
      suffix = 'rd'
    else
      suffix = 'default th'
    end
    year.to_s
=end
