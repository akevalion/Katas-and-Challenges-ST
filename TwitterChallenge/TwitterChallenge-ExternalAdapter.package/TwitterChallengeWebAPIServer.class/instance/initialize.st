initialization
initialize

	super initialize.
	teapot := Teapot configure: {
		#port -> ([OSProcess thisOSProcess environment at: #TWITTER_CHALLENGE_PORT] on: KeyNotFound do: [ 8080 ]).
		#debugMode -> false
	}.