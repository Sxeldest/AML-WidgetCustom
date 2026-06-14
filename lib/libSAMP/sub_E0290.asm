; =========================================================
; Game Engine Function: sub_E0290
; Address            : 0xE0290 - 0xE02B0
; =========================================================

E0290:  PUSH            {R4,R6,R7,LR}
E0292:  ADD             R7, SP, #8
E0294:  SUB             SP, SP, #8
E0296:  ADDS            R1, #8
E0298:  MOV             R4, R0
E029A:  BL              sub_DCD26
E029E:  LDR             R0, [R4,#8]
E02A0:  CBZ             R0, loc_E02A6
E02A2:  ADD             SP, SP, #8
E02A4:  POP             {R4,R6,R7,PC}
E02A6:  LDR             R1, =(aArgumentNotFou - 0xE02AE); "argument not found" ...
E02A8:  ADD             R0, SP, #0x10+var_C; this
E02AA:  ADD             R1, PC; "argument not found"
E02AC:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
