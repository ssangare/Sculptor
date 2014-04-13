$(document).ready(function() {
	
	//Load the tab order from datastore, ajax
	//We should store/load arrays with JSON, would be a good idea
	/// Ask servlet for order, Servlet returns an array of Tab Names with Type too, load the order in that way 
	loadTabOrder();
	
	//Load the form data for all forms, ajax again	
	/// Input : Array of Tab Names and Type of Form for each
	///     ie: [ ("HomePage", "Home") , ("Hw3", File) ]
	/// Return : A JSON array of all the form data in the DB
	///     ie: [ (tabName : 123, teacherName : McKenna , ....) , (tabName : Hw#3) ]
	
	
	//Need jQuery for on switch of tabs, where it warns user that they will lose changes,
	//then reload that form with data in datastore... with ajax :( 
	
	
	//Make the jQuery button action when the user saves the tab order, NEED AJAX again
	/// What to send to servlet:
	/// Array of JSOs with  (tabName, typeOfForm)
	/// ie : [ (tabName:"HomePage", type:"Home") , (tabName : "HW 3", type : File) ... ]
	/// You will get either success or failure...

	
});

function loadTabOrder() {
	
	//Get the tabs
	var tabs = document.getElementsByClassName('tab-pane');
	
	//Try to load tabs
	//Sends ajax request to servlet
	$.ajax({
	    type: 'post',
	    url: '/loadtaborder',
	    dataType: 'json',
	    data: '',
	    success: function(jsonData) {
	    	// So here, we have the jsonData of tabOrder, we need to get the array and push elements to the tab order
	    	// Also, we need to make the select menu for each form to the type of the tab...
	    	
	    },
	    error: function(jsonData) {
	        alert('error');
	    }
	});
}

function saveTabOrder() {
	
	//Gets the tab name and type of each tab
	var tabs = document.getElementsByClassName('tab-pane');
	var tabsType = document.getElementsByName('type-of-form');
	
	//Creating json string
	var JSONString = '{"tabOrder":[]}';
	for(var i = 0; i<tabs.length; i++)
	{
		
		//Parses the string into array
		JSONString = JSON.parse(JSONString);
		
		//Second object with next tabs information
		var obj2 = new Object();
		obj2.name = tabs[i].id;
		obj2.type = tabsType[i].options[tabsType[i].selectedIndex].text;
		var JSONString2 = JSON.stringify(obj2);
		
		//Parses second object string into array and pushes it into default string
		obj2 = JSON.parse(JSONString2);
		JSONString['tabOrder'].push(obj2);
		
		//Turns array back into string
		JSONString = JSON.stringify(JSONString);
		console.log(JSONString);
	}
	
	//Sends ajax request to servlet
	$.ajax({
	    type: 'post',
	    url: '/savetab',
	    dataType: 'text',
	    data: JSONString,
	    success: function(data) {
	    	alert('Success saving tab order!')
	    },
	    error: function(data) {
	        alert('Error');
	    }
	});
	
	
	
	
	
	
}