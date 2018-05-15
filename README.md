# ifttt-command-execute

```
brew install fswatch
chmod +x main.sh
```

edit the script location in the .plist file

```
cp ifttt-command-execute.plist ~/Library/LaunchAgents/ifttt-command-execute.plist
launchctl load ~/Library/LaunchAgents/ifttt-command-execute.plist
```