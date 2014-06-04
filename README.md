dockTweak
=========

Simple OSX application that move dock from middle to conner.

## How to use

1. Open the app
2. Click one of the buttons
3. Dock will be re-located.


## How it work

When button hits, 2 simple commands will be executed

1. Runs `defaults write com.apple.dock pinning -string {start | middle | end}`
2. Kill dock by `killall Dock `

It mostly depends on `NSTask` to make it works.

## To-do

- Add a fancy icon
- Add more functions
- Add few words to guide user

## Copyright 

Public Domain, feel free to fork it.
