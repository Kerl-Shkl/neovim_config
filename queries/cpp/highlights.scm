;; extends


((noexcept) @noexcept (#set! priority 105))

(reference_declarator ["&" "&&"] @refdecl (#set! priority 105))
(abstract_reference_declarator ["&" "&&"] @refdecl (#set! priority 105))

[
  "public"
  "private"
  "protected"
  "final"
  "virtual"
] @keyword.class.modifier
