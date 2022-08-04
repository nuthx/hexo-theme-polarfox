{% if theme.widget.Custom %}
    <div class="widget-header">
        <a>{{ theme.widget_custom.title }}</a>
    </div>
    <section class="widget-margin">
        {{ theme.widget_custom.content }}
    </section>
{% endif %}