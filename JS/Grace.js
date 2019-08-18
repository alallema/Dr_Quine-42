/*
Comment
*/
var fs = require('fs');
var print = function() {
	writeFile();
}
var writeFile = function() {
	fs.writeFile('./Grace_kid.js', "\/*\nComment\n*\/\nvar fs = require('fs');\nvar print = "+print.toString()+"\nvar writeFile = "+writeFile.toString()+"\nprint();\n", (err) => {
		if (err) throw err;
	})
}
print();
