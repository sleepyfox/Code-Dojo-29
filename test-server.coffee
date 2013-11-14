should = require('chai').should()
http = require 'http'

describe 'A http client', ->
    it 'should be able to get a response from Google', (done) ->
        http.get("http://www.google.co.uk/index.html", (res) ->
            res.statusCode.should.equal 200
            done()
        ).on('error', (e) ->
            console.log "Got error: #{e.message}"
            done(e)
        )
