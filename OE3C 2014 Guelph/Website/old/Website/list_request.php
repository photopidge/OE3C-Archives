<?php
if(isset($_POST['email'])) {
     
    // CHANGE THE TWO LINES BELOW
    $email_oe3c = "bad.leprechaun@gmail.com";
    $email_subject = "OE3C Mailing List ADD REQUEST";
     
     
    function died($error) {
        // your error code can go here
        echo "Sorry, but there was the following error with the form: ";
        echo $error."<br /><br />";
        echo "Please hit the back button and try again.<br /><br />";
        die();
    }
     
    // validation expected data exists
    if(!isset($_POST['email'])) {
        died('We are sorry, but there appears to be a problem with the form you submitted.');       
    }
     
    $email_user = $_POST['email']; // required
     
    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
  if(!preg_match($email_exp,$email_user)) {
    $error_message .= 'The Email Address you entered does not appear to be valid.<br />';
  }
  if(strlen($error_message) > 0) {
    died($error_message);
  }
    $email_message = "Thank you. You have successfully joined the OE3C 2014 update and reminder mailing list with the following address: $email_user\n";
     
    function clean_string($string) {
      $bad = array("content-type","to:","cc:","href");
      return str_replace($bad,"",$string);
    }
     
// create email headers
$headers = 'From: '.$email_oe3c."\r\n".
'Reply-To: '.$email_oe3c."\r\n" . 'Bcc: '.$email_oe3c. "\r\n";
'X-Mailer: PHP/' . phpversion();
@mail($email_user, $email_subject, $email_message, $headers);  
?>
 
<!-- place your own success html below -->
 
Thank you. You should receive a confirmation email shortly.
 
<?php
}
die();
?>