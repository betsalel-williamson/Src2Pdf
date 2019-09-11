console.log( 'Hello, world!' );
// JUST FOR THE HECK OF IT! I'LL CHANGE TOO :-)
var foo = "some \" string with a quote\' ";

// the regex delimeters should be highlighted differently
var regex = foo.toLowerCase().replace(/[ ,.\/!@#$%\^&*\(\)\-_,+=|\\\{\}\[\]\`~:;\"\'<>?]{1,}/g,'-');