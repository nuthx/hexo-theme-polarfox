<!DOCTYPE html>
<html lang="{{ config.language }}">
    <head>
        {% include '_partial/meta.swig' %}
        <title>{% block title %}{% endblock %}</title>
    </head>

    <body>
        <div id="page">
            <header id="akkoheader">
                {%- include '_partial/header.swig' %}
            </header>
            
            <div id="content">
                {% block content %}{% endblock %}
            </div>

            <footer id="akkofooter">
                {%- include '_partial/footer.swig' %}
            </footer>
        </div>
    </body>
    <script type="text/javascript" src="{{ url_for('lib') }}/zooming/zooming.js"></script>
    <script>
        document.getElementsByTagName("img")[0].setAttribute("data-action","zoom");
        new Zooming({
            bgColor: 'rgb(34, 34, 34)',
            bgOpacity: '0.85',
            customSize: '100%'
        }).listen('img')
    </script>
</html>
