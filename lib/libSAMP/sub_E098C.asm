; =========================================================
; Game Engine Function: sub_E098C
; Address            : 0xE098C - 0xE09AC
; =========================================================

E098C:  PUSH            {R4,R6,R7,LR}
E098E:  ADD             R7, SP, #8
E0990:  SUB             SP, SP, #8
E0992:  ADDS            R1, #8
E0994:  MOV             R4, R0
E0996:  BL              sub_E09B0
E099A:  LDR             R0, [R4,#8]
E099C:  CBZ             R0, loc_E09A2
E099E:  ADD             SP, SP, #8
E09A0:  POP             {R4,R6,R7,PC}
E09A2:  LDR             R1, =(aArgumentNotFou - 0xE09AA); "argument not found" ...
E09A4:  ADD             R0, SP, #0x10+var_C; this
E09A6:  ADD             R1, PC; "argument not found"
E09A8:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
