#!/bin/bash

#goal: copy parts of svg files (svgs/lc_recsearch.svg etc) to a specific svg file (icon-theme-script.svg)

#1st insert this in the begining of the file: icon-theme-script.svg
#<svg width="0" height="0" class="hide">

#-----------------------------------------------To loop
#2nd add:
#	<symbol id="[taken by the name of the file eg.: svgs/lc_recsearch svgs/*]" viewBox="0 0 24 24">

sed -i '1s/^/<svg width="0" height="0" class="hide"> \n/' icon-theme-script.svg
sed -r -i '1s/^/<symbol id="lc_recsearch" viewBox="0 0 24 24"> \n/' icon-theme-script.svg
#------------end of 1st----------


#3rd Copy anything betwwen the first occurence of '>' (when svg opening tag ends) and '</svg>'

#sed -e 's/betweenthis //' -e 's/andthis//' 
#sed -e 's/>//' -e 's/</svg>//' lc_underline.svg >> icon-theme-script.svg 
#------------end of 2nd----------

#4th add after :
#</symbol>
#-----------------------------------------------edn of To loop

#5th add :
#</svg>
