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
<title>Главная</title>
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
   margin-bottom: -735px;
   float:left
}
div#container
{
   width: 1020px;
   height: 1471px;
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
#wb_Text10 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: center;
}
#wb_Text10 div
{
   text-align: center;
}
#Image12
{
   border: 0px #000000 solid;
}
#wb_Text15 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: center;
}
#wb_Text15 div
{
   text-align: center;
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
<img src="images/img0001.jpg" id="Banner1" alt="&#1057;&#1082;&#1086;&#1088;&#1072;&#1103; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100; &#1075;. &#1053;&#1072;&#1079;&#1088;&#1072;&#1085;&#1100;" style="position:absolute;left:0px;top:0px;width:917px;height:80px;border-width:0;z-index:14;">
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
<div id="wb_Text1" style="position:absolute;left:712px;top:12px;width:64px;height:64px;text-align:center;z-index:24;">
<span style="color:#FFFFFF;font-family:Arial;font-size:13px;">03 030<br>112<br>22-72-25<br>22-24-10</span></div>
<div id="wb_Image10" style="position:absolute;left:0px;top:313px;width:150px;height:65px;z-index:25;">
<a href="http://minzdravri.ru" target="_blank" title="&#1052;&#1080;&#1085;&#1080;&#1089;&#1090;&#1077;&#1088;&#1089;&#1090;&#1074;&#1086; &#1079;&#1076;&#1088;&#1072;&#1074;&#1086;&#1086;&#1093;&#1088;&#1072;&#1085;&#1077;&#1085;&#1080;&#1103; &#1056;&#1048;"><img src="images/Logo_MinZdrav_var1-01.jpg" id="Image10" alt="" style="width:150px;height:65px;"></a></div>
<div id="wb_Text2" style="position:absolute;left:97px;top:14px;width:138px;height:64px;text-align:center;z-index:26;">
<span style="color:#FFFFFF;font-family:Arial;font-size:13px;">386140 РИ г. Назрань, а/о Насыр-Корт, ул. Бакинская,7 &quot;а&quot;</span></div>
<div id="wb_Image13" style="position:absolute;left:841px;top:0px;width:72px;height:72px;z-index:27;">
<img src="images/4515.png" id="Image13" alt="" style="width:72px;height:72px;"></div>
<div id="wb_Image14" style="position:absolute;left:1px;top:0px;width:69px;height:75px;z-index:28;">
<img src="images/emblema_minzdravsocrazvitiya.png45.png" id="Image14" alt="" style="width:69px;height:75px;"></div>
<div id="wb_Text8" style="position:absolute;left:0px;top:697px;width:157px;height:15px;z-index:29;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:13px;"><strong>ВАШЕ МНЕНИЕ О САЙТЕ</strong></span></div>
<div id="wb_Text9" style="position:absolute;left:859px;top:142px;width:157px;height:15px;z-index:30;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:13px;"><strong>НАПИШИТЕ НАМ</strong></span></div>
<div id="wb_Text13" style="position:absolute;left:431px;top:962px;width:250px;height:2px;z-index:31;text-align:left;">
&nbsp;</div>
<div id="wb_Text16" style="position:absolute;left:27px;top:83px;width:976px;height:16px;z-index:32;text-align:left;">
<span style="color:#000000;font-family:'Lucida Console';font-size:16px;"><strong>ГОСУДАРСТВЕННОЕ БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ &quot;РЕСПУБЛИКАНСКАЯ СТАНЦИЯ СКОРОЙ МЕДИЦИНСКОЙ ПОМОЩИ&quot;</strong></span></div>
<div id="wb_Form3" style="position:absolute;left:0px;top:716px;width:96px;height:102px;z-index:33;">
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
<div id="wb_Image2" style="position:absolute;left:0px;top:108px;width:78px;height:52px;z-index:34;">
<a href="./donos.php"><img src="images/image71526793.jpg" id="Image2" alt="" style="width:78px;height:52px;"></a></div>
<div id="wb_Form1" style="position:absolute;left:854px;top:158px;width:167px;height:221px;z-index:35;">
<form name="Форма_связи" method="post" action="<?php echo basename(__FILE__); ?>" enctype="multipart/form-data" accept-charset="UTF-8" id="Form1" onsubmit="return ValidateФорма_связи(this)">
<input type="hidden" name="formid" value="form1">
<input type="text" id="Editbox1" style="position:absolute;left:1px;top:1px;width:163px;height:18px;line-height:18px;z-index:9;" name="Имя" value="" placeholder="&#1060;.&#1048;.&#1054;.">
<input type="text" id="Editbox2" style="position:absolute;left:1px;top:24px;width:163px;height:18px;line-height:18px;z-index:10;" name="Почта" value="" placeholder="&#1042;&#1072;&#1096; E-mail">
<textarea name="Сообщение" id="TextArea1" style="position:absolute;left:1px;top:70px;width:159px;height:113px;z-index:11;" rows="6" cols="20" placeholder="&#1042;&#1072;&#1096;&#1077; &#1089;&#1086;&#1086;&#1073;&#1097;&#1077;&#1085;&#1080;&#1077;"></textarea>
<input type="text" id="Editbox3" style="position:absolute;left:1px;top:47px;width:163px;height:18px;line-height:18px;z-index:12;" name="Телефон" value="" placeholder="&#1042;&#1072;&#1096; &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085;">
<input type="submit" id="Button1" name="отправка" value="Отправить" style="position:absolute;left:1px;top:190px;width:165px;height:25px;z-index:13;">
</form>
</div>
<div id="wb_TabMenu1" style="position:absolute;left:79px;top:102px;width:887px;height:46px;z-index:36;overflow:hidden;">
<ul id="TabMenu1">
<li><a href="./index.php" class="active">Главная</a></li>
<li><a href="./aus.php">О нас</a></li>
<li><a href="./history.php">История скорой</a></li>
<li><a href="./strr.php">Структура РССМП</a></li>
<li><a href="./works.php">Персонал РССМП</a></li>
<li><a href="./ok.php">Кадровая работа</a></li>
<li><a href="./vakanci.php">Вакансии</a></li>
<li><a href="./doc.php">Реквизиты</a></li>
</ul>
</div>
<div id="wb_Text3" style="position:absolute;left:468px;top:945px;width:250px;height:2px;z-index:37;text-align:left;">
&nbsp;</div>
<div id="wb_Text6" style="position:absolute;left:178px;top:1415px;width:505px;height:56px;z-index:38;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:11px;">ГБУ &quot;РССМП&quot;<br>На сайте и спользованы материалы СМИ<br>Сайт создан в системе ООО &quot;Регистратор доменных имен REG.RU<br>Автор D.V.</span></div>
<div id="wb_Image15" style="position:absolute;left:456px;top:156px;width:321px;height:185px;z-index:39;">
<img src="images/IMAG0073_1.jpg" id="Image15" alt="" style="width:321px;height:185px;"></div>
<div id="wb_Text12" style="position:absolute;left:172px;top:407px;width:657px;height:893px;z-index:40;text-align:left;">
<span style="color:#000000;font-family:'Times New Roman';font-size:16px;"><strong>Скорая медицинская помощь - вид и система экстренной медицинской помощи больным и пострадавшим при угрожающих жизни и здоровью человека состояниях, травмах, оказываемой в местах происшествия: на улице, общественных местах, учреждениях, на дому и в пути следования, при доставке заболевшего в стационар.<br>o&nbsp;&nbsp;&nbsp; Скорая медицинская помощь оказывается круглосуточно бригадами ГБУ &quot;Республиканская станция скорой медицинской помощи&quot;.<br>o&nbsp;&nbsp;&nbsp; Подстанциями скорая медицинская помощь оказывается&nbsp; на условно закрепленных территориях.<br>Скорая медицинская помощь вызывается по телефону &quot;03&quot; круглосуточно:<br>o&nbsp;&nbsp;&nbsp; При несчастных случаях и травмах с тяжелыми повреждениями тела, поражении электротоком и молнией, ожогах, тепловых ударах, обморожении, удушении всех видов (утоплении, инородных телах в дыхательных путях), отравлениях, покушениях на самоубийство и т.д.<br>o&nbsp;&nbsp;&nbsp; &#1055;&#1088;&#1080; &#1074;&#1085;&#1077;&#1079;&#1072;&#1087;&#1085;&#1099;&#1093; &#1079;&#1072;&#1073;&#1086;&#1083;&#1077;&#1074;&#1072;&#1085;&#1080;&#1103;&#1093;, &#1091;&#1075;&#1088;&#1086;&#1078;&#1072;&#1102;&#1097;&#1080;&#1093; &#1078;&#1080;&#1079;&#1085;&#1080;:<br>&#1087;&#1088;&#1080; &#1089;&#1091;&#1076;&#1086;&#1088;&#1086;&#1075;&#1072;&#1093;; &#1087;&#1088;&#1080; &#1087;&#1086;&#1090;&#1077;&#1088;&#1077; &#1089;&#1086;&#1079;&#1085;&#1072;&#1085;&#1080;&#1103;, &#1086;&#1089;&#1090;&#1088;&#1086; &#1088;&#1072;&#1079;&#1074;&#1080;&#1074;&#1072;&#1102;&#1097;&#1077;&#1084;&#1089;&#1103; &#1088;&#1072;&#1089;&#1089;&#1090;&#1088;&#1086;&#1081;&#1089;&#1090;&#1074;&#1077; &#1089;&#1077;&#1088;&#1076;&#1077;&#1095;&#1085;&#1086;-&#1089;&#1086;&#1089;&#1091;&#1076;&#1080;&#1089;&#1090;&#1086;&#1081; &#1076;&#1077;&#1103;&#1090;&#1077;&#1083;&#1100;&#1085;&#1086;&#1089;&#1090;&#1080; &#1080; &#1086;&#1088;&#1075;&#1072;&#1085;&#1086;&#1074; &#1076;&#1099;&#1093;&#1072;&#1085;&#1080;&#1103;, &#1082;&#1088;&#1086;&#1074;&#1086;&#1090;&#1077;&#1095;&#1077;&#1085;&#1080;&#1103;&#1093;, &#1082;&#1088;&#1086;&#1074;&#1072;&#1074;&#1086;&#1081; &#1088;&#1074;&#1086;&#1090;&#1077;, &#1088;&#1072;&#1089;&#1089;&#1090;&#1088;&#1086;&#1081;&#1089;&#1090;&#1074;&#1077; &#1084;&#1086;&#1079;&#1075;&#1086;&#1074;&#1086;&#1075;&#1086; &#1082;&#1088;&#1086;&#1074;&#1086;&#1086;&#1073;&#1088;&#1072;&#1097;&#1077;&#1085;&#1080;&#1103;, &#1088;&#1074;&#1086;&#1090;&#1077; &#1080; &#1088;&#1077;&#1079;&#1082;&#1080;&#1093; &#1073;&#1086;&#1083;&#1103;&#1093; &#1074; &#1078;&#1080;&#1074;&#1086;&#1090;&#1077;, &#1088;&#1072;&#1079;&#1083;&#1080;&#1095;&#1085;&#1099;&#1093; &#1086;&#1090;&#1088;&#1072;&#1074;&#1083;&#1077;&#1085;&#1080;&#1103;&#1093; &#1080; &#1090;.&#1076;.<br>o&nbsp;&nbsp;&nbsp; &#1055;&#1088;&#1080; &#1088;&#1086;&#1076;&#1072;&#1093;, &#1087;&#1088;&#1086;&#1080;&#1089;&#1096;&#1077;&#1076;&#1096;&#1080;&#1093; &#1073;&#1077;&#1079; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1085;&#1072; &#1091;&#1083;&#1080;&#1094;&#1077; &#1074; &#1086;&#1073;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1099;&#1093; &#1084;&#1077;&#1089;&#1090;&#1072;&#1093;, &#1085;&#1072; &#1076;&#1086;&#1084;&#1091;. &#1055;&#1088;&#1080; &#1087;&#1072;&#1090;&#1086;&#1083;&#1086;&#1075;&#1080;&#1080; &#1073;&#1077;&#1088;&#1077;&#1084;&#1077;&#1085;&#1085;&#1086;&#1089;&#1090;&#1080;, &#1072; &#1090;&#1072;&#1082;&#1078;&#1077; &#1085;&#1072; &#1087;&#1077;&#1088;&#1077;&#1074;&#1086;&#1079;&#1082;&#1091; &#1085;&#1072; &#1088;&#1086;&#1076;&#1099;.<br>o&nbsp;&nbsp;&nbsp; &#1055;&#1088;&#1080; &#1072;&#1074;&#1072;&#1088;&#1080;&#1103;&#1093;, &#1082;&#1072;&#1090;&#1072;&#1089;&#1090;&#1088;&#1086;&#1092;&#1072;&#1093; &#1080; &#1089;&#1090;&#1080;&#1093;&#1080;&#1081;&#1085;&#1099;&#1093; &#1073;&#1077;&#1076;&#1089;&#1090;&#1074;&#1080;&#1103;&#1093; &#1089; &#1095;&#1077;&#1083;&#1086;&#1074;&#1077;&#1095;&#1077;&#1089;&#1082;&#1080;&#1084;&#1080; &#1078;&#1077;&#1088;&#1090;&#1074;&#1072;&#1084;&#1080; &#1080;&#1083;&#1080; &#1091;&#1075;&#1088;&#1086;&#1079;&#1086;&#1081; &#1080;&#1093; &#1074;&#1086;&#1079;&#1085;&#1080;&#1082;&#1085;&#1086;&#1074;&#1077;&#1085;&#1080;&#1103;.<br>o&nbsp;&nbsp;&nbsp; &#1055;&#1088;&#1080; &#1086;&#1089;&#1090;&#1088;&#1099;&#1093; &#1088;&#1072;&#1089;&#1089;&#1090;&#1088;&#1086;&#1081;&#1089;&#1090;&#1074;&#1072;&#1093; &#1087;&#1089;&#1080;&#1093;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081; &#1076;&#1077;&#1103;&#1090;&#1077;&#1083;&#1100;&#1085;&#1086;&#1089;&#1090;&#1080;, &#1089;&#1086;&#1087;&#1088;&#1086;&#1074;&#1086;&#1078;&#1076;&#1072;&#1102;&#1097;&#1080;&#1093;&#1089;&#1103; &#1072;&#1075;&#1088;&#1077;&#1089;&#1089;&#1080;&#1074;&#1085;&#1099;&#1084;&#1080; &#1076;&#1077;&#1081;&#1089;&#1090;&#1074;&#1080;&#1103;&#1084;&#1080;.<br>&#1057;&#1057;&#1052;&#1055; &#1085;&#1077; &#1087;&#1088;&#1086;&#1074;&#1086;&#1076;&#1080;&#1090; &#1089;&#1080;&#1089;&#1090;&#1077;&#1084;&#1072;&#1090;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1075;&#1086; &#1083;&#1077;&#1095;&#1077;&#1085;&#1080;&#1103; &#1073;&#1086;&#1083;&#1100;&#1085;&#1099;&#1093; &#1080; &#1087;&#1086;&#1090;&#1086;&#1084;&#1091; &#1085;&#1077; &#1087;&#1088;&#1080;&#1085;&#1080;&#1084;&#1072;&#1077;&#1090; &#1074;&#1099;&#1079;&#1086;&#1074;&#1099; &#1080; &#1085;&#1077; &#1074;&#1099;&#1077;&#1079;&#1078;&#1072;&#1077;&#1090;:<br>o&nbsp;&nbsp;&nbsp; &#1085;&#1072; &#1079;&#1072;&#1073;&#1086;&#1083;&#1077;&#1074;&#1072;&#1085;&#1080;&#1103;, &#1085;&#1077; &#1091;&#1075;&#1088;&#1086;&#1078;&#1072;&#1102;&#1097;&#1080;&#1077; &#1078;&#1080;&#1079;&#1085;&#1080; &#1080; &#1079;&#1076;&#1086;&#1088;&#1086;&#1074;&#1100;&#1102; (&#1076;&#1080;&#1089;&#1094;&#1080;&#1088;&#1082;&#1091;&#1083;&#1103;&#1090;&#1086;&#1088;&#1085;&#1072;&#1103; &#1101;&#1085;&#1094;&#1077;&#1092;&#1072;&#1083;&#1086;&#1087;&#1072;&#1090;&#1080;&#1103;, &#1075;&#1080;&#1087;&#1077;&#1088;&#1090;&#1086;&#1085;&#1080;&#1095;&#1077;&#1089;&#1082;&#1072;&#1103; &#1073;&#1086;&#1083;&#1077;&#1079;&#1085;&#1100; &#1074;&#1085;&#1077; &#1082;&#1088;&#1080;&#1079;&#1072;, &#1093;&#1088;.&#1079;&#1072;&#1073;&#1086;&#1083;&#1077;&#1074;&#1072;&#1085;&#1080;&#1103; &#1087;&#1077;&#1088;&#1080;&#1092;&#1077;&#1088;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081; &#1085;&#1077;&#1088;&#1074;&#1085;&#1086;&#1081; &#1089;&#1080;&#1089;&#1090;&#1077;&#1084;&#1099;, &#1093;&#1088;&#1086;&#1085;&#1080;&#1095;&#1077;&#1089;&#1082;&#1080;&#1077; &#1079;&#1072;&#1073;&#1086;&#1083;&#1077;&#1074;&#1072;&#1085;&#1080;&#1103; &#1074; &#1089;&#1090;&#1072;&#1076;&#1080;&#1080; &#1082;&#1086;&#1084;&#1087;&#1077;&#1085;&#1089;&#1072;&#1094;&#1080;&#1080; &#1073;&#1077;&#1079; &#1073;&#1086;&#1083;&#1077;&#1074;&#1086;&#1075;&#1086; &#1089;&#1080;&#1085;&#1076;&#1088;&#1086;&#1084;&#1072;, &#1086;.&#1094;&#1080;&#1089;&#1090;&#1080;&#1090;, &#1086;&#1089;&#1090;&#1088;&#1099;&#1077; &#1080;&#1085;&#1092;&#1077;&#1082;&#1094;&#1080;&#1086;&#1085;&#1085;&#1099;&#1077; &#1079;&#1072;&#1073;&#1086;&#1083;&#1077;&#1074;&#1072;&#1085;&#1080;&#1103; &#1073;&#1077;&#1079; &#1103;&#1074;&#1083;&#1077;&#1085;&#1080;&#1081; &#1080;&#1085;&#1090;&#1086;&#1082;&#1089;&#1080;&#1082;&#1072;&#1094;&#1080;&#1080;);<br>o&nbsp;&nbsp;&nbsp; &#1082; &#1075;&#1088;&#1072;&#1078;&#1076;&#1072;&#1085;&#1072;&#1084;, &#1087;&#1086;&#1083;&#1091;&#1095;&#1080;&#1074;&#1096;&#1080;&#1084; &#1090;&#1088;&#1072;&#1074;&#1084;&#1099; &#1089; &#1083;&#1077;&#1075;&#1082;&#1080;&#1084;&#1080; &#1087;&#1086;&#1074;&#1088;&#1077;&#1078;&#1076;&#1077;&#1085;&#1080;&#1103;&#1084;&#1080;;<br>o&nbsp;&nbsp;&nbsp; &#1085;&#1072; &#1087;&#1077;&#1088;&#1077;&#1074;&#1086;&#1079;&#1082;&#1091; &#1073;&#1086;&#1083;&#1100;&#1085;&#1099;&#1093; &#1089; &#1087;&#1083;&#1072;&#1085;&#1086;&#1074;&#1099;&#1084; &#1085;&#1072;&#1087;&#1088;&#1072;&#1074;&#1083;&#1077;&#1085;&#1080;&#1077;&#1084; &#1074; &#1089;&#1090;&#1072;&#1094;&#1080;&#1086;&#1085;&#1072;&#1088;;<br>o&nbsp;&nbsp;&nbsp; &#1076;&#1083;&#1103; &#1074;&#1099;&#1087;&#1086;&#1083;&#1085;&#1077;&#1085;&#1080;&#1103; &#1087;&#1083;&#1072;&#1085;&#1086;&#1074;&#1099;&#1093; &#1083;&#1077;&#1095;&#1077;&#1073;&#1085;&#1099;&#1093; &#1087;&#1088;&#1086;&#1094;&#1077;&#1076;&#1091;&#1088;;<br>o&nbsp;&nbsp;&nbsp; &#1076;&#1083;&#1103; &#1082;&#1086;&#1085;&#1089;&#1090;&#1072;&#1090;&#1072;&#1094;&#1080;&#1080; &#1073;&#1080;&#1086;&#1083;&#1086;&#1075;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1081; &#1089;&#1084;&#1077;&#1088;&#1090;&#1080;.<br>&#1051;&#1080;&#1094;&#1072;, &#1074;&#1099;&#1079;&#1099;&#1074;&#1072;&#1102;&#1097;&#1080;&#1077; &#1089;&#1082;&#1086;&#1088;&#1091;&#1102; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1091;&#1102; &#1087;&#1086;&#1084;&#1086;&#1097;&#1100;, &#1086;&#1073;&#1103;&#1079;&#1072;&#1085;&#1099; &#1076;&#1072;&#1090;&#1100; &#1086;&#1090;&#1074;&#1077;&#1090;&#1099; &#1085;&#1072; &#1074;&#1089;&#1077; &#1074;&#1086;&#1087;&#1088;&#1086;&#1089;&#1099; &#1092;&#1077;&#1083;&#1100;&#1076;&#1096;&#1077;&#1088;&#1072; &#1087;&#1086; &#1087;&#1088;&#1080;&#1077;&#1084;&#1091; &#1074;&#1099;&#1079;&#1086;&#1074;&#1086;&#1074; &#1080; &#1087;&#1077;&#1088;&#1077;&#1076;&#1072;&#1095;&#1077; &#1080;&#1093; &#1074;&#1099;&#1077;&#1079;&#1076;&#1085;&#1099;&#1084; &#1073;&#1088;&#1080;&#1075;&#1072;&#1076;&#1072;&#1084; &#1080;, &#1087;&#1088;&#1080; &#1085;&#1072;&#1083;&#1080;&#1095;&#1080;&#1080; &#1074;&#1086;&#1079;&#1084;&#1086;&#1078;&#1085;&#1086;&#1089;&#1090;&#1080;, &#1074;&#1089;&#1090;&#1088;&#1077;&#1090;&#1080;&#1090;&#1100; &#1085;&#1072;&#1087;&#1088;&#1072;&#1074;&#1083;&#1077;&#1085;&#1085;&#1091;&#1102; &#1073;&#1088;&#1080;&#1075;&#1072;&#1076;&#1091; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1074; &#1085;&#1077;&#1087;&#1086;&#1089;&#1088;&#1077;&#1076;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1086;&#1081; &#1073;&#1083;&#1080;&#1079;&#1086;&#1089;&#1090;&#1080; &#1086;&#1090; &#1084;&#1077;&#1089;&#1090;&#1072; &#1074;&#1099;&#1079;&#1086;&#1074;&#1072; (&#1085;&#1072; &#1091;&#1083;&#1080;&#1094;&#1077;, &#1091; &#1087;&#1086;&#1076;&#1098;&#1077;&#1079;&#1076;&#1072; &#1080;&#1083;&#1080; &#1074;&#1086;&#1088;&#1086;&#1090; &#1076;&#1086;&#1084;&#1072; &#1080; &#1090;.&#1076;.).<br>&#1042; &#1089;&#1083;&#1091;&#1095;&#1072;&#1077; &#1086;&#1090;&#1082;&#1072;&#1079;&#1072; &#1074; &#1085;&#1072;&#1087;&#1088;&#1072;&#1074;&#1083;&#1077;&#1085;&#1080;&#1080; &#1073;&#1088;&#1080;&#1075;&#1072;&#1076;&#1099; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1082; &#1073;&#1086;&#1083;&#1100;&#1085;&#1086;&#1084;&#1091; &#1092;&#1077;&#1083;&#1100;&#1076;&#1096;&#1077;&#1088; &#1087;&#1086; &#1087;&#1088;&#1080;&#1077;&#1084;&#1091; &#1074;&#1099;&#1079;&#1086;&#1074;&#1086;&#1074; &#1080; &#1087;&#1077;&#1088;&#1077;&#1076;&#1072;&#1095;&#1080; &#1080;&#1093; &#1074;&#1099;&#1077;&#1079;&#1076;&#1085;&#1099;&#1084; &#1073;&#1088;&#1080;&#1075;&#1072;&#1076;&#1072;&#1084; &#1080;&#1083;&#1080; &#1089;&#1090;&#1072;&#1088;&#1096;&#1080;&#1081; &#1074;&#1088;&#1072;&#1095;-&#1082;&#1086;&#1085;&#1089;&#1091;&#1083;&#1100;&#1090;&#1072;&#1085;&#1090; &#1089;&#1083;&#1091;&#1078;&#1073;&#1099; &quot;03&quot; &#1076;&#1072;&#1077;&#1090; &#1088;&#1072;&#1079;&#1098;&#1103;&#1089;&#1085;&#1077;&#1085;&#1080;&#1103; &#1086; &#1087;&#1088;&#1080;&#1095;&#1080;&#1085;&#1077; &#1086;&#1090;&#1082;&#1072;&#1079;&#1072; &#1080; &#1080;&#1085;&#1092;&#1086;&#1088;&#1084;&#1072;&#1094;&#1080;&#1102; &#1086; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1080;&#1093; &#1091;&#1095;&#1088;&#1077;&#1078;&#1076;&#1077;&#1085;&#1080;&#1103;&#1093;, &#1082;&#1091;&#1076;&#1072; &#1089;&#1083;&#1077;&#1076;&#1091;&#1077;&#1090; &#1086;&#1073;&#1088;&#1072;&#1090;&#1080;&#1090;&#1100;&#1089;&#1103; &#1079;&#1072; &#1086;&#1082;&#1072;&#1079;&#1072;&#1085;&#1080;&#1077;&#1084; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; (&#1074; &#1087;&#1086;&#1083;&#1080;&#1082;&#1083;&#1080;&#1085;&#1080;&#1082;&#1091;, &#1076;&#1080;&#1089;&#1087;&#1072;&#1085;&#1089;&#1077;&#1088;, &#1090;&#1088;&#1072;&#1074;&#1084;&#1087;&#1091;&#1085;&#1082;&#1090; &#1080; &#1090;.&#1087;.).<br>&#1057;&#1090;&#1072;&#1085;&#1094;&#1080;&#1103; &#1089;&#1082;&#1086;&#1088;&#1086;&#1081; &#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1086;&#1081; &#1087;&#1086;&#1084;&#1086;&#1097;&#1080; &#1085;&#1077; &#1074;&#1099;&#1076;&#1072;&#1077;&#1090; &#1083;&#1080;&#1089;&#1090;&#1082;&#1086;&#1074; &#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1085;&#1086;&#1081; &#1085;&#1077;&#1090;&#1088;&#1091;&#1076;&#1086;&#1089;&#1087;&#1086;&#1089;&#1086;&#1073;&#1085;&#1086;&#1089;&#1090;&#1080;, &#1089;&#1091;&#1076;&#1077;&#1073;&#1085;&#1086;-&#1084;&#1077;&#1076;&#1080;&#1094;&#1080;&#1085;&#1089;&#1082;&#1080;&#1093; &#1079;&#1072;&#1082;&#1083;&#1102;&#1095;&#1077;&#1085;&#1080;&#1081;, &#1085;&#1077; &#1087;&#1088;&#1086;&#1074;&#1086;&#1076;&#1080;&#1090; &#1101;&#1082;&#1089;&#1087;&#1077;&#1088;&#1090;&#1080;&#1079;&#1091; &#1072;&#1083;&#1082;&#1086;&#1075;&#1086;&#1083;&#1100;&#1085;&#1086;&#1075;&#1086; &#1080; &#1085;&#1072;&#1088;&#1082;&#1086;&#1090;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1075;&#1086; &#1086;&#1087;&#1100;&#1103;&#1085;&#1077;&#1085;&#1080;&#1103;, &#1072; &#1090;&#1072;&#1082;&#1078;&#1077; &#1085;&#1077; &#1074;&#1099;&#1076;&#1072;&#1077;&#1090; &#1082;&#1072;&#1082;&#1080;&#1093;-&#1083;&#1080;&#1073;&#1086; &#1089;&#1087;&#1088;&#1072;&#1074;&#1086;&#1082; (&#1082;&#1088;&#1086;&#1084;&#1077; &#1089;&#1080;&#1075;&#1085;&#1072;&#1083;&#1100;&#1085;&#1086;&#1075;&#1086; &#1083;&#1080;&#1089;&#1090;&#1082;&#1072;) &#1073;&#1086;&#1083;&#1100;&#1085;&#1099;&#1084; &#1080; &#1080;&#1093; &#1088;&#1086;&#1076;&#1089;&#1090;&#1074;&#1077;&#1085;&#1085;&#1080;&#1082;&#1072;&#1084;.</strong></span></div>
<a href="./news.php"><img src="images/img0028.jpg" id="Banner2" alt="&#1053;&#1086;&#1074;&#1086;&#1089;&#1090;&#1080;" style="position:absolute;left:859px;top:376px;width:147px;height:50px;border-width:0;z-index:41;"></a>
<div id="wb_Text4" style="position:absolute;left:858px;top:428px;width:159px;height:105px;z-index:42;text-align:left;">
<span style="color:#4169E1;font-family:'Times New Roman';font-size:13px;">В Ингушетии состоялись командно-штабные учения МЧС</span><span style="color:#0000FF;font-family:'Times New Roman';font-size:13px;"><br></span><span style="color:#000000;font-family:'Times New Roman';font-size:13px;"><br>На показные учения, прошедшие сегодня в Ингушетии, ... </span><span style="color:#3CB371;font-family:'Times New Roman';font-size:13px;"><strong><a href="./page1.php">Подробно</a></strong></span></div>
<div id="wb_Text5" style="position:absolute;left:861px;top:547px;width:159px;height:105px;z-index:43;text-align:left;">
<span style="color:#0000FF;font-family:'Times New Roman';font-size:13px;">15.03.2014 г. Прошел общереспубликанский субботник<br><br></span><span style="color:#000000;font-family:'Times New Roman';font-size:13px;">&nbsp;&nbsp; С утра в республике прошел субботник в котором пр... </span><span style="color:#3CB371;font-family:'Times New Roman';font-size:13px;"><strong><a href="./page2.php">Подробно</a></strong></span></div>
<div id="wb_Text10" style="position:absolute;left:238px;top:348px;width:213px;height:51px;text-align:center;z-index:44;">
<span style="color:#000000;font-family:'Times New Roman';font-size:15px;"><strong>Главный врач ГБУ &quot;РССМП&quot;<br>Оздоев Адам Баширович</strong></span></div>
<div id="wb_Image12" style="position:absolute;left:264px;top:156px;width:165px;height:185px;z-index:45;">
<img src="images/cx.jpg" id="Image12" alt="" style="width:165px;height:185px;"></div>
<div id="wb_Text15" style="position:absolute;left:507px;top:348px;width:226px;height:34px;text-align:center;z-index:46;">
<span style="color:#000000;font-family:'Times New Roman';font-size:15px;"><strong>Республиканская станция скорой медицинской помощи</strong></span></div>
</div>
</body>
</html>