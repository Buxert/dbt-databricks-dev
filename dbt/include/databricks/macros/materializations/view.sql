{% materialization view, adapter='databricks' -%}
    {{ run_hooks(pre_hooks) }}
    {{ return(create_or_replace_view()) }}
    {{ run_hooks(post_hooks) }}
{%- endmaterialization %}
