//6kyu kata on CodeWars
/*Before defining the encoding and decoding functions, let's create 2 arrays
that will be very useful later:
  - the realAlphabet
  - the codedAlphabet made of points and space*/
let realAlphabet = [];
for (let i=0; i<26;i++) {
  realAlphabet[i]= String.fromCharCode(65+i);
};
realAlphabet.push(" "); /*We could aslo have just built manually a sequence 
of letters, like realAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ". But we wanted
to train to tell the machine to build it ;) .*/

const code = [".","..","..."] /*This little array is a translation of 
"0th, 1st and 2nd" in the coded cube language. Those are the coordinates 
that will be used to locate a real letter in the 3 dimensions
of the cube:
  - a number for the layer
  - a number for the row
  - a number for the column
Then we will create a 3-level loop to iterate in 3 dimensions and create our 
coded letters*/
const codedAlphabet = [];
let i = 0; 
for (let layer=0; layer<3; layer++) {
  for (let row=0; row<3; row++) {
    for (let column=0; column<3; column++) {
      codedAlphabet[i] = code[column] + " " + code[row] + " " + code[layer]
      i++;
    };
  };
};

/*Now that the preparatory work is done, let us define the functions.*/
function encode(str) {
  encodedString = []; /*This array will be the encoded version of the 
  string parameter. Next, let's iterate through each real character to build
  that encodedString with the corresponding coded letters. To do so, we can 
  search for the character's place in the alphabet and use it as an index to 
  return the coded letter*/
  for (let i=0; i<str.length; i++) {
    encodedString[i] = codedAlphabet[realAlphabet.indexOf(str[i])];
  };
  return encodedString.join(" "); /*Since encodedString is an array, we have 
  to join its elements in a sequence of coded letters.*/
};

/*Then, the second function to decode a coded string.*/
function decode(str) {
  let codeLettersList = []; /*This array will gather all the coded letters separately.*/
  let spaceCounter = 0; /*This counter will be reset every time it reaches the value 3.*/
  let letterStart = 0; let letterEnd = 0; /*letterStart and letterEnd will be used as delimitations 
  of the portion of the input string that will be sliced to be stored in our codeLettersList array.*/
  let i = 0 /*Every time we isolate a group of points and spaces that means a coded letter, 
  we will isolate it in codeLettersList with index i and will be incremented*/
  for (let position=0; position<=str.length; position++) {
    if (str[position]===" "||(str[position]===undefined)) {
      spaceCounter++;
    }; /*Why did we put "undefined"? As we count spaces, it is important not to omit the end 
    of the coded string that corresponds necessarily to the end of a letter, but is not a space. 
    In this specific case, the character will be "undefined" because it is out of the array.*/
    if (spaceCounter===3) {
      letterEnd = position - 1 /*If there is a third space in a row, it means that the coded letter 
      ended in the position just before the space. */
      codeLettersList[i] = str.slice(letterStart,letterEnd+1);
      spaceCounter = 0;
      letterStart = position + 1; /*We set the start of the next letter at the subsequent position.*/
      i++;
    };
  };
  /*Now we have our list of coded letters separated from each others, let's convert it into a real word.*/
  let p = 0; /*p will be new counter used as index as we will the decodedText array.*/
  const decodedText = []; /*decodedText is that array that will gather every decoded letter separately.*/
  codeLettersList.forEach ( letter => { 
    decodedText[p] = realAlphabet[codedAlphabet.indexOf(letter)];
    p++;
  })
  return decodedText.join(""); /*Now that we have an array of separated readable letters and spaces,
  let us gather them in a string.*/
};