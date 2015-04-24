This app is designed to accept two parameters, a word and a sentence. after these two parameters are entered, there is a submit button to submit the form and traverse to the next page of the app. The word's frequency in the sentence is determined using the method wordfreq, and this information is displayed on the following page.

Author: Daniel Minor (github user: DanTheMinor)
known bugs:
-The program will only check for exact matches of the word entered, for example: If the word entered is "cat" and the sentence entered is "catz c at and cat" the method will return 1, because theres only 1 exact match of cat.


Heroku url:https://secure-mountain-8713.herokuapp.com/

ruby version: 2.2.0

GNU General Public License, version 2:
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
