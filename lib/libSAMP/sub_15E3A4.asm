; =========================================================
; Game Engine Function: sub_15E3A4
; Address            : 0x15E3A4 - 0x15E3B6
; =========================================================

15E3A4:  PUSH            {R7,LR}
15E3A6:  MOV             R7, SP
15E3A8:  BL              sub_15E044
15E3AC:  LDR             R1, =(_ZTV19OpusExceptionEncode - 0x15E3B2); `vtable for'OpusExceptionEncode ...
15E3AE:  ADD             R1, PC; `vtable for'OpusExceptionEncode
15E3B0:  ADDS            R1, #8
15E3B2:  STR             R1, [R0]
15E3B4:  POP             {R7,PC}
