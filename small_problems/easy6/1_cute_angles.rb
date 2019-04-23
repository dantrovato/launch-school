=begin
Cute angles
Write a method that takes a floating point number that represents an
angle between 0 and 360 degrees and returns a String that represents
that angle in degrees, minutes and seconds. You should use a degree
symbol (°) to represent degrees, a single quote (') to represent minutes,
and a double quote (") to represent seconds. A degree has 60 minutes,
while a minute has 60 seconds.

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
Note: your results may differ slightly depending on how you round values,
but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the
minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"
=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


=begin
Hide Solution & Discussion
Approach/Algorithm
There's a bit of elementary math here, but it's math that you will
probably encounter somewhere in your career as a developer. If you need
some help with the math needed here, check this page.


LINK:
When looking at maps and surveys, you'll sometimes find degrees given in decimal
degrees (121.135 degrees) instead of the more common degrees, minutes,
and seconds (121 degrees, 8 minutes, and 6 seconds). It's easy to convert from a
decimal to the sexagesimal system if, for example, you need to combine data from
maps that are calculated in two different systems. Or maybe you've done some math
with some data in decimal degrees format and need to convert back to degrees,
minutes, and seconds to plot the coordinates on a map. When you use GPS systems,
for example when geocaching, you should be able to switch between the different
coordinate systems on your device.

Here's How to Do the Conversion
There are online calculators, but it's not that tough to do the calculation from
decimal degrees to degrees, minutes, and seconds by hand when needed; you start
by breaking down your existing figure.

The whole units of degrees will remain the same (e.g., if your figure is 121.135
degrees longitude, start with 121 degrees).
Multiply the decimal portion of the figure by 60 (e.g., .135 * 60 = 8.1).
The whole number becomes the minutes (8).
Take the remaining decimal and multiply it by 60 (e.g., .1 * 60 = 6).
The resulting number becomes the seconds (6 seconds). Seconds can remain as a
decimal if needed.
Take your three sets of numbers and put them together, (e.g., 121°8'6" longitude
would be equivalent to 121.135 degrees longitude).
FYI
After you have degrees, minutes, and seconds, it's often easier to find your
location on most maps (especially topographic maps).
Though there are 360 degrees in a circle, each degree is divided into 60 minutes,
and each minute is divided into 60 seconds.
A degree is 70 miles (113 km), a minute 1.2 miles (1.9 km), and a second is .02
miles, or 106 feet (32 m).
Use a negative sign before figures in the Southern Hemisphere and in the Western
Hemisphere.












Solution
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

Discussion
We start by defining some useful constants - including the supplied DEGREE
constant. These constants aren't essential, but they help with understanding
what is going on in each step.

The method starts out by converting the number of degrees to seconds; this makes
it easier to compute the whole number of degrees, minutes, and seconds. Next, we
use divmod to get the whole number of degrees, and a remainder that represents
the number of seconds in the fractional part of the original value. We then use
divmod again to split the remainder into a whole number of minutes, and a whole
number of seconds. The final step puts everything together with #Kernel.format.

It's worth noting that the desired output contains both single and double quote
characters. Ruby provides a variety of ways to deal with quotes inside strings;
the easiest uses %(), %q() or %Q() to delimit the string. We use %() here.

Further Exploration
Our solution works with any non-negative number of degrees, including values
outside the range 0 to 360. Does yours?

While our solution works with the expanded range of non-negative numbers, it
fails with negative numbers. For instance, dms(-76.73) returns -77°16'12",
which is incorrect. Update our solution so that it works with negative values as
 well as non-negative values.
=end
