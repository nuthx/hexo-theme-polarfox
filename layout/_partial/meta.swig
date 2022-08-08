{# Website mata #}
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,minimum-scale=1,maximum-scale=1">

{# Website description #}
{% if page.description %}
    <meta name="description" content="{{ page.description }}"/>
{% elif page.title %}
    <meta name="description" content="{{ page.title }}"/>
{% elif config.description %}
    <meta name="description" content="{{ config.description }}"/>
{% endif %}

{# Website keywords #}
{% if page.keywords %}
    <meta name="keywords" content="{{ page.keywords }}" />
{% elif page.tags and page.tags.length %}
    <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% endif %}

{# Website favicon #}
{% if theme.favicon %}
    <link rel="shortcut icon" type="image/x-icon" href="{{ url_for(theme.favicon) }}" />
{% endif %}

{# Canonical, good for google search engine #}
<link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/>

{# Open Graph #}
{{ open_graph() }}

{# Theme styling #}
<link rel="stylesheet" type="text/css" href="{{ url_for('css/style.css') }}" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet'>