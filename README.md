Code Dojo 29
============
This is some server code in order to implement a game-playing server for the 29th London Code Dojo

The tests can be run from the command-line with [mocha](http://visionmedia.github.io/mocha/):
	
	mocha --compilers coffee:coffee-script -R spec test-*.coffee

You can also use this with the **-w** flag to have mocha watch for file changes and re-run the tests (this obviates the need for watchr or similar tools).

The idea of the kata is to write a web server that will respond to simple HTTP requests in the following manner:

The team register the IP address of their server by going to the /join URL and typing in their IP address and port number. The server will then query their machine for the team name.

When the team's server is called with the URL '/player-name' the server will respond with the Team's chosen name, this is the minimum to qualify to play. 

When called with the URL '/game/<GAME>' the server will respond with the square from 1 to 9 that the team wants to play in. Squares are numbered from 1 to 9 from left to right and top to bottom.

123
456
789

Players gain one point for a legal move i.e. not on an occupied square, and twenty points for a winning move

The <GAME> string is encoded as a set of nine characters, with each character being a 'O' for noughts, a 'X' for crosses or a '.' for a blank square. 

