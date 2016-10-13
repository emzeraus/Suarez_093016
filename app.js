"use strict";

class App{
	constructor(){
		this.friends = [
			{"name":"clyde","gender":"male"},
			{"name":"rj","gender":"male"},
			{"name":"dada","gender":"male"},
		];
	}

	readFriend(){
		//This class method displays all your friends
		//your code here...
		
		/*console.log(this.friends[0].name);
		console.log(this.friends[1].name);
		console.log(this.friends[2].name);*/

		console.log("My Friends");
		for(let i=0;i<this.friends.length;i++){
			console.log(`${this.friends[i].name} ${this.friends[i].gender}`);
		}
	console.log("******************")
	}

	createFriend(friend){
		//This class method creates a new friend
		//your code here...
		
		this.friends.push(friend);
		this.readFriend();

	}

	updateFriend(key,friend){
		//This class method updates your friend info
		//your code here...

		this.friends[key] = friend;
	}

	deleteFriend(key){
		//This class method delete a friend
		//your code here...
			//mark as delete
			//this.friends[key] = {"name":"xxx","gender":"xxx"};

			//permanent delete
			let dummy = [];
			for(let i=0;i<this.friends.length;i++){
				if(key != i){
					dummy.push(this.friends[i]);
				}
			}
			this.friends = dummy;

	}
}

let app = new App();
app.readFriend();
//app.createFriend({"name":"remy","gender":"female"});

let newName = "remy";
let newGender = "female";
let newFriend = {"name":newName,"gender":newGender};
app.createFriend(newFriend);

app.updateFriend(2,{"name":"rhodessa","gender":"female"});
app.readFriend();

app.deleteFriend(3);
app.readFriend();