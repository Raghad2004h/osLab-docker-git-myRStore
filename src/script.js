//  print welcom message
window.onload = function(){
    alert(" welcom to my pink store ")
}

//  initialize three variables of different data types

let myName = "Raghad"
let myage = 20
let isStudent = false

console.log(typeof(myName))      //  string
console.log(typeof(myage))         //  number
console.log(typeof(isStudent))   //  boolean


//  Declare an array of product names

let productnames = ["Makeup", "Mugs", "Hair Accessories", "Skine Masks", "Perfumes"]

//  print the array items by for loop

for(let i = 0; i<productnames.length; i++){
    console.log(productnames[i])
}

//  Basic Operators

// let num1 = 10;
// let num2 = 5;

// let sum = num1 + num2;
// let difference = num1 - num2;
// let product = num1 * num2;
// let quotient = num1 / num2;

// // design to my result
// let resultHTML = "<h2>نتائج العمليات الحسابية:</h2>";
// resultHTML += `<p>الجمع: ${num1} + ${num2} = ${sum}</p>`;
// resultHTML += `<p>الطرح: ${num1} - ${num2} = ${difference}</p>`;
// resultHTML += `<p>الضرب: ${num1} × ${num2} = ${product}</p>`;
// resultHTML += `<p>القسمة: ${num1} ÷ ${num2} = ${quotient}</p>`;

// // and print it inside my div math-banner
// document.getElementById("operators").innerHTML = resultHTML;

//  I wrote conditionals inside script in signup.html


//  Loops I wante to write with while loop to print the numbers from 1 to 10.

let i = 1
while(i < 11){
    console.log(i++)
}


//  Event Handling

//  change the background image because my website already has a background image  
//  I want to create an arry that contains image names to change 
// the background to another image when you click

let img = ['background1', 'flower', 'flower2', 'flower3', 'body']
let index =0

function changeBackground(){
    
        document.body.style.backgroundImage = "url('images/"+img[index]+".jpeg')";
        index = (1 + index)%img.length
}

//  I wrote Form Validation email field is not empty inside script in signup.html

