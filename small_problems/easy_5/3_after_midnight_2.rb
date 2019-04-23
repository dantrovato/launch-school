# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
#
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.
#
# You may not use ruby's Date and Time methods.
#
# Examples:
#
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# LAUNCH SLUSH
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

=begin
#MY SLUSH
def after_midnight(str)
  hours = str[0].to_i * 10 + str[1].to_i
  minutes = str[3].to_i * 10 + str[4].to_i
  total = hours * 60 + minutes
  total = 0 if total == 1440
  total
end

def before_midnight(str)
  total = 0
  total = 1440 - after_midnight(str) unless after_midnight(str) == 0
  total
end

p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
p after_midnight('12:34')  == 754
# p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
=end
