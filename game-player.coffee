require('zappajs') ->
    @use 'partials'
    
    @get '/': ->
        "Nigel"

    @get '/play/:game': ->
    	"1"