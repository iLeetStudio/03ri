<?php
function ValidateEmail($email)
{
   $pattern = '/^([0-9a-z]([-.\w]*[0-9a-z])*@(([0-9a-z])+([-\w]*[0-9a-z])*\.)+[a-z]{2,6})$/i';
   return preg_match($pattern, $email);
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['formid'] == 'form3')
{
   $mailto = '03ri@mail.ru';
   $mailfrom = isset($_POST['email']) ? $_POST['email'] : $mailto;
   $subject = 'Survey';
   $message = 'Values submitted from web site form:';
   $success_url = './rateon.php';
   $error_url = './rateon.php';
   $error = '';
   $eol = "\n";
   $max_filesize = isset($_POST['filesize']) ? $_POST['filesize'] * 1024 : 1024000;
   $boundary = md5(uniqid(time()));

   $header  = 'From: '.$mailfrom.$eol;
   $header .= 'Reply-To: '.$mailfrom.$eol;
   $header .= 'MIME-Version: 1.0'.$eol;
   $header .= 'Content-Type: multipart/mixed; boundary="'.$boundary.'"'.$eol;
   $header .= 'X-Mailer: PHP v'.phpversion().$eol;
   if (!ValidateEmail($mailfrom))
   {
      $error .= "The specified email address is invalid!\n<br>";
   }

   if (!empty($error))
   {
      $errorcode = file_get_contents($error_url);
      $replace = "##error##";
      $errorcode = str_replace($replace, $error, $errorcode);
      echo $errorcode;
      exit;
   }

   $internalfields = array ("submit", "reset", "send", "filesize", "formid", "captcha_code", "recaptcha_challenge_field", "recaptcha_response_field");
   $message .= $eol;
   $message .= "IP Address : ";
   $message .= $_SERVER['REMOTE_ADDR'];
   $message .= $eol;
   foreach ($_POST as $key => $value)
   {
      if (!in_array(strtolower($key), $internalfields))
      {
         if (!is_array($value))
         {
            $message .= ucwords(str_replace("_", " ", $key)) . " : " . $value . $eol;
         }
         else
         {
            $message .= ucwords(str_replace("_", " ", $key)) . " : " . implode(",", $value) . $eol;
         }
      }
   }

   $body  = 'This is a multi-part message in MIME format.'.$eol.$eol;
   $body .= '--'.$boundary.$eol;
   $body .= 'Content-Type: text/plain; charset=ISO-8859-1'.$eol;
   $body .= 'Content-Transfer-Encoding: 8bit'.$eol;
   $body .= $eol.stripslashes($message).$eol;
   if (!empty($_FILES))
   {
       foreach ($_FILES as $key => $value)
       {
          if ($_FILES[$key]['error'] == 0 && $_FILES[$key]['size'] <= $max_filesize)
          {
             $body .= '--'.$boundary.$eol;
             $body .= 'Content-Type: '.$_FILES[$key]['type'].'; name='.$_FILES[$key]['name'].$eol;
             $body .= 'Content-Transfer-Encoding: base64'.$eol;
             $body .= 'Content-Disposition: attachment; filename='.$_FILES[$key]['name'].$eol;
             $body .= $eol.chunk_split(base64_encode(file_get_contents($_FILES[$key]['tmp_name']))).$eol;
          }
      }
   }
   $body .= '--'.$boundary.'--'.$eol;
   if ($mailto != '')
   {
      mail($mailto, $subject, $body, $header);
   }
   header('Location: '.$success_url);
   exit;
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['formid'] == 'form1')
{
   $mailto = '03ri@mail.ru';
   $mailfrom = isset($_POST['email']) ? $_POST['email'] : $mailto;
   $subject = 'Сообщение с сайта';
   $message = 'Вам пришло сообщение';
   $success_url = './smssent.php';
   $error_url = './smsnotsent.php';
   $error = '';
   $eol = "\n";
   $max_filesize = isset($_POST['filesize']) ? $_POST['filesize'] * 1024 : 1024000;
   $boundary = md5(uniqid(time()));

   $header  = 'From: '.$mailfrom.$eol;
   $header .= 'Reply-To: '.$mailfrom.$eol;
   $header .= 'MIME-Version: 1.0'.$eol;
   $header .= 'Content-Type: multipart/mixed; boundary="'.$boundary.'"'.$eol;
   $header .= 'X-Mailer: PHP v'.phpversion().$eol;
   if (!ValidateEmail($mailfrom))
   {
      $error .= "The specified email address is invalid!\n<br>";
   }

   if (!empty($error))
   {
      $errorcode = file_get_contents($error_url);
      $replace = "##error##";
      $errorcode = str_replace($replace, $error, $errorcode);
      echo $errorcode;
      exit;
   }

   $internalfields = array ("submit", "reset", "send", "filesize", "formid", "captcha_code", "recaptcha_challenge_field", "recaptcha_response_field");
   $message .= $eol;
   $message .= "IP Address : ";
   $message .= $_SERVER['REMOTE_ADDR'];
   $message .= $eol;
   foreach ($_POST as $key => $value)
   {
      if (!in_array(strtolower($key), $internalfields))
      {
         if (!is_array($value))
         {
            $message .= ucwords(str_replace("_", " ", $key)) . " : " . $value . $eol;
         }
         else
         {
            $message .= ucwords(str_replace("_", " ", $key)) . " : " . implode(",", $value) . $eol;
         }
      }
   }

   $body  = 'This is a multi-part message in MIME format.'.$eol.$eol;
   $body .= '--'.$boundary.$eol;
   $body .= 'Content-Type: text/plain; charset=UTF-8'.$eol;
   $body .= 'Content-Transfer-Encoding: 8bit'.$eol;
   $body .= $eol.stripslashes($message).$eol;
   if (!empty($_FILES))
   {
       foreach ($_FILES as $key => $value)
       {
          if ($_FILES[$key]['error'] == 0 && $_FILES[$key]['size'] <= $max_filesize)
          {
             $body .= '--'.$boundary.$eol;
             $body .= 'Content-Type: '.$_FILES[$key]['type'].'; name='.$_FILES[$key]['name'].$eol;
             $body .= 'Content-Transfer-Encoding: base64'.$eol;
             $body .= 'Content-Disposition: attachment; filename='.$_FILES[$key]['name'].$eol;
             $body .= $eol.chunk_split(base64_encode(file_get_contents($_FILES[$key]['tmp_name']))).$eol;
          }
      }
   }
   $body .= '--'.$boundary.'--'.$eol;
   if ($mailto != '')
   {
      mail($mailto, $subject, $body, $header);
   }
   header('Location: '.$success_url);
   exit;
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>О нас</title>
<meta name="generator" content="WYSIWYG Web Builder 9 - http://www.wysiwygwebbuilder.com">
<style type="text/css">
html, body
{
   height: 100%;
}
div#space
{
   width: 1px;
   height: 50%;
   margin-bottom: -1407px;
   float:left
}
div#container
{
   width: 1020px;
   height: 2815px;
   margin: 0 auto;
   position: relative;
   clear: left;
}
body
{
   background-color: #FFFFFF;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
   margin: 0;
   padding: 0;
}
</style>
<style type="text/css">
a
{
   color: #0000FF;
   text-decoration: underline;
}
a:visited
{
   color: #800080;
}
a:active
{
   color: #FF0000;
}
a:hover
{
   color: #0000FF;
   text-decoration: underline;
}
</style>
<style type="text/css">
#Image1
{
   border: 0px #000000 solid;
}
#Image3
{
   border: 0px #000000 solid;
}
#Image4
{
   border: 0px #000000 solid;
}
#Image5
{
   border: 0px #000000 solid;
}
#Image6
{
   border: 0px #000000 solid;
}
#Image7
{
   border: 0px #000000 solid;
}
#Image8
{
   border: 0px #000000 solid;
}
#Image9
{
   border: 0px #000000 solid;
}
#Image11
{
   border: 0px #000000 solid;
}
#Image10
{
   border: 0px #000000 solid;
}
#wb_Text2 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: center;
}
#wb_Text2 div
{
   text-align: center;
}
#Image13
{
   border: 0px #000000 solid;
}
#Image14
{
   border: 0px #000000 solid;
}
#wb_Text8 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text8 div
{
   text-align: left;
}
#wb_Text9 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text9 div
{
   text-align: left;
}
#wb_Text13 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text13 div
{
   text-align: left;
}
#wb_Text16 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text16 div
{
   text-align: left;
}
#wb_Text3 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text3 div
{
   text-align: left;
}
#wb_Text4 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text4 div
{
   text-align: left;
}
#Image12
{
   border: 0px #000000 solid;
}
#wb_Text5 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text5 div
{
   text-align: left;
}
#wb_Text6 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text6 div
{
   text-align: left;
}
#Image15
{
   border: 0px #000000 solid;
}
#wb_Text7 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text7 div
{
   text-align: left;
}
#Image16
{
   border: 0px #000000 solid;
}
#wb_Text10 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text10 div
{
   text-align: left;
}
#Image18
{
   border: 0px #000000 solid;
}
#Image19
{
   border: 0px #000000 solid;
}
#wb_Text11 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text11 div
{
   text-align: left;
}
#wb_Text12 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text12 div
{
   text-align: left;
}
#wb_Text15 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text15 div
{
   text-align: left;
}
#wb_Form3
{
   background-color: #FAFAFA;
   border: 0px #000000 solid;
}
#wb_Text17 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text17 div
{
   text-align: left;
}
#wb_Text18 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text18 div
{
   text-align: left;
}
#wb_Text19 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text19 div
{
   text-align: left;
}
#wb_Text20 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text20 div
{
   text-align: left;
}
#Button3
{
   border: 1px #A9A9A9 solid;
   background-color: #F0F0F0;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
}
#Image2
{
   border: 0px #000000 solid;
}
#Image17
{
   border: 0px #000000 solid;
}
#Image21
{
   border: 0px #000000 solid;
}
#Image22
{
   border: 0px #000000 solid;
}
#Image25
{
   border: 0px #000000 solid;
}
#Image26
{
   border: 0px #000000 solid;
}
#Image23
{
   border: 0px #000000 solid;
}
#wb_Form1
{
   background-color: #FFFFFF;
   border: 0px #000000 solid;
}
#Editbox1
{
   border: 1px #A9A9A9 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   vertical-align: middle;
}
#Editbox2
{
   border: 1px #A9A9A9 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   vertical-align: middle;
}
#TextArea1
{
   border: 1px #A9A9A9 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   resize: none;
}
#Editbox3
{
   border: 1px #A9A9A9 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   vertical-align: middle;
}
#Button1
{
   border: 1px #A9A9A9 solid;
   background-color: #F0F0F0;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
}
#TabMenu1
{
   text-align: left;
   float: left;
   margin: 0;
   width: 100%;
   font-family: Arial;
   font-size: 13px;
   font-weight: normal;
   border-bottom: 1px solid #C0C0C0;
   list-style-type: none;
   padding: 15px 0px 4px 10px;
   overflow: hidden;
}
#TabMenu1 li
{
   float: left;
}
#TabMenu1 li a.active, #TabMenu1 li a:hover.active
{
   background-color: #000000;
   color: #FFFFFF;
   position: relative;
   font-weight: normal;
   text-decoration: none;
   z-index: 2;
}
#TabMenu1 li a
{
   padding: 5px 14px 8px 14px;
   border: 1px solid #C0C0C0;
   border-top-left-radius: 5px;
   border-top-right-radius: 5px;
   background-color: #FFFFFF;
   color: #000000;
   margin-right: 3px;
   text-decoration: none;
   border-bottom: none;
   position: relative;
   top: 0;
   -webkit-transition: 200ms all linear;
   -moz-transition: 200ms all linear;
   -ms-transition: 200ms all linear;
   transition: 200ms all linear;
}
#TabMenu1 li a:hover
{
   background: #FFFFFF;
   color: #000000;
   font-weight: normal;
   text-decoration: none;
   top: -4px;
}
#wb_Text1 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: center;
}
#wb_Text1 div
{
   text-align: center;
}
#wb_Text14 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text14 div
{
   text-align: left;
}
#wb_Text21 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text21 div
{
   text-align: left;
}
#wb_Text22 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text22 div
{
   text-align: left;
}
#wb_Text23 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text23 div
{
   text-align: left;
}
#wb_Text24 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text24 div
{
   text-align: left;
}
</style>
<script type="text/javascript">
function ValidateФорма_связи(theForm)
{
   var regexp;
   regexp = /^([0-9a-z]([-.\w]*[0-9a-z])*@(([0-9a-z])+([-\w]*[0-9a-z])*\.)+[a-z]{2,6})$/i;
   if (theForm.Editbox2.value.length != 0 && !regexp.test(theForm.Editbox2.value))
   {
      alert("Нет E-mail");
      theForm.Editbox2.focus();
      return false;
   }
   return true;
}
</script>
</head>
<body>
<div id="space"><br></div>
<div id="container">
<img src="images/img0005.jpg" id="Banner1" alt="&#1057;&#1082;&#1086;&#1088;&#1072;&#1103; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100; &#1075;. &#1053;&#1072;&#1079;&#1088;&#1072;&#1085;&#1100;" style="position:absolute;left:0px;top:0px;width:917px;height:80px;border-width:0;z-index:14;">
<div id="wb_Image1" style="position:absolute;left:916px;top:0px;width:110px;height:81px;z-index:15;">
<img src="images/image34094440_2.jpg" id="Image1" alt="" style="width:110px;height:81px;"></div>
<div id="wb_Image3" style="position:absolute;left:0px;top:160px;width:150px;height:50px;z-index:16;">
<a href="http://www.ingushetia.ru" target="_blank" title="&#1040;&#1076;&#1084;&#1080;&#1085;&#1080;&#1089;&#1090;&#1088;&#1072;&#1094;&#1080;&#1103; &#1087;&#1088;&#1077;&#1079;&#1080;&#1076;&#1077;&#1085;&#1090;&#1072; &#1056;&#1048;"><img src="images/ingushetia.jpg" id="Image3" alt="" style="width:150px;height:50px;"></a></div>
<div id="wb_Image4" style="position:absolute;left:0px;top:379px;width:150px;height:75px;z-index:17;">
<a href="http://arapkhanova-m.livejournal.com" target="_blank" title="&#1041;&#1083;&#1086;&#1075; &#1084;&#1080;&#1085;&#1080;&#1089;&#1090;&#1088;&#1072; &#1052;&#1047;&#1056;&#1048; &#1040;&#1088;&#1072;&#1087;&#1093;&#1072;&#1085;&#1086;&#1074;&#1086;&#1081; &#1052;.&#1071;."><img src="images/livejournal-logo-1.jpg" id="Image4" alt="" style="width:150px;height:75px;"></a></div>
<div id="wb_Image5" style="position:absolute;left:0px;top:609px;width:150px;height:74px;z-index:18;">
<a href="http://www.06fss.ru" title="&#1060;&#1086;&#1085;&#1076; &#1089;&#1086;&#1094;&#1080;&#1072;&#1083;&#1100;&#1085;&#1086;&#1075;&#1086; &#1089;&#1090;&#1088;&#1072;&#1093;&#1086;&#1074;&#1072;&#1085;&#1080;&#1103;"><img src="images/logo4.jpg" id="Image5" alt="" style="width:150px;height:74px;"></a></div>
<div id="wb_Image6" style="position:absolute;left:0px;top:262px;width:150px;height:50px;z-index:19;">
<a href="http://www.parlamentri.ru" target="_blank" title="&#1055;&#1072;&#1088;&#1083;&#1072;&#1084;&#1077;&#1085;&#1090; &#1056;&#1048;"><img src="images/narsobr%20%281%29.jpg" id="Image6" alt="" style="width:150px;height:50px;"></a></div>
<div id="wb_Image7" style="position:absolute;left:0px;top:211px;width:150px;height:50px;z-index:20;">
<a href="http://www.pravitelstvori.ru" target="_blank" title="&#1055;&#1088;&#1072;&#1074;&#1080;&#1090;&#1077;&#1083;&#1100;&#1089;&#1090;&#1074;&#1086; &#1056;&#1048;"><img src="images/pravitelstvo.jpg" id="Image7" alt="" style="width:150px;height:50px;"></a></div>
<div id="wb_Image8" style="position:absolute;left:0px;top:560px;width:150px;height:53px;z-index:21;">
<a href="http://06.rospotrebnadzor.ru" target="_blank" title="&#1056;&#1086;&#1087;&#1086;&#1090;&#1088;&#1077;&#1073;&#1085;&#1072;&#1076;&#1079;&#1086;&#1088;"><img src="images/rospotrebnadzor_logo.gif" id="Image8" alt="" style="width:150px;height:53px;"></a></div>
<div id="wb_Image9" style="position:absolute;left:0px;top:512px;width:150px;height:49px;z-index:22;">
<a href="http://06reg.roszdravnadzor.ru" target="_blank" title="&#1056;&#1086;&#1089;&#1079;&#1076;&#1088;&#1072;&#1074;&#1085;&#1072;&#1076;&#1079;&#1086;&#1088;"><img src="images/top_logo.gif" id="Image9" alt="" style="width:150px;height:49px;"></a></div>
<div id="wb_Image11" style="position:absolute;left:0px;top:455px;width:150px;height:56px;z-index:23;">
<a href="http://www.pfrf.ru/ot_ingush/" title="&#1055;&#1077;&#1085;&#1089;&#1080;&#1086;&#1085;&#1085;&#1099;&#1081; &#1092;&#1086;&#1085;&#1076; &#1056;&#1060; &#1087;&#1086; &#1056;&#1048;"><img src="images/33707836.jpg" id="Image11" alt="" style="width:150px;height:56px;"></a></div>
<div id="wb_Image10" style="position:absolute;left:0px;top:313px;width:150px;height:65px;z-index:24;">
<a href="http://minzdravri.ru" target="_blank" title="&#1052;&#1080;&#1085;&#1080;&#1089;&#1090;&#1077;&#1088;&#1089;&#1090;&#1074;&#1086; &#1079;&#1076;&#1088;&#1072;&#1074;&#1086;&#1086;&#1093;&#1088;&#1072;&#1085;&#1077;&#1085;&#1080;&#1103; &#1056;&#1048;"><img src="images/Logo_MinZdrav_var1-01.jpg" id="Image10" alt="" style="width:150px;height:65px;"></a></div>
<div id="wb_Text2" style="position:absolute;left:97px;top:14px;width:138px;height:64px;text-align:center;z-index:25;">
<span style="color:#FFFFFF;font-family:Arial;font-size:13px;">386140 РИ г. Назрань, а/о Насыр-Корт, ул. Бакинская,7 &quot;а&quot;</span></div>
<div id="wb_Image13" style="position:absolute;left:841px;top:0px;width:72px;height:72px;z-index:26;">
<img src="images/4515.png" id="Image13" alt="" style="width:72px;height:72px;"></div>
<div id="wb_Image14" style="position:absolute;left:1px;top:0px;width:69px;height:75px;z-index:27;">
<img src="images/emblema_minzdravsocrazvitiya.png45.png" id="Image14" alt="" style="width:69px;height:75px;"></div>
<div id="wb_Text8" style="position:absolute;left:0px;top:697px;width:157px;height:15px;z-index:28;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:13px;"><strong>ВАШЕ МНЕНИЕ О САЙТЕ</strong></span></div>
<div id="wb_Text9" style="position:absolute;left:859px;top:142px;width:157px;height:15px;z-index:29;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:13px;"><strong>НАПИШИТЕ НАМ</strong></span></div>
<div id="wb_Text13" style="position:absolute;left:431px;top:765px;width:250px;height:2px;z-index:30;text-align:left;">
&nbsp;</div>
<div id="wb_Text16" style="position:absolute;left:27px;top:83px;width:976px;height:16px;z-index:31;text-align:left;">
<span style="color:#000000;font-family:'Lucida Console';font-size:16px;"><strong>ГОСУДАРСТВЕННОЕ БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ &quot;РЕСПУБЛИКАНСКАЯ СТАНЦИЯ СКОРОЙ МЕДИЦИНСКОЙ ПОМОЩИ&quot;</strong></span></div>
<div id="wb_Text3" style="position:absolute;left:165px;top:250px;width:681px;height:190px;z-index:32;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">20 лет Ингушетии. Станция скорой помощи на 30 тысяч вызовов в год<br>Открытие современной станции скорой медицинской помощи в Назрани состоялось в начале 2012 года.<br>Объект возведен в рамках федеральной целевой программы социально-экономического развития Ингушетии на 2010-2016 годы. На строительство станции было выделено около 180 млн. рублей.<br>В течение 10 месяцев была построена станция, рассчитанная на 30 тысяч вызовов в год, с учётом населённости города Назрани, ближайших сельских поселений и близкого расположения федеральной автотрассы.<br>При строительстве применялись материалы, которые впоследствии могут подвергаться дезинфекции, стерилизации, обработке.</span></div>
<div id="wb_Text4" style="position:absolute;left:326px;top:739px;width:250px;height:32px;z-index:33;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;"><br> </span></div>
<div id="wb_Image12" style="position:absolute;left:553px;top:462px;width:277px;height:189px;z-index:34;">
<img src="images/IMG_62450010b300i%20%281%29.jpg" id="Image12" alt="" style="width:277px;height:189px;"></div>
<div id="wb_Text5" style="position:absolute;left:165px;top:445px;width:375px;height:209px;z-index:35;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">&#1063;&#1090;&#1086;&#1073;&#1099; &#1087;&#1086;&#1085;&#1103;&#1090;&#1100; &#1075;&#1083;&#1086;&#1073;&#1072;&#1083;&#1100;&#1085;&#1086;&#1089;&#1090;&#1100; &#1080; &#1079;&#1085;&#1072;&#1095;&#1080;&#1084;&#1086;&#1089;&#1090;&#1100; &#1101;&#1090;&#1086;&#1075;&#1086; &#0171;&#1085;&#1086;&#1074;&#1086;&#1089;&#1077;&#1083;&#1100;&#1103;&#0187; &#1076;&#1083;&#1103; &#1078;&#1080;&#1090;&#1077;&#1083;&#1077;&#1081; &#1053;&#1072;&#1079;&#1088;&#1072;&#1085;&#1080;, &#1053;&#1072;&#1079;&#1088;&#1072;&#1085;&#1086;&#1074;&#1089;&#1082;&#1086;&#1075;&#1086; &#1088;&#1072;&#1081;&#1086;&#1085;&#1072; &#1080; &#1089;&#1090;&#1086;&#1083;&#1080;&#1094;&#1099; &#1088;&#1077;&#1089;&#1087;&#1091;&#1073;&#1083;&#1080;&#1082;&#1080; &#1075;&#1086;&#1088;&#1086;&#1076;&#1072; &#1052;&#1072;&#1075;&#1072;&#1089;&#1072;, &#1076;&#1086;&#1089;&#1090;&#1072;&#1090;&#1086;&#1095;&#1085;&#1086; &#1086;&#1082;&#1091;&#1085;&#1091;&#1090;&#1100;&#1089;&#1103; &#1074; &#1087;&#1088;&#1086;&#1096;&#1083;&#1099;&#1077; &#1073;&#1091;&#1076;&#1085;&#1080; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080;. &#1045;&#1097;&#1077; &#1085;&#1077;&#1076;&#1072;&#1074;&#1085;&#1086; &#1089;&#1090;&#1072;&#1085;&#1094;&#1080;&#1103; &#1102;&#1090;&#1080;&#1083;&#1072;&#1089;&#1100; &#1074; &#1087;&#1088;&#1080;&#1089;&#1087;&#1086;&#1089;&#1086;&#1073;&#1083;&#1077;&#1085;&#1085;&#1086;&#1084; &#1079;&#1076;&#1072;&#1085;&#1080;&#1080; &#1074; &#1094;&#1077;&#1085;&#1090;&#1088;&#1077; &#1053;&#1072;&#1079;&#1088;&#1072;&#1085;&#1080;. &#1053;&#1072; &#1090;&#1077;&#1088;&#1088;&#1080;&#1090;&#1086;&#1088;&#1080;&#1080;, &#1082;&#1086;&#1090;&#1086;&#1088;&#1091;&#1102; &#1086;&#1073;&#1089;&#1083;&#1091;&#1078;&#1080;&#1074;&#1072;&#1083;&#1080; &#1074;&#1089;&#1077;&#1075;&#1086; 3 &#1073;&#1088;&#1080;&#1075;&#1072;&#1076;&#1099; &#1084;&#1077;&#1076;&#1080;&#1082;&#1086;&#1074; &#1080; 3 &#1072;&#1074;&#1090;&#1086;&#1084;&#1086;&#1073;&#1080;&#1083;&#1103;, &#1087;&#1088;&#1086;&#1078;&#1080;&#1074;&#1072;&#1083;&#1086; &#1086;&#1082;&#1086;&#1083;&#1086; 230 &#1090;&#1099;&#1089;. &#1095;&#1077;&#1083;&#1086;&#1074;&#1077;&#1082;.<br>&#1057;&#1077;&#1075;&#1086;&#1076;&#1085;&#1103; &#1056;&#1077;&#1089;&#1087;&#1091;&#1073;&#1083;&#1080;&#1082;&#1072;&#1085;&#1089;&#1082;&#1072;&#1103; &#1089;&#1090;&#1072;&#1085;&#1094;&#1080;&#1103; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1048;&#1085;&#1075;&#1091;&#1096;&#1077;&#1090;&#1080;&#1080; &#1085;&#1077; &#1080;&#1084;&#1077;&#1077;&#1090; &#1089;&#1077;&#1073;&#1077; </span></div>
<div id="wb_Text6" style="position:absolute;left:470px;top:749px;width:375px;height:209px;z-index:36;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">&#1057;&#1091;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1086; &#1080;&#1079;&#1084;&#1077;&#1085;&#1080;&#1083;&#1089;&#1103; &#1072;&#1074;&#1090;&#1086;&#1087;&#1072;&#1088;&#1082;, &#1080; &#1074; &#1082;&#1072;&#1095;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1086;&#1084;, &#1080; &#1074; &#1082;&#1086;&#1083;&#1080;&#1095;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1086;&#1084; &#1086;&#1090;&#1085;&#1086;&#1096;&#1077;&#1085;&#1080;&#1080;: &#1085;&#1072; &#1083;&#1080;&#1085;&#1080;&#1102; &#1074;&#1099;&#1093;&#1086;&#1076;&#1103;&#1090; &#1085;&#1086;&#1074;&#1099;&#1077;, &#1086;&#1090;&#1083;&#1080;&#1095;&#1085;&#1086; &#1086;&#1089;&#1085;&#1072;&#1097;&#1077;&#1085;&#1085;&#1099;&#1077;<br>&#1082;&#1072;&#1088;&#1077;&#1090;&#1099; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080;, &#1074; &#1080;&#1093; &#1095;&#1080;&#1089;&#1083;&#1077; &#1072;&#1074;&#1090;&#1086;&#1084;&#1086;&#1073;&#1080;&#1083;&#1080; &#1084;&#1072;&#1088;&#1086;&#1082; &#0171;Fiat&#0187; &#1080; &#0171;Ford&#0187;. &#1042; &#1086;&#1073;&#1097;&#1077;&#1081; &#1089;&#1083;&#1086;&#1078;&#1085;&#1086;&#1089;&#1090;&#1080; 10 &#1084;&#1072;&#1096;&#1080;&#1085; &#1088;&#1072;&#1073;&#1086;&#1090;&#1072;&#1102;&#1090; &#1085;&#1072; &#1083;&#1080;&#1085;&#1080;&#1080;, &#1080; 5 &#1085;&#1072;&#1093;&#1086;&#1076;&#1103;&#1090;&#1089;&#1103; &#1074; &#1088;&#1077;&#1079;&#1077;&#1088;&#1074;&#1077;. &#1053;&#1072; &#1073;&#1072;&#1079;&#1077; &#1087;&#1088;&#1077;&#1082;&#1088;&#1072;&#1089;&#1085;&#1086; &#1086;&#1073;&#1086;&#1088;&#1091;&#1076;&#1086;&#1074;&#1072;&#1085;&#1085;&#1086;&#1075;&#1086; &#1091;&#1095;&#1077;&#1073;&#1085;&#1086;&#1075;&#1086; &#1082;&#1083;&#1072;&#1089;&#1089;&#1072; &#1085;&#1072;&#1095;&#1072;&#1083; &#1088;&#1072;&#1073;&#1086;&#1090;&#1072;&#1090;&#1100; &#1091;&#1095;&#1077;&#1073;&#1085;&#1086;-&#1084;&#1077;&#1090;&#1086;&#1076;&#1080;&#1095;&#1077;&#1089;&#1082;&#1080;&#1081; &#1094;&#1077;&#1085;&#1090;&#1088;, &#1075;&#1076;&#1077; &#1074;&#1088;&#1072;&#1095;&#1080; &#1080; &#1092;&#1077;&#1083;&#1100;&#1076;&#1096;&#1077;&#1088;&#1099; (&#1087;&#1088;&#1080;&#1095;&#1077;&#1084; &#1085;&#1077; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1089; &#1101;&#1090;&#1086;&#1081; &#1089;&#1090;&#1072;&#1085;&#1094;&#1080;&#1080;, &#1085;&#1086; &#1090;&#1072;&#1082;&#1078;&#1077; &#1080;&#1079; &#1076;&#1088;&#1091;&#1075;&#1080;&#1093; &#1051;&#1055;&#1059; &#1088;&#1077;&#1089;&#1087;&#1091;&#1073;&#1083;&#1080;&#1082;&#1080;) &#1084;&#1086;&#1075;&#1091;&#1090; &#1087;&#1086;&#1074;&#1099;&#1089;&#1080;&#1090;&#1100; &#1082;&#1074;&#1072;&#1083;&#1080;&#1092;&#1080;&#1082;&#1072;&#1094;&#1080;&#1102; &#1089; &#1087;&#1086;&#1089;&#1083;&#1077;&#1076;&#1091;&#1102;&#1097;&#1080;&#1084; &#1087;&#1086;&#1083;&#1091;&#1095;&#1077;&#1085;&#1080;&#1077;&#1084; </span></div>
<div id="wb_Image15" style="position:absolute;left:163px;top:751px;width:300px;height:200px;z-index:37;">
<img src="images/paste1.jpg" id="Image15" alt="" style="width:300px;height:200px;"></div>
<div id="wb_Text7" style="position:absolute;left:165px;top:1067px;width:678px;height:274px;z-index:38;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">&#1073;&#1086;&#1083;&#1077;&#1077; 250 &#1088;&#1072;&#1073;&#1086;&#1095;&#1080;&#1093; &#1084;&#1077;&#1089;&#1090;, &#1095;&#1090;&#1086; &#1086;&#1095;&#1077;&#1085;&#1100; &#1074;&#1072;&#1078;&#1085;&#1086; &#1076;&#1083;&#1103; &#1085;&#1072;&#1096;&#1077;&#1081; &#1088;&#1077;&#1089;&#1087;&#1091;&#1073;&#1083;&#1080;&#1082;&#1080;.<br>&#1052;&#1072;&#1096;&#1080;&#1085;&#1099; &#1076;&#1086;&#1086;&#1089;&#1085;&#1072;&#1097;&#1077;&#1085;&#1099; &#1085;&#1077;&#1086;&#1073;&#1093;&#1086;&#1076;&#1080;&#1084;&#1099;&#1084; &#1086;&#1073;&#1086;&#1088;&#1091;&#1076;&#1086;&#1074;&#1072;&#1085;&#1080;&#1077;&#1084;, &#1073;&#1088;&#1080;&#1075;&#1072;&#1076;&#1099; &#1091;&#1082;&#1086;&#1084;&#1087;&#1083;&#1077;&#1082;&#1090;&#1086;&#1074;&#1072;&#1085;&#1099; &#1089;&#1087;&#1077;&#1094;&#1086;&#1076;&#1077;&#1078;&#1076;&#1086;&#1081;, &#1091;&#1089;&#1090;&#1072;&#1085;&#1086;&#1074;&#1083;&#1077;&#1085;&#1099; &#1085;&#1072;&#1074;&#1080;&#1075;&#1072;&#1094;&#1080;&#1086;&#1085;&#1085;&#1099;&#1077; &#1089;&#1080;&#1089;&#1090;&#1077;&#1084;&#1099; &#1043;&#1051;&#1054;&#1053;&#1040;&#1057;&#1057;/GPS, &#1042; &#1087;&#1083;&#1072;&#1085;&#1072;&#1093; &#1088;&#1091;&#1082;&#1086;&#1074;&#1086;&#1076;&#1089;&#1090;&#1074;&#1072; &#1082;&#1086;&#1084;&#1087;&#1100;&#1102;&#1090;&#1077;&#1088;&#1080;&#1079;&#1072;&#1094;&#1080;&#1103; &#1087;&#1086;&#1076;&#1089;&#1090;&#1072;&#1085;&#1094;&#1080;&#1080; &#1080; &#1089;&#1086;&#1079;&#1076;&#1072;&#1085;&#1080;&#1077; &#1077;&#1076;&#1080;&#1085;&#1086;&#1081; &#1073;&#1072;&#1079;&#1099; &#1076;&#1072;&#1085;&#1085;&#1099;&#1093;, &#1089;&#1086;&#1079;&#1076;&#1072;&#1085;&#1080;&#1077; &#1089;&#1087;&#1077;&#1094;&#1080;&#1072;&#1083;&#1080;&#1079;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1085;&#1099;&#1093; &#1073;&#1088;&#1080;&#1075;&#1072;&#1076; &#0045; &#1082;&#1072;&#1088;&#1076;&#1080;&#1086;&#1083;&#1086;&#1075;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081;, &#1088;&#1077;&#1072;&#1085;&#1080;&#1084;&#1072;&#1094;&#1080;&#1086;&#1085;&#1085;&#1086;&#1081;, &#1087;&#1077;&#1076;&#1080;&#1072;&#1090;&#1088;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081;, &#1090;&#1088;&#1072;&#1074;&#1084;&#1072;&#1090;&#1086;&#1083;&#1086;&#1075;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081;, &#1075;&#1080;&#1085;&#1077;&#1082;&#1086;&#1083;&#1086;&#1075;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081;, &#1093;&#1080;&#1088;&#1091;&#1088;&#1075;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081;.<br>&#1054;&#1090;&#1082;&#1088;&#1099;&#1090;&#1080;&#1077; &#1089;&#1086;&#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1085;&#1086;&#1081; &#1089;&#1090;&#1072;&#1085;&#1094;&#1080;&#1080; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1074; &#1053;&#1072;&#1079;&#1088;&#1072;&#1085;&#1080; &#1089;&#1086;&#1089;&#1090;&#1086;&#1103;&#1083;&#1086;&#1089;&#1100; &#1074; &#1085;&#1072;&#1095;&#1072;&#1083;&#1077; 2012 &#1075;&#1086;&#1076;&#1072;.<br>&#1057;&#1082;&#1086;&#1088;&#1072;&#1103; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1072;&#1103; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100; - &#1074;&#1080;&#1076; &#1080; &#1089;&#1080;&#1089;&#1090;&#1077;&#1084;&#1072; &#1101;&#1082;&#1089;&#1090;&#1088;&#1077;&#1085;&#1085;&#1086;&#1081; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1073;&#1086;&#1083;&#1100;&#1085;&#1099;&#1084; &#1080; &#1087;&#1086;&#1089;&#1090;&#1088;&#1072;&#1076;&#1072;&#1074;&#1096;&#1080;&#1084; &#1087;&#1088;&#1080; &#1091;&#1075;&#1088;&#1086;&#1078;&#1072;&#1102;&#1097;&#1080;&#1093; &#1078;&#1080;&#1079;&#1085;&#1080; &#1080; &#1079;&#1076;&#1086;&#1088;&#1086;&#1074;&#1100;&#1102; &#1095;&#1077;&#1083;&#1086;&#1074;&#1077;&#1082;&#1072; &#1089;&#1086;&#1089;&#1090;&#1086;&#1103;&#1085;&#1080;&#1103;&#1093;, &#1090;&#1088;&#1072;&#1074;&#1084;&#1072;&#1093;, &#1086;&#1082;&#1072;&#1079;&#1099;&#1074;&#1072;&#1077;&#1084;&#1086;&#1081; &#1074; &#1084;&#1077;&#1089;&#1090;&#1072;&#1093; &#1087;&#1088;&#1086;&#1080;&#1089;&#1096;&#1077;&#1089;&#1090;&#1074;&#1080;&#1103;: &#1085;&#1072; &#1091;&#1083;&#1080;&#1094;&#1077;, &#1086;&#1073;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1099;&#1093; &#1084;&#1077;&#1089;&#1090;&#1072;&#1093;, &#1091;&#1095;&#1088;&#1077;&#1078;&#1076;&#1077;&#1085;&#1080;&#1103;&#1093;, &#1085;&#1072; &#1076;&#1086;&#1084;&#1091; &#1080; &#1074; &#1087;&#1091;&#1090;&#1080; &#1089;&#1083;&#1077;&#1076;&#1086;&#1074;&#1072;&#1085;&#1080;&#1103;, &#1087;&#1088;&#1080; &#1076;&#1086;&#1089;&#1090;&#1072;&#1074;&#1082;&#1077; &#1079;&#1072;&#1073;&#1086;&#1083;&#1077;&#1074;&#1096;&#1077;&#1075;&#1086; &#1074; &#1089;&#1090;&#1072;&#1094;&#1080;&#1086;&#1085;&#1072;&#1088;.<br></span><span style="color:#000000;font-family:'Times New Roman';font-size:20px;"><strong><br>&#1042;&#1099;&#1079;&#1086;&#1074; &#1074; &#1083;&#1102;&#1073;&#1086;&#1077; &#1074;&#1088;&#1077;&#1084;&#1103; &#1089;&#1091;&#1090;&#1086;&#1082;. Быстрое реагирование</strong></span></div>
<div id="wb_Image16" style="position:absolute;left:163px;top:1357px;width:300px;height:200px;z-index:39;">
<img src="images/skoraya-pomosh_1.jpg" id="Image16" alt="" style="width:300px;height:200px;"></div>
<div id="wb_Text10" style="position:absolute;left:478px;top:1355px;width:381px;height:779px;z-index:40;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">&#1041;&#1088;&#1080;&#1075;&#1072;&#1076;&#1099; &#1074;&#1099;&#1089;&#1086;&#1082;&#1086;&#1082;&#1074;&#1072;&#1083;&#1080;&#1092;&#1080;&#1094;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1085;&#1099;&#1093; &#1074;&#1088;&#1072;&#1095;&#1077;&#1081; &#1089;&#1090;&#1072;&#1085;&#1094;&#1080;&#1080; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081;<br>&#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1076;&#1077;&#1078;&#1091;&#1088;&#1103;&#1090; &#1082;&#1088;&#1091;&#1075;&#1083;&#1086;&#1089;&#1091;&#1090;&#1086;&#1095;&#1085;&#1086;, 7 &#1076;&#1085;&#1077;&#1081; &#1074; &#1085;&#1077;&#1076;&#1077;&#1083;&#1102;, 365 &#1076;&#1085;&#1077;&#1081; &#1074; &#1075;&#1086;&#1076;&#1091;.<br><br>&#1041;&#1088;&#1080;&#1075;&#1072;&#1076;&#1072; &#1074;&#1099;&#1077;&#1079;&#1078;&#1072;&#1077;&#1090; &#1085;&#1072; &#1074;&#1099;&#1079;&#1086;&#1074; &#1085;&#1077;&#1079;&#1072;&#1084;&#1077;&#1076;&#1083;&#1080;&#1090;&#1077;&#1083;&#1100;&#1085;&#1086;.&#1053;&#1072;&#1073;&#1080;&#1088;&#1072;&#1103; &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080;, &#1042;&#1099; &#1084;&#1086;&#1078;&#1077;&#1090;&#1077; &#1073;&#1099;&#1090;&#1100; &#1091;&#1074;&#1077;&#1088;&#1077;&#1085;&#1099;, &#1095;&#1090;&#1086; &#1085;&#1077;&#1086;&#1090;&#1083;&#1086;&#1078;&#1085;&#1072;&#1103; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100;&#1073;&#1091;&#1076;&#1077;&#1090; &#1086;&#1082;&#1072;&#1079;&#1072;&#1085;&#1072; &#1089;&#1074;&#1086;&#1077;&#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1085;&#1086;!<br>&#1041;&#1088;&#1080;&#1075;&#1072;&#1076;&#1072; &#1076;&#1086;&#1077;&#1079;&#1078;&#1072;&#1077;&#1090; &#1076;&#1086; &#1087;&#1072;&#1094;&#1080;&#1077;&#1085;&#1090;&#1072; &#1074; &#1079;&#1072;&#1074;&#1080;&#1089;&#1080;&#1084;&#1086;&#1089;&#1090;&#1080; &#1086;&#1090; &#1085;&#1072;&#1089;&#1077;&#1083;&#1077;&#1085;&#1085;&#1086;&#1075;&#1086; &#1087;&#1091;&#1085;&#1082;&#1090;&#1072;:<br>&#1053;&#1072;&#1079;&#1088;&#1072;&#1085;&#1100; 6-9 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1040;&#1083;&#1100;&#1090;&#1080;&#1077;&#1074;&#1086; 5-10 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1043;&#1072;&#1084;&#1091;&#1088;&#1079;&#1080;&#1077;&#1074;&#1086; 8-9 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1041;&#1072;&#1088;&#1089;&#1091;&#1082;&#1080; 7-9 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1055;&#1083;&#1080;&#1077;&#1074;&#1086;&nbsp; 9-14 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1057;&#1091;&#1088;&#1093;&#1072;&#1093;&#1080; 10-12&nbsp;&nbsp; <br>&#1069;&#1082;&#1072;&#1078;&#1077;&#1074;&#1086; 6-10 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1040;&#1083;&#1080;-&#1070;&#1088;&#1090; 8-10 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1071;&#1085;&#1076;&#1072;&#1088;&#1077; 12-15 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1050;&#1072;&#1085;&#1090;&#1099;&#1096;&#1077;&#1074;&#1086; 13-14 &#1084;&#1080;&#1085;&#1091;&#1090;<br>&#1044;&#1086;&#1083;&#1072;&#1082;&#1086;&#1074;&#1086; 14-17 &#1084;&#1080;&#1085;&#1091;&#1090;<br><br>&#1053;&#1086;&#1088;&#1084;&#1072;&#1090;&#1080;&#1074; &#1087;&#1088;&#1080;&#1077;&#1079;&#1076;&#1072;<br>&#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1086;&#1073;&#1097;&#1077;&#1087;&#1088;&#1080;&#1085;&#1103;&#1090;&#1099;&#1081; &#1087;&#1086; &#1074;&#1089;&#1077;&#1081; &#1090;&#1077;&#1088;&#1088;&#1080;&#1090;&#1086;&#1088;&#1080;&#1080; &#1056;&#1086;&#1089;&#1089;&#1080;&#1081;&#1089;&#1082;&#1086;&#1081; &#1060;&#1077;&#1076;&#1077;&#1088;&#1072;&#1094;&#1080;&#1080; - 20 &#1084;&#1080;&#1085;&#1091;&#1090;.<br><br>&#1050;&#1072;&#1088;&#1077;&#1090;&#1099; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1082;&#1088;&#1091;&#1075;&#1083;&#1086;&#1089;&#1091;&#1090;&#1086;&#1095;&#1085;&#1086; &#1085;&#1077;&#1089;&#1091;&#1090; &#1076;&#1077;&#1078;&#1091;&#1088;&#1089;&#1090;&#1074;&#1086; &#1080; &#1075;&#1086;&#1090;&#1086;&#1074;&#1099; &#1074; &#1083;&#1102;&#1073;&#1086;&#1081; &#1084;&#1086;&#1084;&#1077;&#1085;&#1090; &#1074;&#1099;&#1077;&#1093;&#1072;&#1090;&#1100; &#1085;&#1072; &#1074;&#1099;&#1079;&#1086;&#1074;. &#1053;&#1072; &#1089;&#1090;&#1072;&#1085;&#1094;&#1080;&#1080; &#1077;&#1089;&#1090;&#1100; &#1072;&#1074;&#1090;&#1086;&#1084;&#1072;&#1089;&#1090;&#1077;&#1088;&#1089;&#1082;&#1072;&#1103;, &#1075;&#1076;&#1077; &#1074; &#1083;&#1102;&#1073;&#1086;&#1081; &#1084;&#1086;&#1084;&#1077;&#1085;&#1090; &#1084;&#1086;&#1078;&#1085;&#1086; &#1091;&#1089;&#1090;&#1088;&#1072;&#1085;&#1080;&#1090;&#1100; &#1085;&#1077;&#1080;&#1089;&#1087;&#1088;&#1072;&#1074;&#1085;&#1086;&#1089;&#1090;&#1100;. &#1048;&#1084;&#1077;&#1102;&#1090;&#1089;&#1103; &#1074;&#1089;&#1077; &#1091;&#1089;&#1083;&#1086;&#1074;&#1080;&#1103;&#1076;&#1083;&#1103; &#1076;&#1080;&#1072;&#1075;&#1085;&#1086;&#1089;&#1090;&#1080;&#1082;&#1080; &#1080; &#1082;&#1072;&#1095;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1086;&#1075;&#1086; &#1073;&#1099;&#1089;&#1090;&#1088;&#1086;&#1075;&#1086; &#1088;&#1077;&#1084;&#1086;&#1085;&#1090;&#1072;.<br><br>&#1057;&#1082;&#1086;&#1088;&#1072;&#1103; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1072;&#1103; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100; - &#1101;&#1090;&#1086; &#1082;&#1086;&#1084;&#1087;&#1083;&#1077;&#1082;&#1089; &#1084;&#1077;&#1088;&#1086;&#1087;&#1088;&#1080;&#1103;&#1090;&#1080;&#1081;, &#1085;&#1072;&#1087;&#1088;&#1072;&#1074;&#1083;&#1077;&#1085;&#1085;&#1099;&#1093; &#1085;&#1072; &#1086;&#1082;&#1072;&#1079;&#1072;&#1085;&#1080;&#1077; &#1083;&#1077;&#1095;&#1077;&#1073;&#1085;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1087;&#1088;&#1080; &#1091;&#1075;&#1088;&#1086;&#1078;&#1072;&#1102;&#1097;&#1080;&#1093; &#1079;&#1076;&#1086;&#1088;&#1086;&#1074;&#1100;&#1102; &#1080; &#1078;&#1080;&#1079;&#1085;&#1080; &#1087;&#1072;&#1094;&#1080;&#1077;&#1085;&#1090;&#1072; &#1089;&#1086;&#1089;&#1090;&#1086;&#1103;&#1085;&#1080;&#1103;&#1093;, &#1082; &#1082;&#1086;&#1090;&#1086;&#1088;&#1099;&#1084; &#1087;&#1088;&#1080;&#1074;&#1077;&#1083;&#1080; &#1085;&#1077;&#1089;&#1095;&#1072;&#1089;&#1090;&#1085;&#1099;&#1077; &#1089;&#1083;&#1091;&#1095;&#1072;&#1080; &#1080;&#1083;&#1080; &#1079;&#1072;&#1073;&#1086;&#1083;&#1077;&#1074;&#1072;&#1085;&#1080;&#1103;. &#1045;&#1077; &#1086;&#1082;&#1072;&#1079;&#1072;&#1085;&#1080;&#1077; &#1089;&#1074;&#1103;&#1079;&#1072;&#1085;&#1086; &#1089; &#1086;&#1087;&#1077;&#1088;&#1072;&#1090;&#1080;&#1074;&#1085;&#1086;&#1089;&#1090;&#1100;&#1102; &#1080; &#1085;&#1072;&#1087;&#1088;&#1072;&#1074;&#1083;&#1077;&#1085;&#1086; &#1085;&#1072; &#1074;&#1099;&#1074;&#1077;&#1076;&#1077;&#1085;&#1080;&#1077; &#1087;&#1072;&#1094;&#1080;&#1077;&#1085;&#1090;&#1072; &#1080;&#1079; &#1082;&#1088;&#1080;&#1090;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1075;&#1086; &#1089;&#1086;&#1089;&#1090;&#1086;&#1103;&#1085;&#1080;&#1103;, &#1089;&#1090;&#1072;&#1073;&#1080;&#1083;&#1080;&#1079;&#1072;&#1094;&#1080;&#1077;&#1081; &#1089;&#1086;&#1089;&#1090;&#1086;&#1103;&#1085;&#1080;&#1103; &#1077;&#1075;&#1086; &#1079;&#1076;&#1086;&#1088;&#1086;&#1074;&#1100;&#1103; &#1080;,</span></div>
<div id="wb_Image18" style="position:absolute;left:163px;top:1760px;width:300px;height:166px;z-index:41;">
<img src="images/3.jpg" id="Image18" alt="" style="width:300px;height:166px;"></div>
<div id="wb_Image19" style="position:absolute;left:162px;top:1927px;width:300px;height:162px;z-index:42;">
<img src="images/IMAG00822.jpg" id="Image19" alt="" style="width:300px;height:162px;"></div>
<div id="wb_Text11" style="position:absolute;left:163px;top:2442px;width:966px;height:16px;z-index:43;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Автомобиль класса &quot;А&quot;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; Автомобиль класса &quot;B&quot;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Автомобиль класса &quot;B&quot;</span></div>
<div id="wb_Text12" style="position:absolute;left:357px;top:2687px;width:966px;height:16px;z-index:44;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Автомобиль класса &quot;C&quot;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; Автомобиль класса &quot;C&quot;</span></div>
<div id="wb_Text15" style="position:absolute;left:164px;top:2759px;width:505px;height:56px;z-index:45;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:11px;">ГБУ &quot;РССМП&quot;<br>На сайте использованы материалы СМИ<br>Сайт создан в системе ООО &quot;Регистратор доменных имен REG.RU<br>Автор D.V.</span></div>
<div id="wb_Form3" style="position:absolute;left:0px;top:716px;width:96px;height:102px;z-index:46;">
<form name="survey" method="post" action="<?php echo basename(__FILE__); ?>" enctype="multipart/form-data" id="Form3">
<input type="hidden" name="formid" value="form3">
<div id="wb_Text17" style="position:absolute;left:0px;top:1px;width:60px;height:16px;z-index:0;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Отлично</span></div>
<input type="radio" id="RadioButton5" name="rating" value="excellent" checked style="position:absolute;left:73px;top:0px;z-index:1;">
<div id="wb_Text18" style="position:absolute;left:0px;top:20px;width:60px;height:16px;z-index:2;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Хорошо</span></div>
<input type="radio" id="RadioButton6" name="rating" value="very good" style="position:absolute;left:73px;top:18px;z-index:3;">
<div id="wb_Text19" style="position:absolute;left:0px;top:39px;width:60px;height:16px;z-index:4;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Средне</span></div>
<input type="radio" id="RadioButton7" name="rating" value="good" style="position:absolute;left:73px;top:37px;z-index:5;">
<div id="wb_Text20" style="position:absolute;left:0px;top:58px;width:60px;height:16px;z-index:6;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Сойдет</span></div>
<input type="radio" id="RadioButton8" name="rating" value="poor" style="position:absolute;left:73px;top:56px;z-index:7;">
<input type="submit" id="Button3" name="" value="ОК" style="position:absolute;left:0px;top:77px;width:96px;height:25px;z-index:8;">
</form>
</div>
<div id="wb_Image2" style="position:absolute;left:0px;top:108px;width:78px;height:52px;z-index:47;">
<a href="./donos.php"><img src="images/image71526793.jpg" id="Image2" alt="" style="width:78px;height:52px;"></a></div>
<div id="wb_Image17" style="position:absolute;left:162px;top:2243px;width:300px;height:186px;z-index:48;">
<img src="images/class%20A.jpg" id="Image17" alt="" style="width:300px;height:186px;"></div>
<div id="wb_Image21" style="position:absolute;left:465px;top:2243px;width:300px;height:186px;z-index:49;">
<img src="images/class%20b%203.jpg" id="Image21" alt="" style="width:300px;height:186px;"></div>
<div id="wb_Image22" style="position:absolute;left:770px;top:2243px;width:300px;height:186px;z-index:50;">
<img src="images/class%20b%202.jpg" id="Image22" alt="" style="width:300px;height:186px;"></div>
<div id="wb_Image25" style="position:absolute;left:615px;top:2468px;width:300px;height:186px;z-index:51;">
<img src="images/class%20C%203.jpg" id="Image25" alt="" style="width:300px;height:186px;"></div>
<div id="wb_Image26" style="position:absolute;left:312px;top:2468px;width:300px;height:186px;z-index:52;">
<img src="images/class%20C%202.jpg" id="Image26" alt="" style="width:300px;height:186px;"></div>
<div id="wb_Image23" style="position:absolute;left:163px;top:1558px;width:300px;height:200px;z-index:53;">
<img src="images/d.jpg" id="Image23" alt="" style="width:300px;height:200px;"></div>
<div id="wb_Form1" style="position:absolute;left:854px;top:158px;width:167px;height:221px;z-index:54;">
<form name="Форма_связи" method="post" action="<?php echo basename(__FILE__); ?>" enctype="multipart/form-data" accept-charset="UTF-8" id="Form1" onsubmit="return ValidateФорма_связи(this)">
<input type="hidden" name="formid" value="form1">
<input type="text" id="Editbox1" style="position:absolute;left:1px;top:1px;width:163px;height:18px;line-height:18px;z-index:9;" name="Имя" value="" placeholder="&#1060;.&#1048;.&#1054;.">
<input type="text" id="Editbox2" style="position:absolute;left:1px;top:24px;width:163px;height:18px;line-height:18px;z-index:10;" name="Почта" value="" placeholder="&#1042;&#1072;&#1096; E-mail">
<textarea name="Сообщение" id="TextArea1" style="position:absolute;left:1px;top:70px;width:159px;height:113px;z-index:11;" rows="6" cols="20" placeholder="&#1042;&#1072;&#1096;&#1077; &#1089;&#1086;&#1086;&#1073;&#1097;&#1077;&#1085;&#1080;&#1077;"></textarea>
<input type="text" id="Editbox3" style="position:absolute;left:1px;top:47px;width:163px;height:18px;line-height:18px;z-index:12;" name="Телефон" value="" placeholder="&#1042;&#1072;&#1096; &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085;">
<input type="submit" id="Button1" name="отправка" value="Отправить" style="position:absolute;left:1px;top:190px;width:165px;height:25px;z-index:13;">
</form>
</div>
<div id="wb_TabMenu1" style="position:absolute;left:79px;top:102px;width:887px;height:46px;z-index:55;overflow:hidden;">
<ul id="TabMenu1">
<li><a href="./index.php">Главная</a></li>
<li><a href="./aus.php" class="active">О нас</a></li>
<li><a href="./history.php">История скорой</a></li>
<li><a href="./strr.php">Структура РССМП</a></li>
<li><a href="./works.php">Персонал РССМП</a></li>
<li><a href="./ok.php">Кадровая работа</a></li>
<li><a href="./vakanci.php">Вакансии</a></li>
<li><a href="./doc.php">Реквизиты</a></li>
</ul>
</div>
<div id="wb_Text1" style="position:absolute;left:712px;top:12px;width:64px;height:64px;text-align:center;z-index:56;">
<span style="color:#FFFFFF;font-family:Arial;font-size:13px;">03 030<br>112<br>22-72-25<br>22-24-10</span></div>
<div id="wb_Text14" style="position:absolute;left:166px;top:661px;width:666px;height:57px;z-index:57;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">&#1088;&#1072;&#1074;&#1085;&#1099;&#1093; &#1085;&#1072; &#1057;&#1077;&#1074;&#1077;&#1088;&#1085;&#1086;&#1084; &#1050;&#1072;&#1074;&#1082;&#1072;&#1079;&#1077;, &#1076;&#1072; &#1080; &#1074; &#1094;&#1077;&#1083;&#1086;&#1084; &#1087;&#1086; &#1056;&#1086;&#1089;&#1089;&#1080;&#1080; &#1085;&#1077; &#1084;&#1085;&#1086;&#1075;&#1080;&#1077; &#1072;&#1085;&#1072;&#1083;&#1086;&#1075;&#1080;&#1095;&#1085;&#1099;&#1077; &#1091;&#1095;&#1088;&#1077;&#1078;&#1076;&#1077;&#1085;&#1080;&#1103; &#1089;&#1084;&#1086;&#1075;&#1091;&#1090; &#1082;&#1086;&#1085;&#1082;&#1091;&#1088;&#1080;&#1088;&#1086;&#1074;&#1072;&#1090;&#1100; &#1089; &#1085;&#1077;&#1081; &#1087;&#1086; &#1091;&#1088;&#1086;&#1074;&#1085;&#1102; &#1086;&#1089;&#1085;&#1072;&#1097;&#1077;&#1085;&#1085;&#1086;&#1089;&#1090;&#1080;, &#1073;&#1099;&#1090;&#1086;&#1074;&#1099;&#1084; &#1091;&#1089;&#1083;&#1086;&#1074;&#1080;&#1103;&#1084;, &#1085;&#1072;&#1083;&#1080;&#1095;&#1080;&#1102; &#1089;&#1087;&#1077;&#1094;&#1090;&#1077;&#1093;&#1085;&#1080;&#1082;&#1080;. &#1059;&#1074;&#1077;&#1083;&#1080;&#1095;&#1080;&#1083;&#1089;&#1103; &#1096;&#1090;&#1072;&#1090; &#0045; &#1074;&#1084;&#1077;&#1089;&#1090;&#1086; &#1087;&#1088;&#1077;&#1078;&#1085;&#1080;&#1093; 136, &#1090;&#1077;&#1087;&#1077;&#1088;&#1100; &#1079;&#1076;&#1077;&#1089;&#1100; &#1090;&#1088;&#1091;&#1076;&#1103;&#1090;&#1089;&#1103; 250 &#1095;&#1077;&#1083;&#1086;&#1074;&#1077;&#1082;. </span></div>
<div id="wb_Text21" style="position:absolute;left:165px;top:964px;width:669px;height:76px;z-index:58;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">&#1089;&#1086;&#1086;&#1090;&#1074;&#1077;&#1090;&#1089;&#1090;&#1074;&#1091;&#1102;&#1097;&#1080;&#1093; &#1089;&#1077;&#1088;&#1090;&#1080;&#1092;&#1080;&#1082;&#1072;&#1090;&#1086;&#1074;.<br>&#1069;&#1090;&#1086;&#1090; &#1089;&#1086;&#1094;&#1080;&#1072;&#1083;&#1100;&#1085;&#1099;&#1081; &#1086;&#1073;&#1098;&#1077;&#1082;&#1090; &#1080;&#1084;&#1077;&#1077;&#1090; &#1086;&#1075;&#1088;&#1086;&#1084;&#1085;&#1086;&#1077; &#1079;&#1085;&#1072;&#1095;&#1077;&#1085;&#1080;&#1077; &#1076;&#1083;&#1103; &#1088;&#1077;&#1089;&#1087;&#1091;&#1073;&#1083;&#1080;&#1082;&#1080;, &#1087;&#1086;&#1101;&#1090;&#1086;&#1084;&#1091; &#1082; &#1085;&#1077;&#1084;&#1091; &#1087;&#1088;&#1080;&#1089;&#1090;&#1072;&#1083;&#1100;&#1085;&#1086;&#1077; &#1074;&#1085;&#1080;&#1084;&#1072;&#1085;&#1080;&#1077; &#1089;&#1086; &#1089;&#1090;&#1086;&#1088;&#1086;&#1085;&#1099; &#1043;&#1083;&#1072;&#1074;&#1099; &#1048;&#1085;&#1075;&#1091;&#1096;&#1077;&#1090;&#1080;&#1080; &#1080; &#1055;&#1088;&#1072;&#1074;&#1080;&#1090;&#1077;&#1083;&#1100;&#1089;&#1090;&#1074;&#1072;. &#1047;&#1076;&#1077;&#1089;&#1100; &#1086;&#1082;&#1072;&#1079;&#1099;&#1074;&#1072;&#1090;&#1100;&#1089;&#1103; &#1082;&#1072;&#1095;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1072;&#1103; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1072;&#1103; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100;, &#1082;&#1088;&#1086;&#1084;&#1077; &#1090;&#1086;&#1075;&#1086; &#1073;&#1091;&#1076;&#1077;&#1090; &#1089;&#1086;&#1079;&#1076;&#1072;&#1085;&#1086; </span></div>
<div id="wb_Text22" style="position:absolute;left:161px;top:2126px;width:738px;height:130px;z-index:59;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;">&#1087;&#1088;&#1080; &#1085;&#1077;&#1086;&#1073;&#1093;&#1086;&#1076;&#1080;&#1084;&#1086;&#1089;&#1090;&#1080;, &#1076;&#1086;&#1089;&#1090;&#1072;&#1074;&#1082;&#1086;&#1081; &#1074; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1077; &#1091;&#1095;&#1088;&#1077;&#1078;&#1076;&#1077;&#1085;&#1080;&#1077;.<br>&#1041;&#1086;&#1083;&#1100;&#1096;&#1080;&#1085;&#1089;&#1090;&#1074;&#1086; &#1080;&#1079; &#1085;&#1072;&#1089; &#1085;&#1072; &#1089;&#1086;&#1073;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1086;&#1084; &#1086;&#1087;&#1099;&#1090;&#1077; &#1079;&#1085;&#1072;&#1102;&#1090;, &#1095;&#1090;&#1086; &#1073;&#1099;&#1074;&#1072;&#1102;&#1090; &#1089;&#1080;&#1090;&#1091;&#1072;&#1094;&#1080;&#1080; &#1074; &#1078;&#1080;&#1079;&#1085;&#1080;, &#1082;&#1086;&#1075;&#1076;&#1072; &#1085;&#1077; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1079;&#1076;&#1086;&#1088;&#1086;&#1074;&#1100;&#1077;, &#1085;&#1086; &#1080; &#1078;&#1080;&#1079;&#1085;&#1100; &#1095;&#1077;&#1083;&#1086;&#1074;&#1077;&#1082;&#1072; &#1079;&#1072;&#1074;&#1080;&#1089;&#1103;&#1090; &#1086;&#1090; &#1074;&#1086;&#1074;&#1088;&#1077;&#1084;&#1103; &#1086;&#1082;&#1072;&#1079;&#1072;&#1085;&#1085;&#1086;&#1081; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080;, &#1080; &#1082; &#1082;&#1072;&#1082;&#1080;&#1084; &#1087;&#1086;&#1089;&#1083;&#1077;&#1076;&#1089;&#1090;&#1074;&#1080;&#1103;&#1084; &#1084;&#1086;&#1078;&#1077;&#1090; &#1087;&#1088;&#1080;&#1074;&#1077;&#1089;&#1090;&#1080; &#1087;&#1088;&#1086;&#1084;&#1077;&#1076;&#1083;&#1077;&#1085;&#1080;&#1077; &#1087;&#1088;&#1080; &#1074;&#1099;&#1079;&#1086;&#1074;&#1077; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; (&#1087;&#1086;&#1084;&#1085;&#1080;&#1090;&#1077;: &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1074;&#1089;&#1077;&#1075;&#1076;&#1072; &#1076;&#1086;&#1083;&#1078;&#1077;&#1085; &#1073;&#1099;&#1090;&#1100; &#1087;&#1086;&#1076; &#1088;&#1091;&#1082;&#1086;&#1081;!). &#1055;&#1088;&#1080;&#1095;&#1077;&#1084; &#1086;&#1082;&#1072;&#1079;&#1099;&#1074;&#1072;&#1077;&#1084;&#1072;&#1103; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100; &#1076;&#1086;&#1083;&#1078;&#1085;&#1072; &#1073;&#1099;&#1090;&#1100; &#1085;&#1077; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1073;&#1099;&#1089;&#1090;&#1088;&#1086;&#1081;, &#1085;&#1086; &#1080; &#1082;&#1072;&#1095;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1086;&#1081;.<br></span></div>
<a href="./news.php"><img src="images/img0029.jpg" id="Banner2" alt="&#1053;&#1086;&#1074;&#1086;&#1089;&#1090;&#1080;" style="position:absolute;left:859px;top:376px;width:147px;height:50px;border-width:0;z-index:60;"></a>
<div id="wb_Text23" style="position:absolute;left:858px;top:428px;width:159px;height:105px;z-index:61;text-align:left;">
<span style="color:#4169E1;font-family:'Times New Roman';font-size:13px;">В Ингушетии состоялись командно-штабные учения МЧС</span><span style="color:#0000FF;font-family:'Times New Roman';font-size:13px;"><br></span><span style="color:#000000;font-family:'Times New Roman';font-size:13px;"><br>На показные учения, прошедшие сегодня в Ингушетии, ... </span><span style="color:#3CB371;font-family:'Times New Roman';font-size:13px;"><strong><a href="./page1.php">Подробно</a></strong></span></div>
<div id="wb_Text24" style="position:absolute;left:861px;top:547px;width:159px;height:105px;z-index:62;text-align:left;">
<span style="color:#0000FF;font-family:'Times New Roman';font-size:13px;">15.03.2014 г. Прошел общереспубликанский субботник<br><br></span><span style="color:#000000;font-family:'Times New Roman';font-size:13px;">&nbsp;&nbsp; С утра в республике прошел субботник в котором пр... </span><span style="color:#3CB371;font-family:'Times New Roman';font-size:13px;"><strong><a href="./page2.php">Подробно</a></strong></span></div>
</div>
</body>
</html>