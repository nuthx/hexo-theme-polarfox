{% if theme.widget.Tags %}
    <div class="widget-header">
        <a>Tags</a>
    </div>
    <section class="widget-margin">
        {% if is_home() %}
            {{ list_tags({show_count: true, amount: 8, orderby: 'count'}) }}
        {% else %}
            {{ list_tags({show_count: true, orderby: 'count', order: 1}) }}
        {% endif %}
    </section>
{% endif %}