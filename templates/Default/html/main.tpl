<!DOCTYPE HTML>
<html>
<head>
    {headers}
	<meta charset="utf-8" />
	<title>�������</title>
    
    <link href="{THEME}/css/style.css" type="text/css" rel="stylesheet">
</head>

<body>

    <div id="content-wrapper">
    
        <header>
        
            <div class="left-block">
                <img src="img/logo.png" />
                <div>
                    <span>��� �. �������</span><br />
                    ��������������� ��������� ���������� "��������������� ������� ����������� ������ ������"
                </div>
            
            </div>
            
            <div class="right-block">
            
                <span>8 (8732) 22-72-25</span>
                <p>386140 �� �. �������, �/� �����-����, ��. ���������,7 "�"</p>
            
            </div>
        
            <nav id="main-nav">
                
                <ul>
                
                    <li class="active"><a href="/">�������</a></li>
                    <li><a href="/about">� ���</a></li>
                    <li><a href="/history">������� ������</a></li>
                    <li><a href="/structura">��������� �����</a></li>
                    <li><a href="/personnel">�������� �����</a></li>
                    <li><a href="/kadrovaya">����� ������</a></li>
                    <li><a href="/vakansii">��������</a></li>
                    <li><a href="/rekvizit">���������</a></li>
                
                </ul>
            
            </nav>
        
        </header>
        
        <div id="main-news">
        
            <a href="/news/1">
                <div class="last shadow">
                    <p>� ������� ��������� ��������� ����� ������� ����� ��������� �������</p>
                </div>
            </a>
            
            <a href="/news/2">
                <div class="secondary shadow" style="background: url('img/news/news_2.jpg') no-repeat center;">
                    <p>������ � ��������� �� ���� �������� ���������</p>
                </div>
            </a>
            
            <a href="/news/3">
                <div class="secondary shadow" style="background: url('img/news/news_3.jpg') no-repeat center;">
                    <p>� ���� � ���������� ������ ���������, � ������� �� ����� ���...</p>
                </div>
            </a>
        
        </div>
        
        <div id="news">
        
            <h1>�������</h1>
        
            {info}
            {content}
        
        </div>
        
        <div class="personal">
            <h1>��������</h1>
            
            <div id="carousel-wrapper">
                <div class="d-carousel">
                    <ul class="carousel">
                        <li> <a href="javascript://"><img src="img/personal/1.jpg" alt="" /><div><span>8 (8732) 22-24-06</span></div></a>
                          <h4>������ �.�.</h4>
                          <p>������� ���� ��� "�����"</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/2.jpg" alt="" /><div><span>8 (8732) 22-24-07</span></div></a>
                          <h4>��������� �.�.</h4>
                          <p>����������� �������� ����� �� ���. � �����. ������</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/3.jpg" alt="" /><div><span>8 (8732) 22-70-53</span></div></a>
                          <h4>����� �.�.</h4>
                          <p>����������� �������� ����� �� ������������� �����</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/4.jpg" alt="" /><div><span>8 (8732) 22-24-11</span></div></a>
                          <h4>�������� �.�.</h4>
                          <p>������� ��������� �������� �.�.</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/5.jpg" alt="" /><div><span>8 (8732) 22-24-43</span></div></a>
                          <h4>������������ �.�.</h4>
                          <p>��������� ��</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/6.jpg" alt="" /><div><span>8 (962) 641-00-78</span></div></a>
                          <h4>����� �.�.</h4>
                          <p>����������� �������� ����� �� �� � ��</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/7.jpg" alt="" /><div><span>8 (928) 733-99-39</span></div></a>
                          <h4>������� �.�.</h4>
                          <p>��������� ������������ ������</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/8.jpg" alt="" /><div><span>8 (8732) 22-24-16</span></div></a>
                          <h4>������ �.�.</h4>
                          <p>����������� �������� ����� �� ����������� �����</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/9.jpg" alt="" /><div><span>8 (928) 918-37-78</span></div></a>
                          <h4>�������� �.�.</h4>
                          <p>������� ����</p>
                        </li>
                        <li> <a href="javascript://"><img src="img/personal/10.jpg" alt="" /></a>
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

            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqcHRAOvIhRwrtRDjBUcgjMa6i5snG3C4&callback=initMap"></script>
            
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
        
        {include file="modules/footer.tpl"}
    
    </div>

    {AJAX}
    <script type="text/javascript" src="js/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="js/libs.js"></script>
</body>

</html>