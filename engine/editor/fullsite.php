<?php
/*
=====================================================
 DataLife Engine - by SoftNews Media Group 
-----------------------------------------------------
 http://dle-news.ru/
-----------------------------------------------------
 Copyright (c) 2004-2016 SoftNews Media Group
=====================================================
 ������ ��� ������� ���������� �������
=====================================================
 ����: fullsite.php
-----------------------------------------------------
 ����������: WYSIWYG ��� �������� � �����
=====================================================
*/

if(!defined('DATALIFEENGINE'))
{
  die("Hacking attempt!");
}

$fullarea = <<<HTML
    <div class="wseditor"><textarea id="full_story" name="full_story" class="wysiwygeditor" style="width:98%;height:200px;">{full-story}</textarea></div>
HTML;

?>