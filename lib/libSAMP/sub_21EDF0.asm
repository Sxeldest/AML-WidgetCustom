; =========================================================
; Game Engine Function: sub_21EDF0
; Address            : 0x21EDF0 - 0x21EE00
; =========================================================

21EDF0:  PUSH            {R4,R6,R7,LR}
21EDF2:  ADD             R7, SP, #8
21EDF4:  MOV             R4, R0
21EDF6:  LDR             R0, [R0]; mutex
21EDF8:  BLX             LeaveCriticalSection_0
21EDFC:  MOV             R0, R4
21EDFE:  POP             {R4,R6,R7,PC}
