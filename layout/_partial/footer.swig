<div class="site-footer">
    <span class="copyright-year">
        {% set current = date(Date.now(), "YYYY") %}
            &copy;
        {% if theme.since and theme.since != current %}
            {{ theme.since }} -
        {% endif %}
        {{ current }}
        <span class="footer-author">{{ config.author }}.</span>
        <span class="power-by">
            Powered by <a class="hexo-link" href="https://hexo.io/">Hexo</a> and Polar Fox.
        </span>
    </span>
</div>