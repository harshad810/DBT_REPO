{% 
    macro calculate_tax(coln_name)
%}

({{ coln_name}} * 0.18)

{% endmacro %}