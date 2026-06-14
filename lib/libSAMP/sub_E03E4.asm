; =========================================================
; Game Engine Function: sub_E03E4
; Address            : 0xE03E4 - 0xE0402
; =========================================================

E03E4:  PUSH            {R4,R6,R7,LR}
E03E6:  ADD             R7, SP, #8
E03E8:  MOV             R4, R0
E03EA:  ADDS            R0, #0x18
E03EC:  BL              sub_E0408
E03F0:  CMP.W           R0, #0xFFFFFFFF
E03F4:  IT GT
E03F6:  POPGT           {R4,R6,R7,PC}
E03F8:  LDR             R1, =(aArgumentNotFou - 0xE0400); "argument not found" ...
E03FA:  MOV             R0, R4; this
E03FC:  ADD             R1, PC; "argument not found"
E03FE:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
