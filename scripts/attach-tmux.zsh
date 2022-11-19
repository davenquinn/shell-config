# A script meant to be sourced that attaches to a session
# - Used in Desk setup
# - Requires SESSION variable to be set to the proper
#   name for the session
if [ "$IN_SESSION" != "$SESSION" ]; then
  SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

  # Only create tmux session if it doesn't already exist
  if [ "$SESSIONEXISTS" = "" ]
  then
      # Start New Session with our name
      tmux new-session -d -s $SESSION
  fi

  # Attach Session, on the Main window
  tmux -CC attach-session -t $SESSION
  export IN_SESSION="$SESSION"
fi
