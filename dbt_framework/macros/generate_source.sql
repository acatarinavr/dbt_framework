{# This macro uses the codegen library to create the base yml file #}
{#  run this command dbt --quiet run-operation generate_source_yml > models/test.yml #}

{% macro generate_source_yml() %}
    

    {{ codegen.generate_source(schema_name = 'TASTY_BYTES_SAMPLE_DATA', 
                               generate_columns = true,
                               include_descriptions = true,
                               include_data_types = true )}}


{% endmacro %}
