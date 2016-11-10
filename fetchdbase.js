$.getJSON("http://cs301.byethost3.com/json.php",function(data){
	$("#a").empty();
		$.each(data.person, function(){
		$("#a").append("<tr> <td>"+this['id']+"</td><td>"+this['fname']+"</td><td>"+this['lname']+"</td></tr>"+this['email']+"</td></tr>"+this['gender']+"</td></tr>");
		});
	});
