Example custom build systems for Sublime
These allow you to run/execute whatever script you are currently modifying,
within Sublime, in a split screen below the editor.
More info on Build Systems: https://www.sublimetext.com/docs/build

I learned how to do this from a YouTube tutorial on customizing Sublime
for Python development: 
https://www.youtube.com/watch?v=xFciV6Ew5r4&index=9&list=PL-osiE80TeTt2d9bfVyTiXJA-UTHn6WwU

Copy the contents of any of these files to use as template for new custom 
build systems.

Ex: on OSX, Python 2.7.x is installed as part of OS and cannot be removed.
You may want to use Python 3.x instead, inside Sublime. Create a custom
Python3 build system to use as your default.

Create new build systems/methods via
Tools --> Build System --> New Build System
then paste in contents of one of the provided files. 

NOTE: The first part of the filename will be the title of the menu item in
the Build System list, so you should not use the same name as an existing one.
Once the file is saved, the new Build System will be available immediately for
you to choose from the menu.

OSX default file location for custom build systems:
~/Library/Application Support/Sublime Text 3/Packages/User
