; =========================================================
; Game Engine Function: sub_10D074
; Address            : 0x10D074 - 0x10D090
; =========================================================

10D074:  PUSH            {R4,R5,R7,LR}
10D076:  ADD             R7, SP, #8
10D078:  MOV             R4, R0
10D07A:  LDR             R0, [R0,#4]
10D07C:  CBZ             R0, loc_10D080
10D07E:  POP             {R4,R5,R7,PC}
10D080:  MOVS            R0, #4; unsigned int
10D082:  BLX             j__Znwj; operator new(uint)
10D086:  MOV             R5, R0
10D088:  BL              sub_10CEC0
10D08C:  STR             R5, [R4,#4]
10D08E:  POP             {R4,R5,R7,PC}
