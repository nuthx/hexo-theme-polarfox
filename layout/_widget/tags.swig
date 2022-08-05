{% if theme.widget.Tags %}
    <div class="widget-header">
        <a>Tags</a>
    </div>
    <section class="widget-margin">
        {% if is_home() %}
            {{ list_tags({show_count: true, amount: 10, orderby: 'length', order: 'desc'}) }}
        {% else %}
            {{ list_tags({show_count: true, orderby: 'length', order: 'desc'}) }}
        {% endif %}
    </section>
{% endif %}