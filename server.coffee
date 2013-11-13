require('zappajs') ->
    @use 'partials'
    
    @get '/': ->
        @render 'index', title: 'my whizzo title'
    
    @get '/players': ->
        "John, Fred" 

    @get '/game/:game': ->
        @render 'game', board: @params.game
    
    @view index: ->
        p 'Some text goes here'

    @view layout: ->
        doctype 5
        html ->
          head ->
            title @title
          body ->
            h1 "test server"
            @body   

    @view game: ->
        p "The value of :game is #{@board} OK?"