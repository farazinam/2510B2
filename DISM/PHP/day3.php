<?php 
// Scalar 
// $name = "Ali";
$age = 23;
$height = 5.7;
$isAllowed = true;

//Compound
// Array
$arrayName = array("A", "B", "C");
$array = [2,4,6,8,10];
// echo $array[2];
// echo $arrayName[2];
// Object

//Special
// NULL
$address = null;
// var_dump($address);

// Resource
$file = fopen('demo.txt', 'r');
// var_dump($file);
// echo $file;


//Classes and Object

$name = "Ali";

//class
class Student {
    public $name = "Haris";
    public $age = 22;
    public $city = "Karachi";
}

$std = new Student(); //object
// echo $std->name;
// echo $std->age;
// echo $name;

// data with datatype
// var_dump($name);


//String Methods

$center = "Aptech Learning";
echo strlen($center);
echo "<br>";
echo str_word_count($center);
echo "<br>";
echo strtoupper($center);
echo "<br>";
echo strtolower($center);
echo "<br>";
$greet = "I Love JS";
echo str_replace("JS", "PHP", $greet);

echo "<hr>";

//Math Methods
$num1 = -2.9;
echo abs($num1);

$num2 = 3.6;
echo round($num2);

echo min(2,6,3,9,5,1);
echo max(2,6,3,9,5,1);

echo sqrt(25);

echo rand(1,10);
echo "<br>";

define("SiteName", "PHPWebsite");
echo SiteName;

echo "<hr>";

//Magic Constant
echo __DIR__;
echo "<br>";
echo __LINE__;
echo "<br>";
echo __FILE__;

class Employee {
    public $name = "Hassan";

    function earn(){
        echo __FUNCTION__;
        echo __CLASS__;
        echo __METHOD__;
    }
}

$emp = new Employee();
echo $emp->name;
echo "<br>";
$emp->earn();

$name123 = "ali";
// $my-name = "ahmed";


?>