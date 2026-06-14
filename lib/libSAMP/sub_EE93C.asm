; =========================================================
; Game Engine Function: sub_EE93C
; Address            : 0xEE93C - 0xEE962
; =========================================================

EE93C:  PUSH            {R4,R6,R7,LR}
EE93E:  ADD             R7, SP, #8
EE940:  MOVS            R0, #8; thrown_size
EE942:  BLX             j___cxa_allocate_exception
EE946:  LDR             R1, =(aNoFormat - 0xEE94E); "no format" ...
EE948:  MOV             R4, R0
EE94A:  ADD             R1, PC; "no format"
EE94C:  BL              sub_EE924
EE950:  LDR             R0, =(_ZTIN3fmt2v812format_errorE_ptr - 0xEE958)
EE952:  LDR             R2, =(_ZN3fmt2v812format_errorD2Ev_ptr - 0xEE95A)
EE954:  ADD             R0, PC; _ZTIN3fmt2v812format_errorE_ptr
EE956:  ADD             R2, PC; _ZN3fmt2v812format_errorD2Ev_ptr
EE958:  LDR             R1, [R0]; lptinfo
EE95A:  MOV             R0, R4; void *
EE95C:  LDR             R2, [R2]; fmt::v8::format_error::~format_error() ; void (*)(void *)
EE95E:  BLX             j___cxa_throw
