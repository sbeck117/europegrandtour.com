<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>{% if !homePage %}{% block title %}{% endblock %} – {% endif %}TITLE HERE</title>

    <link href="styles/main.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/ico" href="images/favicon.ico" />
    <link rel="icon" type="image/ico" href="images/favicon.ico" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="" />
    <meta name="description" content="{% block description %}{% endblock %}" />
  </head>
  <body>
    {% block content %}{% endblock %}

    <script src="scripts/bundle.js"></script>
  </body>
</html>
