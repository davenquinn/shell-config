on run argv
  set currentDate to current date
  set currentHour to (currentDate's hours)
  if (currentHour > 8 and currentHour < 23) then
    tell application "iTunes"
      try
        set selectedAirplayDevice to (get some AirPlay device whose name is (item 1 of argv))
      on error
        set selectedAirplayDevice to (get some AirPlay device whose kind is computer)
      end try
      set current AirPlay devices to {selectedAirplayDevice}
    end tell
  end if
end run
