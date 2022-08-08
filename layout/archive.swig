{% extends "_layout.swig" %}

{% block title %}
    {% if page.archive %}
        {{ __('menu.archives') }} - {{ config.title }}
    {% elif page.category %}
        {{ page.category }} - {{ config.title }}
    {% elif page.tag %}
        {{ page.tag }} - {{ config.title }}
    {% endif %}
{% endblock %}

{% block content %}
    <div id="primary">
        {% if page.category %}
            <div class="archive-header">
                <a>{{ page.category }}</a>
            </div>
        {% elif page.tag %}
            <div class="archive-header">
                <a>{{ page.tag }}</a>
            </div>
        {% endif %}

        {% for post in page.posts %}
            {% if page.archive %}
                {% set year %}
                {% set post.year = date(post.date, 'YYYY') %}

                {% if post.year !== year %}
                    {% set year = post.year %}
                    <div class="archive-header archive-year">
                        <a>{{ year }}</a>
                    </div>
                {% endif %}
            {% endif %}

            <article class="archive-post">
                <time class="index-post-time">
                    {% if page.archive %}
                        {{ date(post.date, 'MM.DD') }}
                    {% else %}
                        {{ date(post.date, 'YYYY.MM.DD') }}
                    {% endif %}
                </time>
                <a href="{{ url_for(post.path) }}" class="archive-title">{{ post.title }}</a>
            </article>
        {% endfor %}
    </div>

    <div id="secondary">
        {% if page.archive %}
            {% include "_widget/archives.swig" %}
        {% elif page.category %}
            {% include "_widget/categories.swig" %}
        {% elif page.tag %}
            {% include "_widget/tags.swig" %}
        {% endif %}
    </div>
{% endblock %}