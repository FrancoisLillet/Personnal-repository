let button = document.querySelector("button");
let welcomeMessage = document.querySelector("#message");

button.onclick = ()=> {
	setUserName();
}

function setUserName() {
	let myName = prompt("Comment vous appelez-vous ?").toUpperCase();
		if (!myName) {
			setUserName();
	} 	else {
			localStorage.setItem("name", myName);
			welcomeMessage.textContent = `Bien le bonjour ${myName}, nous vous souhaitons la bienvenue à bord !`;
	};
}

