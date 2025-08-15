;; extends


((noexcept) @noexcept (#set! priority 105))

(reference_declarator ["&" "&&"] @refdecl (#set! priority 105))
(abstract_reference_declarator ["&" "&&"] @refdecl (#set! priority 105))
(pointer_declarator "*" @refdecl (#set! priority 105))
(abstract_pointer_declarator "*" @refdecl (#set! priority 105))

[
  "public"
  "private"
  "protected"
  "final"
  "virtual"
] @keyword.class.modifier

(lambda_capture_specifier ["[" "]"] @lambda_declare_punct (#set! priority 105))
(lambda_expression (compound_statement ["{" "}"] @lambda_declare_punct (#set! priority 105)))
(lambda_declarator (parameter_list ["(" ")"] @lambda_declare_punct (#set! priority 105)))

; folly queryies
(call_expression
    ((field_expression (field_identifier) @folly_cont (#any-of? @folly_cont
        "then" "thenValue" "thenValueInline" "thenTry" "thenTryInline" "thenError" "thenErrorInline"
    )))
    (argument_list ["(" ")"] @folly_cont_braces)
)

(qualified_identifier
  (namespace_identifier) @nt (#lua-match? @nt "^[^%u]") (#not-lua-match? @nt "_t$")
  "::" @namespace_operator (#set! priority 105)
)

((namespace_identifier) @type
  (#lua-match? @type "_t$"))

; ("::" @namespace_operator)

; Not interesting comments
((comment) @comment.not_interesting
  (#lua-match? @comment.not_interesting "//$"))

((comment) @comment.not_interesting
  (#lua-match? @comment.not_interesting "// ?NOLINT"))
