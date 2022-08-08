<div class="site-header">
    <h1 class="header-title">
        <a href="{{ url_for('.') }}">{{ config.title }}</a>
    </h1>

    <nav id="header-nav">
        {% if theme.menu %}
            <ul class="header-nav-items">
                {% for name, path in theme.menu %}
                    <li class="header-nav-items-li">
                        <a href="{{ url_for(path) }}">
                            {% set itemName = 'menu.' + name.toLowerCase() %}
                            {% if itemName.startsWith('menu') %}
                                {{ name }}
                            {% else %}
                                {{ __(itemName) }}
                            {% endif %}
                        </a>
                    </li>
                {% endfor %}
            </ul>
        {% endif %}
  </nav>
</div>
