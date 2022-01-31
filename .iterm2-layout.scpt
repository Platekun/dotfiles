#!/usr/bin/osascript
tell application "iTerm2"
    	tell first session of current tab of current window
        	split vertically with default profile
		write text "gotop -l '.gotop-layout'"
    	end tell

    	tell second session of current tab of current window
		split horizontally with default profile
		write text "ranger"
    	end tell

	tell third session of current tab of current window
		write text "neofetch"
	end tell
end tell

