# chromeMutipleIncognitoModeEasy

Easily to run chrome with muptiple incognito sessions

It contains a batch file, so it is used on Windows platforms.

## Install

Either one of the following:

* downloading zip from github and unpack

* using git clone


## How to use

run chrome-tmp-usr.bat


## Customization

You may want your original "Local State" and "Default\Preferences" and "Default\Bookmarks" to be used.

In this case, you can change confDirDstPrefix in line 3 to where your original user profile is.

For example, change line 3 to:

@set confDirDstPrefix=%USERPROFILE%\AppData\Local\Google\Chrome\User Data

or you can edit the content of the folder: chromeUsrDataTemplate


## How it works

By using "--user-data-dir=" switch of chrome, you can specify a different user profile directory.

The batch file creates a new user profile directory, copies configuration from template ( %confDirSrc% ), waits from chrome exit, and then removes the newly created user profile directory.
