//Eight Ball in JavaScript

let userName = "";
if (!userName) {
  console.log("Hello!"); 
  userName="The User"
} else {
  console.log(`Hello, ${userName}!`);
}
let userQuestion = "Will I be happy?";
console.log(userName + " asked the following question: "+userQuestion);
let randomNumber = Math.floor(Math.random() * 8, 2);
let eightBall = "";
switch (randomNumber) {
  case 0 :
    eigthtBall = "Definitely!";
    break;
  case 1 :
    eigthtBall = "Oh Go, no doubt!";
    break;
  case 2 :
    eigthtBall = "I think so!";
    break;
  case 3 :
    eigthtBall = "Maybe...";
    break;
  case 4 :
    eigthtBall = "Why not?";
    break;
  case 5 :
    eigthtBall = "You are dreaming...";
    break;
  case 6 :
    eigthtBall = "Joker..! Try again.";
    break;
  case 7 :
    eigthtBall = "I am afraid, no!";
    break;
  default :
  eigthtBall = "I was not ready."
}
console.log(`Here is the ball's answer to ${userName}'s question:`);
console.log(" - " + eigthtBall);