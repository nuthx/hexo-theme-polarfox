{% extends "_layout.swig" %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}
    <div id="primary" class="home">
        <div class="widget-header">
            <a>Articles</a>
        </div>
        {% for post in page.posts %}
            <article class="index-post">
                <time class="index-post-time">
                    {{ full_date(post.date, 'YYYY.MM.DD') }}
                </time>
                <div class="index-post-content">
                    <h1 class="index-post-title">
                        <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
                    </h1>
                    {% if post.description %}
                        <div class="index-post-excerpt">
                            {{ post.description }}
                        </div>
                    {% elif post.excerpt %}
                        <div class="index-post-excerpt">
                            {{ post.excerpt }}
                        </div>
                    {% endif %}
                </div>
            </article>
        {% endfor %}
        {% if page.total > 1 %}
            {% include "_partial/pagination.swig" %}
        {% endif %}
    </div>
    <div id="secondary">
        {% include "_widget/custom.swig" %}
        {% include "_widget/categories.swig" %}
        {% include "_widget/tags.swig" %}
    </div>
{% endblock %}
