{% if theme.widget.Categories %}
    <div class="widget-header">
        <a>Categories</a>
    </div>
    <section class="widget-margin">
        {{ list_categories({show_count: true}) }}
    </section>
{% endif %}