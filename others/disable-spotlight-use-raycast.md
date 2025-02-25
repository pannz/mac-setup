
Ref: https://gist.github.com/adamstac/1249295

Disable:
```
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
```

Enable:
```
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
```

On/Off

Disable the index:
```
mdutil -i off /
```

Enable the index:
```
mdutil -i on /
```

Erase the current Spotlight index:
```
mdutil -E /
Help
Usage: mdutil -pEsa -i (on|off) -d volume ...
	Utility to manage Spotlight indexes.
	-p             Publish metadata.
	-i (on|off)    Turn indexing on or off.
	-d             Disable Spotlight activity for volume (re-enable using -i on).
	-E             Erase and rebuild index.
	-s             Print indexing status.
	-a             Apply command to all volumes.
	-V vol         Apply command to all stores on the specified volume.
	-v             Display verbose information.
NOTE: Run as owner for network homes, otherwise run as root.
```

Sources:
http://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man1/mdutil.1.html
http://www.mikesel.info/disable-spotlight/
http://osxdaily.com/2007/03/22/how-to-completely-disable-spotlight/


Install raycast: brew install --cask raycast    