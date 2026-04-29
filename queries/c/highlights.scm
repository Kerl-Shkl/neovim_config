;; extends

(pointer_declarator "*" @refdecl (#set! priority 105))
(abstract_pointer_declarator "*" @refdecl (#set! priority 105))

; Not interesting comments
((comment) @comment.not_interesting
  (#vim-match? @comment.not_interesting "\(//$\|// ?NOLINT\|// clang-format\)"))

(goto_statement "goto" @goto_op (#set! priority 105))
(case_statement "default" @default_case (#set! priority 105))
