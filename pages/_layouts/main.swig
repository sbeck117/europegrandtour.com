<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>{% if !homePage %}{% block title %}{% endblock %} – {% endif %}Europe Grand Tour – Tours of Europe for Pinellas County Students</title>

    <link href="styles/main.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/ico" href="images/favicon.ico" />
    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic' rel='stylesheet' type='text/css'>
    <link rel="icon" type="image/ico" href="images/favicon.ico" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="tour, trip, europe, art, italy, florida, paris, london, pinellas, east lake, tarpon, oldsmar" />
    <meta name="description" content="{% block description %}{% endblock %}" />
  </head>

  <body>
    <div id="main">

      <header>
        <a href="/"><img src="/images/logo_header.png" width="256" alt="Europe Grand Tour logo" /></a>
        <nav>
          <a id="pull" href="#"> </a>
          {% include '../_common/navigation.swig' %}
        </nav>

        <div class="clear"></div>
      </header>

      {% block content %}{% endblock %}

      <footer>
        <div id="social">
          <a href="https://www.facebook.com/egtour" target="_blank"><img src="/images/facebook.png" /></a>
        </div>
        <p>Site designed by <a href="http://stevenpetryk.com">Steven Petryk</a>.</p>
        <p>Florida Seller of Travel Ref. No. ST37374</p>
        <p>Graphics and design &copy; 2013 Europe Grand Tour, LLC</p>
      </footer>

    </div>
    <script src="/scripts/jquery.js"></script>
    <script src="/scripts/fastclick.js"></script>
    <script src="/scripts/main.js"></script>
  </body>
</html>
