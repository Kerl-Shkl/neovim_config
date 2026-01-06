
(lambda_expression
  (lambda_capture_specifier "[" @delimiter "]" @delimiter)
  (lambda_declarator (parameter_list "(" @delimiter ")" @delimiter))
  (compound_statement "{" @delimiter "}" @delimiter)
) @container
