{% extends "_layout.swig" %}

{% block title %} {{ page.title }} - {{ config.title }} {% endblock %}

{% block content %}
    <div id="primary">
        <article class="post">
            <header class="post-header">
                <a class="post-title">{{ page.title }}</a>
                <div class="post-info">
                    <time class="post-time">
                        {{ full_date(page.date, 'YYYY.MM.DD') }}
                    </time>
                    {% if page.categories and page.categories.length %}
                        <div class="post-categories">
                            {% for categories in page.categories %}
                                <a href="{{ url_for(categories.path) }}">{{ categories.name }}</a>
                            {% endfor %}
                        </div>
                    {% endif %}
                    {% if page.tags and page.tags.length %}
                        <div class="post-tags">
                            {% for tags in page.tags %}
                                <a href="{{ url_for(tags.path) }}">{{ tags.name }}</a>
                            {% endfor %}
                        </div>
                    {% endif %}
                    <div class="post-words">
                        <a>{{ symbolsCount(page) }}，{{ symbolsTime(page) }}</a>
                    </div>
                </div>
            </header>
            {% if page.description %}
                <div class="post-excerpt">
                    {{ page.description }}
                </div>
            {% elif page.excerpt %}
                <div class="post-excerpt">
                    {{ page.excerpt }}
                </div>
            {% endif %}
            <div class="post-content">
                {{ page.content }}
            </div>
            {% if page.sourceurl %}
                <div class="post-sourceurl">
                    原文<a class="post-point">·</a><a href="{{ page.sourceurl }}">{{ page.sourceurl }}</a>
                </div>
            {% endif %}
        </article>
    </div>
{% endblock %}
