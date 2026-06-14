; =========================================================
; Game Engine Function: sub_F64A0
; Address            : 0xF64A0 - 0xF64C4
; =========================================================

F64A0:  PUSH            {R4,R6,R7,LR}
F64A2:  ADD             R7, SP, #8
F64A4:  LDR             R1, [R0]
F64A6:  CBZ             R1, locret_F64C2
F64A8:  MOV             R4, R0
F64AA:  STR             R1, [R0,#4]
F64AC:  LDR             R0, [R0,#8]
F64AE:  SUBS            R0, R0, R1
F64B0:  ASRS            R2, R0, #2
F64B2:  ADD.W           R0, R4, #0x10
F64B6:  BL              sub_F633A
F64BA:  MOVS            R0, #0
F64BC:  STRD.W          R0, R0, [R4]
F64C0:  STR             R0, [R4,#8]
F64C2:  POP             {R4,R6,R7,PC}
