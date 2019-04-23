# Suppose you also needed to consider the day of week? (Assume that delta_minutes
# is the number
# of minutes before or after midnight between Saturday and Sunday; in such a method, a
# delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)
require 'pry'
require 'pry-byebug'

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = 1440
HOURS_PER_WEEK = 168
MINUTES_PER_WEEK = 10080

def time_of_day(num)
  # determine day
    # if else statements
  day = ''
  if num >= 0 && num < 1440 then day = 'Sunday' end
  if num >= 1440 && num < 2880 then day = 'Monday' end
  if num >= 2880 && num < 4320 then day = 'Tuesday' end
  if num >= 4320 && num < 5760 then day = 'Wednesday' end
  if num >= 5760 && num < 7200 then day = 'Thursday' end
  if num >= 7200 && num < 8640 then day = 'Friday' end
  if num >= 8640 && num < 10080 then day = 'Saturday' end


  if num < 0 && num >= -1400 then day = 'Saturay' end
  if num < -1440 && num >= -2880 then day = 'Friday' end
  if num < -2880 && num >= -4320 then day = 'Thursday' end
  if num < -4320 && num >= -5760 then day = 'Wednesday' end
  if num < -5760 && num >= -7200 then day = 'Tuesday' end
  if num < -7200 && num >= -8640 then day = 'Monday' end
  if num < -8640 && num >= -10080 then day = 'Sunday' end
      # binding.pry


  # determine hour and minutes
  num %= MINUTES_PER_DAY
  hours, minutes = num.divmod(MINUTES_PER_HOUR)
  p hours
  time = format('%02d:%02d', hours, minutes)
  time.prepend(day + ' ')
  #binding.pry
end
binding.pry
p time_of_day(0) # == "Sunday 00:00"
p time_of_day(-3) # == "Saturday 23:57"
p time_of_day(35) # == "Sunday 00:35"
# p time_of_day(-1437) == "00:03"
p time_of_day(-4231) # == "Thursday 01:29"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "Sunday 13:20"
# time_of_day(3475) == "Sunday 09:55"
