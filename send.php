<?php
/* Set e-mail recipient */
$myemail = "mhorn918@gmail.com";

/* Check all form inputs using check_input function */
$name = $_POST['name'];
$subject = "the subject line";
$email = $_POST['email'];
$phone = $_POST['phone'];

/* Let's prepare the message for the e-mail */
$message = "

Name: $name
E-mail: $email
Subject: $subject

Phone:
$phone

";

/* Send the message using mail() function */
mail($myemail, $subject, $message);

?>