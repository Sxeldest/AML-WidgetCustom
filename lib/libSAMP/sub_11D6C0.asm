; =========================================================
; Game Engine Function: sub_11D6C0
; Address            : 0x11D6C0 - 0x11D6EC
; =========================================================

11D6C0:  PUSH            {R4,R6,R7,LR}
11D6C2:  ADD             R7, SP, #8
11D6C4:  MOV             R4, R0
11D6C6:  LDR             R0, [R1,#0x10]
11D6C8:  CBZ             R0, loc_11D6D6
11D6CA:  CMP             R1, R0
11D6CC:  BEQ             loc_11D6DC
11D6CE:  LDR             R1, [R0]
11D6D0:  LDR             R1, [R1,#8]
11D6D2:  BLX             R1
11D6D4:  B               loc_11D6D8
11D6D6:  MOVS            R0, #0
11D6D8:  STR             R0, [R4,#0x10]
11D6DA:  B               loc_11D6E8
11D6DC:  STR             R4, [R4,#0x10]
11D6DE:  LDR             R0, [R1,#0x10]
11D6E0:  LDR             R1, [R0]
11D6E2:  LDR             R2, [R1,#0xC]
11D6E4:  MOV             R1, R4
11D6E6:  BLX             R2
11D6E8:  MOV             R0, R4
11D6EA:  POP             {R4,R6,R7,PC}
