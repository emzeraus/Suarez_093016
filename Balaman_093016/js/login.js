'use strict';

class Login{
	viewForm(){
		let container = document.getElementById('container');
		container.innerHTML = `
			Login
			<input id="txtEmail" class="form-control" type="text" placeholder="Enter email here" />
			<input id="txtPassword" class="form-control" type="password" placeholder="Enter password here" />
			<span id="result"></span>
			<hr/>
			<button onclick="login.goLogin()" class="btn btn-primary">Login</button>
			<button onclick="login.clearTexts()" class="btn btn-info">Clear</button>
		`;
	}

	clearTexts(){
		let email = document.getElementById('txtEmail');
		let password = document.getElementById('txtPassword');
		let result = document.getElementById('result');

		email.value = "";
		password.value = "";
		result.innerHTML = "";
	}

	goLogin(){
		let result = document.getElementById('result');
		let html = "asdfsadfasdfasdf";

		html += `
			Login clicked.
		`;
		result.innerHTML = html;
	}
}

let login = new Login();
login.viewForm();