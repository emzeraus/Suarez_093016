"use strict"

class App{
	constructor(){
		this.friends = [
			{"name" : "clyde", "gender" : "male"},
			{"name" : "rj", "gender" : "male"}
		];
	}
	render(html,component){
		component.innerHTML += html;
    }
}
class Component extends App{
	constructor(){
		super();
	}

	friendList(){
		this.render(`
			<table>
				<thread>
					<tr>
						<th>Name</th>
						<th>Gender</th>
					</tr>
				</thread>
				<tbody>
					<tr>
						<td><span class="name">${this.friends[0].name}</span></td>
						<td><span class="gender">${this.friends[0].gender}</span></td>
					</tr>
					<tr>
						<td><span class="name">${this.friends[1].name}</span></td>
						<td><span class="gender">${this.friends[1].gender}</span></td>
					</tr>		
		`,document.getElementById("app"));
	}
}

let component = new Component();
component.friendList();