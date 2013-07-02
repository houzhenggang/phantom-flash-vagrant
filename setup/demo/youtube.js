var url = 'http://www.youtube.com/watch?v=NBxd0VrIpXM';
console.log('Loading ' + url);
var page = require('webpage').create();
page.open(url, function (status) {
    //Page is loaded!
    console.log('Wait 10 seconds');
    setTimeout(function() {
	  	console.log('Take a screenshot');
	  	page.render('youtube.png');
	    phantom.exit();
	  }, 10000);
});