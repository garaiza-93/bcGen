# bcGen
In conjuction with TF2Autobot, this Bash script is a handy tool to generate bulk commands for pricelist manipulation

# Why?
Mainly to learn Bash.
As I expand my bot's pricelist, I come across items that are numbered, such as crates. I am creating this mainly to add crates easily. However, I have ideas to expand to different kinds of items.
 - Ideas
   - Killstreak weapons, as all names contain "Killstreak", "Specialized Killstreak", and "Professional Killstreak"
   - Unusuals, as all particle names are consistent across unusual.
   - General SKUs (ex: 1;6, 2;6 etc). Obviously, not all SKUs will be valid, but it still fulfills the goal of adding a LOT of items.
 
 # Installation
 ```
 git clone https://github.com/garaiza-93/bcGen
 ```
# Usage
```
bcGen.sh [options] 'text to !! use' 
!! denotes where text will be replaced. e.g. 'Mann Co. Supply Crate #!!'
Options:
        	-h              :       show usage
	        -a              :       output as addbulk command (default)
      	 	-r              :       output as removebulk command
	        -u              :       output as updatebulk command
	        -n  (number)    :       number of skus to generate, default 1
	        -o  (filepath)  :       output command to a file
```
