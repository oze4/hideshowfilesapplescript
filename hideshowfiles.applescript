display dialog "Show all hidden files?" buttons {"Show", "Hide", "Exit without changes"}
set result to button returned of result
if result is equal to "Show" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles -bool true"
	do shell script "killall Finder"
	display dialog "All hidden files have been made visible." buttons {"Ok"}
else if result is equal to "Hide" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles -bool false"
	do shell script "killall Finder"
	display dialog "All hidden files have been hidden from view." buttons {"Ok"}
else
	display dialog "No changes made." buttons {"Ok"}
end if
