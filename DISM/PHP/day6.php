<?php
//Array

//Sigle Dimentional

$a = array(2,4,6,8);
$b = [1,3,5,7];

// echo $a[0];
// echo $a[1];
// echo $a[2];
// echo $a[3];

// foreach($a as $elem){
//     echo $elem . "<br>";
// }


//Multi-dimentional Array
$multi = [
    ["A", "B", "C", "D"],
    [2,4,6,8],
    [5.9, 6.1, 5.8, 5.5]
];

// echo $multi[1][2];

// foreach($multi as $row){
//     foreach($row as $col){
//         echo $col;
//     }
//     echo "<br>";
// }

//Associative Array
$assoc = [
    "name" => "Ali",
    "age" => 22,
    "city" => "Karachi"
];

// echo $assoc["name"];
// echo $assoc["age"];
// echo $assoc["city"];

// foreach($assoc as $key => $value){
//     echo $key . ": " . $value . "<br>";
// }
?>