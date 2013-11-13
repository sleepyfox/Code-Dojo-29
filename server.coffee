require('zappajs') ->
    @use 'partials'
    
    @get '/': ->
        @render 'index', title: 'my whizzo title'
    
    @get '/players': ->
        "John, Fred" 
    
    @view index: ->
        p 'Some text goes here'

    @view layout: ->
        doctype 5
        html ->
          head ->
            title @title
          body ->
            for i in [1..3]
                h1 "test server #{i}"
                h3 " #{i}"
            @body   