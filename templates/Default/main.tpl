<!DOCTYPE HTML>
<html>
<head>
    {headers}
	<meta charset="utf-8" />
	<title>�������</title>
    
    <link href="{THEME}/css/style.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="{THEME}/js/jquery-2.2.0.min.js"></script>
	<script type="text/javascript" src="{THEME}/js/d3.min.js"></script>
	<script src="{THEME}/js/main.js" type="text/javascript"></script>
</head>

<body>

    <div id="content-wrapper">
    
        <header>
        
            <div class="left-block">
                <img src="{THEME}/img/logo.png" />
                <div>
                    <span>��� �. �������</span><br />
                    ��������������� ��������� ���������� "��������������� ������� ����������� ������ ������"
                </div>
            
            </div>
            
            <div class="right-block">
            
                <span>8 (8732) 22-72-25</span>
                <p>386140 �� �. �������, �/� �����-����, ��. ���������,7 "�"</p>
            
            </div>

        </header>

        <nav id="main-nav" class="clearfix">
            
            <ul>
            
                <li [available=main]class="active"[/available]><a href="/03ri">�������</a></li>
                <li [static=about]class="active"[/static]><a href="about.html">� ���</a></li>
                <li [static=history]class="active"[/static]><a href="history.html">������� ������</a></li>
                <li [static=structura]class="active"[/static]><a href="structura.html">��������� �����</a></li>
                <li [static=personnel]class="active"[/static]><a href="personnel.html">�������� �����</a></li>
                <li [static=kadrovaya]class="active"[/static]><a href="kadrovaya.html">����� ������</a></li>
                <li [static=vakansii]class="active"[/static]><a href="vakansii.html">��������</a></li>
                <li [static=rekvizit]class="active"[/static]><a href="rekvizit.html">���������</a></li>
            
            </ul>
        
        </nav>
        
        <div id="main-news">
	
			{custom template="modules/custom-news-big" available="main" from="0" limit="1" order="date" sort="desc" cache="yes"}

			{custom template="modules/custom-news-small" available="main" from="1" limit="1" order="date" sort="desc" cache="yes"}

			{custom template="modules/custom-news-small" available="main" from="2" limit="1" order="date" sort="desc" cache="yes"}
        
        </div>
        
		[available=main]

        <div id="news">
        
            <h1>�������</h1>
        
            {info}
            {content}
        
        </div>

        [/available]

        [available=static]
			{info}
        	{content}
        [/available]
        

		[not-available=static]
        <div class="personal">
            <h1>��������</h1>
            
            <div id="carousel-wrapper">
                <div class="d-carousel">
                    <ul class="carousel">
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/1.jpg" alt="" /><div><span>8 (8732) 22-24-06</span></div></a>
                          <h4>������ �.�.</h4>
                          <p>������� ���� ��� "�����"</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/2.jpg" alt="" /><div><span>8 (8732) 22-24-07</span></div></a>
                          <h4>��������� �.�.</h4>
                          <p>����������� �������� ����� �� ���. � �����. ������</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/3.jpg" alt="" /><div><span>8 (8732) 22-70-53</span></div></a>
                          <h4>����� �.�.</h4>
                          <p>����������� �������� ����� �� ������������� �����</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/4.jpg" alt="" /><div><span>8 (8732) 22-24-11</span></div></a>
                          <h4>�������� �.�.</h4>
                          <p>������� ��������� �������� �.�.</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/5.jpg" alt="" /><div><span>8 (8732) 22-24-43</span></div></a>
                          <h4>������������ �.�.</h4>
                          <p>��������� ��</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/6.jpg" alt="" /><div><span>8 (962) 641-00-78</span></div></a>
                          <h4>����� �.�.</h4>
                          <p>����������� �������� ����� �� �� � ��</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/7.jpg" alt="" /><div><span>8 (928) 733-99-39</span></div></a>
                          <h4>������� �.�.</h4>
                          <p>��������� ������������ ������</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/8.jpg" alt="" /><div><span>8 (8732) 22-24-16</span></div></a>
                          <h4>������ �.�.</h4>
                          <p>����������� �������� ����� �� ����������� �����</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/9.jpg" alt="" /><div><span>8 (928) 918-37-78</span></div></a>
                          <h4>�������� �.�.</h4>
                          <p>������� ����</p>
                        </li>
                        <li> <a href="javascript://"><img src="{THEME}/img/personal/10.jpg" alt="" /></a>
                          <h4>���������� �.�.</h4>
                          <p>������� ��������</p>
                        </li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        
        <div class="feedback_map">
        
            <div id="map"></div>
            
            <div class="feedback">
                
                <div class="feedback-head">
                    <span>�������� ���</span><br />
                    386140 �� �. �������, �/� �����-����, ��. ���������, 7�
                </div>
                
                <form method="POST" name="feedback">
                
                    <div class="form-group"><label for="">���:</label><input name="name" required type="text"></div>
                    <div class="form-group"><label for="">��� E-Mail:</label><input name="email" required type="text"></div>
                    <div class="form-group"><label for="">���� ���������:</label><input name="subject" required type="text"></div>
                    <div class="form-group"><label for="">��� �������:</label><input placeholder="+7 (9XX) XXX-XX-XX" name="phone" required type="text"></div>

                    <div class="form-group textarea"><label for="">�����:</label><textarea name="text"></textarea></div>
                    
                    <button class="clearfix">���������</button>

                </form>
            
            </div>
        
        </div>
        [/not-available]
        
        {include file="modules/footer.tpl"}
    
    </div>

    {AJAX}
    <script type="text/javascript" src="{THEME}/js/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="{THEME}/js/libs.js"></script>
    <script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqcHRAOvIhRwrtRDjBUcgjMa6i5snG3C4&callback=initMap"></script>
</body>

</html>