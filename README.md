# Simple Linux One-Touch Glucose Reader v0.0001

## Requirements

* unix2dos
* A One Touch Ultra Meter and Serial Cable
* kermit
* Account on SugarStats.com
* A "glucose" folder in your home directory ~/glucose

## Installation

Keep all of these files together, preferably in a directory within your path

## Usage

You will need to modify the various .kermit scripts to point to the correct comm port

You may need to adjust timings/delays since if you machine is too fast the meter ignores the commands!

You need to put your sugarstatus username and password in the autouploadfile

If using the One Touch Ultra 2 meter you need to set the meter variable in autoupload to "2"

The current script attempts to convert all readings to mm/dl but you can changes this as needed fairly easily

The Autoupload script drives most everything.  It attempts to access 
your meter and download results. If you meter has more then 150 
readings, it will dump the entire contents to a file and archive it and 
then delete the meter. If it has under 150 readings, it just gets the 
new readings since the last download

After getting the results, it wil automatically upload them to 
sugarstats.com. It will then attempt to set the date/time of the meter 
to your computers current date/time settings.

## Support:

There is none, but if you have a burning problem, you can email 
braddet@gmail.com
