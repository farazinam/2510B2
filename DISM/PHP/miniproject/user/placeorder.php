<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include("../admin/config.php");
require '../vendor/autoload.php';
session_start();

$getProID = $_GET["id"];
$userID = $_SESSION['userSession'] ?? null;

if(!$userID == null){

// Use PHPMailer classes

$sel = "SELECT * FROM `product` WHERE `product_id` = '$getProID'";
$q = mysqli_query($conn, $sel);

$fetch = mysqli_fetch_assoc($q);

$pn = $fetch['product_name'];
$pp = $fetch['product_price'];
$pd = $fetch['product_description'];

$customeremail = $_SESSION['emailSession'];
$customername = $_SESSION['nameSession'];

$mail = new PHPMailer(true);

try {
    // SMTP server configuration
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';              // Gmail SMTP server
    $mail->SMTPAuth = true;
    $mail->Username = 'faraz_inam@aptechnorth.edu.pk';    // Your Gmail address
    $mail->Password = 'llua thju oozx knzz';       // Your Gmail App Password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = 587;

    // Recipients
    $mail->setFrom('faraz_inam@aptechnorth.edu.pk', 'Aptech Learning pakistan');
    $mail->addAddress($customeremail, $customername);

    // Email content
    $mail->isHTML(true);
    $mail->Subject = "Your Order has been Confirmed!";
    $mail->Body = "
        <h2>Dear {$customername},</h2>
        <p>Your order has been confirmed with the following details:</p>
        <ul>
            <li><strong>Product Name:</strong> {$pn}</li>
            <li><strong>Product Price:</strong> {$pp}</li>
            <li><strong>Product Description:</strong> {$pd}</li>
        </ul>
        <p>Thank you for shopping with us!</p>
    ";

    $mail->send();

    echo "<script>
            alert('Mail Sent');
            window.location.href = 'index.php';
          </script>";
} catch (Exception $e) {
    echo "<script>
            alert('Mailer Error: " . $mail->ErrorInfo . "');
            window.location.href = 'single-product.php';
          </script>";
}
}
else{
   echo "<script>
	alert('Please Login First');
	window.location.href = '../signin.php';
	</script>";
}
?>