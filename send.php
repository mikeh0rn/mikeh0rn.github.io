<?php

$q1=$_POST['q1'];
$q2=$_POST['q2'];
$q3=$_POST['q3'];
$q4=$_POST['q4'];

$to_email = 'mhorn918@gmail.com';
$subject = '$q1 $q2 $q3 $4';
$message = 'This mail is sent using the PHP mail function';
// $headers = 'From: you@you.com';

$headers = array("From: mikelaurencehorn@gmail.com",
    "Reply-To: mikelaurencehorn@gmail.com",
    "X-Mailer: PHP/" . PHP_VERSION
);
$headers = implode("\r\n", $headers);

mail($to_email,$subject,$message,$headers);
?>
