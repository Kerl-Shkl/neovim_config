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

; folly queryies
(call_expression
    ((field_expression (field_identifier) @folly_cont (#any-of? @folly_cont
        "then" "thenInline" "thenValue" "thenValueInline" "thenTry" "thenTryInline" "thenError" "thenErrorInline"
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
  (#vim-match? @comment.not_interesting "\(//$\|// ?NOLINT\|// clang-format\)"))

(goto_statement "goto" @goto_op (#set! priority 105))
(case_statement "default" @default_case (#set! priority 105))
