<?php 
//Comparison Opr (==, ===, <, <=, >, >=, !- , !==)

$x = 10;
$y = 5;

// echo $x != $y;
// echo $x > $y;
// echo $x < $y;
// echo $x == $y;

//string Opr
// $fn = "Faraz";
// $ln = "Inam";

// echo $fn . $ln;
// echo $fn .= $ln;

// $name;

// $res = $name ?? "Guest";
// echo $res;

// $name ? "Hello" : "Good Bye";

//Conditional
// $age = 17;
// if($age >= 18){
//     echo "You are Eligible";
// }
// else{
//     echo "You are NOT Eligible";
// }

// $per = 79;
// if($per >= 80 && $per <= 100){
//     echo "A+";
// }
// else if($per >= 70 && $per <= 79){
//     echo "A";
// }

//Swich Case
// $fruits = "mangoes";
// switch ($fruits) {
//     case 'apple':
//         echo "Apples are 350 Per KG";
//         break;
//     case 'mango':
//         echo "mangoes are 250 Per KG";
//         break;
//     case 'orange':
//         echo "Oranges are 350 Per Dozen";
//         break;
//     default:
//         echo "This Fruit is NOT available right now";
//         break;
// }

//Loops
//For
//While
//Do while

// for($i = 1; $i <= 10; $i++){
//     echo $i . "<br>";
// }

// for($i = 0; $i <= 10; $i = $i + 2){
//     echo $i . "<br>";
// }

// for($i = 1; $i <= 10; $i = $i + 2){
//     echo $i . "<br>";
// }

// for($i = 1; $i <= 10; $i++){
//     for($j = 1; $j < $i; $j++){
//         echo "*";
//     }
//     echo "<br>";
// }

// $x = 1;
// while($x <= 10){
//     echo $x;
//     $x++;
// }

// $x = 1;
// while($x < 1){
//     echo $x;
//     $x++;
// }

// $y = 1;
// do{
//     echo $y;
//     $y++;
// }
// while($y < 1);


//Jump Statement

//break
for($i = 1; $i <= 10; $i++){
    if($i == 7){
        break;
    }
    echo $i . "<br>";
}

//continue
for($i = 1; $i <= 10; $i++){
    // if($i == 7 || $i == 8){
    if($i > 3 && $i < 9){
        continue;
    }
    echo $i . "<br>";
}


//Array
$ar = [2,4,6,8,10];

echo $ar[0];
echo $ar[1];
echo $ar[2];
echo $ar[3];

for($i = 0; $i < count($ar); $i++){
    echo $ar[$i];
}

foreach($ar as $even){
    echo $even;
}
?>