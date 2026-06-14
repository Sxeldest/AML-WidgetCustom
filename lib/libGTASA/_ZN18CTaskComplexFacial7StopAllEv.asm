; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacial7StopAllEv
; Address            : 0x5411BC - 0x5411D8
; =========================================================

5411BC:  PUSH            {R4,R6,R7,LR}
5411BE:  ADD             R7, SP, #8
5411C0:  MOV             R4, R0
5411C2:  LDR             R0, [R4,#8]
5411C4:  LDR             R1, [R0]
5411C6:  LDR             R1, [R1,#0x14]
5411C8:  BLX             R1
5411CA:  MOVW            R1, #0x12F
5411CE:  CMP             R0, R1
5411D0:  ITT EQ
5411D2:  MOVEQ           R0, #1
5411D4:  STRBEQ          R0, [R4,#0xE]
5411D6:  POP             {R4,R6,R7,PC}
