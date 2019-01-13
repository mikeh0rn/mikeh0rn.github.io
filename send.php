<?
$q1=$_POST['q1'];
$q2=$_POST['q2'];
$q3=$_POST['q3'];
$q4=$_POST['q4'];
$to = "mhorn918@gmail.com";
$subject = "Hi Mike $q3";
$message= "$q1 $q2 :\n\n: $q1\n\n: $q2\n\nEmail: $q3\n\nTel: $q4\n";
mail($to,$subject,$message);
header("Location:index.php");
?>