/*Écrivez une fonction qui convertit la date saisie par l'utilisateur au format MM/DD/YYYY 
dans un format requis par une API (YYYYMMDD). Le paramètre "userDate" et la valeur de retour sont des chaînes. 
Par exemple, il doit convertir la date saisie par l'utilisateur "12/31/2014" en "20141231" adaptée à l'API.*/


function formatDate(userDate) {
  let newDate = userDate.split("/");
  newDate.unshift(newDate.pop())
  console.log(newDate);
  newDate = newDate.join("");
  return newDate;
};

console.log(formatDate("12/31/2014"));