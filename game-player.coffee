require('zappajs') ->
    @use 'partials'
    
    @get '/player-name': ->
        "Nigel"

    @get '/play/:game': ->
    	"1"