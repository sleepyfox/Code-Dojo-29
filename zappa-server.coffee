require('zappajs') ->
	@get '/': -> 
		console.log @req.query.q
		console.log @req.query.g
		"ohai\n"
		
