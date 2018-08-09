on run argv
	tell application "System Events"
		if application process "iTunes" exists then
			set currentDate to current date
			set currentHour to (currentDate's hours)
			tell application "iTunes"
				if (currentHour > 8 and currentHour < 23) then
					log "Switching airplay"
					try
						set selectedAirplayDevice to (get some AirPlay device whose name is (item 1 of argv))
					on error
						set selectedAirplayDevice to (get some AirPlay device whose kind is computer)
						log "Switching to computer"
					end try
				else

					set selectedAirplayDevice to (get some AirPlay device whose kind is computer)
					log "Switching to computer"
				end if
				set current AirPlay devices to {selectedAirplayDevice}
			end tell			
		end if
	end tell
end run
