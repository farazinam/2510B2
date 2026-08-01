<?php
// Global VS Local Vatiable 

// Local Variable 
//  function local(){
//     $name = "Ahmed";
//     echo $name;
//  }

//  local();  // Ahmed
 // echo $name; // this is not possible due to local variable

// $name = "Ahsan";

// function _global(){
//     global $name;
//     echo $name;
// }

// _global(); //Ahsan
// echo $name; //Ahsan


// --- Function Parameter

// function paraFunction($n){
//     echo "Welcome " . $n;
// }

// paraFunction("Hassan");

// echo "<br>";

// Rugular Expression
// $str = "Welcome PHP";

// echo preg_match("/PHP/", $str);

// if(preg_match("/Wel/", $str)){
//     echo "Matched";
// }
// else{
//     echo "Not Matched";
// }


// Operators

// 1. Unary Opr
    // Inc/Dec Opr

// 2. Binary Opr
    // Arithmetic Opr
    // Assignment
    // Comparison/Relational Opr
    // Logical Opr
    // String Opr

// 3. Ternaro Opr
    // ? :
    // ??


// 1. Unary Opr
    // Inc/Dec Opr
$num1 = 10;
echo $num1;

echo $num1--;
echo $num1;

// 2. Binary Opr
    // Arithmetic Opr (+, -, *, /, %, **)
  $n1 = 8;
  $n2 = 5;
  echo $n1 + $n2 . "<br>"; //13 
  echo $n1 - $n2 . "<br>";  //3
  echo $n1 * $n2 . "<br>";  //40
  echo $n1 / $n2 . "<br>";  //1.6
  echo $n1 % $n2 . "<br>";  //3
  echo $n1 ** $n2 . "<br>";  //

// Assignment (+=, -=, *=, /=, %=, **=)

$a1 = 4;
$a2 = 6;

echo $a1;
echo $a2;

echo ($a1 *= $a2); //

echo $a1;
echo $a2;

 ?>