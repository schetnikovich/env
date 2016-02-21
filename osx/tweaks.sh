# Make the OS X dock appear faster
defaults write com.apple.dock autohide-delay -float 0

# Restart the Dock to see the change in effect
killall Dock

# Restore back:
# defaults delete com.apple.dock autohide-delay
# and so on...
