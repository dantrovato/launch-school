require 'pry'
require 'pry-byebug'
# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight. If
# the number of minutes is negative, the time is before midnight.
#
# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any integer input.
#
# You may not use ruby's Date and Time classes.
#
# Examples:
#
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"





p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


















# MY SLUSH

# minutes in a day = 1440
=begin
def time_of_day(num)
  num %= 1440
  # num = 1440 - num if num < 0
  if num == 0
    hour_string = '00'
    mins_string = '00'
  else
    hours, minutes = num.divmod(60)
    hour_string = hours.to_s.size == 1 ? hours.to_s.prepend('0') : hours
    mins_string = minutes.to_s.size == 1 ? minutes.to_s.prepend('0') : minutes
  end
  "#{hour_string}:#{mins_string}"
end

# L S SLUSH

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(35) == "00:35"
p time_of_day(800) == "13:20"
p time_of_day(3000) == "02:00"
p time_of_day(3009) == "02:09"
p time_of_day(-3) == "23:57"
p time_of_day(-1437) == "00:03"
p time_of_day(-4231) == "01:29"
=end
