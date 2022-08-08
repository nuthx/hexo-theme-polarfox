<nav class="pagination">
    <div class="pagination-number">
        <a>{{ page.current }} / {{ page.total }}</a>
    </div>
    <div class="pagination-btn">
        {% if page.prev %}
            <a class="prev" href="{{ url_for(page.prev_link) }}">Previous</a>
        {% endif %}
        {% if page.next %}
            <a class="next" href="{{ url_for(page.next_link) }}">Next</a>
        {% endif %}
    </div>
</nav>