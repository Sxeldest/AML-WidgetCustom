; =========================================================
; Game Engine Function: sub_EE924
; Address            : 0xEE924 - 0xEE938
; =========================================================

EE924:  PUSH            {R7,LR}
EE926:  MOV             R7, SP
EE928:  BLX             j__ZNSt13runtime_errorC2EPKc_0; std::runtime_error::runtime_error(char const*)
EE92C:  LDR             R1, =(_ZTVN3fmt2v812format_errorE_ptr - 0xEE932)
EE92E:  ADD             R1, PC; _ZTVN3fmt2v812format_errorE_ptr
EE930:  LDR             R1, [R1]; `vtable for'fmt::v8::format_error ...
EE932:  ADDS            R1, #8
EE934:  STR             R1, [R0]
EE936:  POP             {R7,PC}
