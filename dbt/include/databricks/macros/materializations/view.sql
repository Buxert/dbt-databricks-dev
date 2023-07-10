{% materialization view, adapter='databricks' -%}
    {{ return(create_or_replace_view()) }}

    {{ run_hooks(post_hooks) }}

{%- endmaterialization %}
