# chromeMutipleIncognitoModeEasy

Easily to run chrome with muptiple incognito sessions

It contains a batch file, so it is used on Windows platforms.

## Install

Either one of the following:

* downloading zip from github and unpack

* using git clone


## How to use

run chrome-tmp-usr.bat

## How it works

By using "--user-data-dir=" switch of chrome, you can specify a different user profile directory.

The batch file creates a new user profile directory, copies configuration from template ( %confDirSrc% ), waits from chrome exit, and then removes the newly created user profile directory.
