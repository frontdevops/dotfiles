#!/usr/bin/env bash

# GUI CLI library
# Set of different functions to call a GUI elements from the terminal
#
# Author: Alexaner Majorov
# License: MIT
# https://github.com/frontdevops/dotfiles
#

alert() {
  osascript << APPLESCRIPT
    tell app "System Events"
      display dialog "$1" buttons {"OK"} default button 1 with title "$2" with icon caution
      return  -- Suppress result
    end tell
APPLESCRIPT
}


question() {
  osascript << APPLESCRIPT
    tell app "System Events"
      button returned of (display dialog "$1" buttons {"Yes", "No"} default button 1 with title "$2")
    end tell
APPLESCRIPT
}


prompt() {
  title="${3:-Input}"
  osascript << APPLESCRIPT
    tell app "System Events"
      text returned of (display dialog "$1" default answer "$2" buttons {"OK"} default button 1 with title "$title")
    end tell
APPLESCRIPT
}


notify () {
  osascript << APPLESCRIPT
    tell app "System Events"
      display notification "$1" with title "${2:-Notify}" subtitle "${3:-}" sound name "Funk"
    end tell
APPLESCRIPT
}


list() {
  list='"'$(printf '%s","' $@)'"'
  osascript << APPLESCRIPT
    tell app "System Events"
      set theList to {$list}
      set theChoice to choose from list theList with title "Title" with prompt "Prompt"
      return theChoice
    end tell
APPLESCRIPT
}


datepicker() {
  osascript << APPLESCRIPT
    tell app "System Events"
      set theDate to (choose date with title "Title" default date "now")
      return theDate
    end tell
APPLESCRIPT
}


selectfile() {
  osascript << APPLESCRIPT
    tell app "System Events"
      set theDocument to choose file with prompt "Please select a document to process:"
    end tell
APPLESCRIPT
}


colorpicker() {
  osascript << APPLESCRIPT
    tell app "System Events"
      set theColor to choose color default color {255, 255, 255}
    end tell
APPLESCRIPT
}

