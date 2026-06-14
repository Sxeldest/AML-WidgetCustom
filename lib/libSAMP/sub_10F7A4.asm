; =========================================================
; Game Engine Function: sub_10F7A4
; Address            : 0x10F7A4 - 0x10F7EC
; =========================================================

10F7A4:  PUSH            {R4,R5,R7,LR}
10F7A6:  ADD             R7, SP, #8
10F7A8:  MOV             R4, R0
10F7AA:  LDR             R0, [R0,#0x10]
10F7AC:  MOV             R5, R1
10F7AE:  MOVS            R1, #0
10F7B0:  CMP             R4, R0
10F7B2:  STR             R1, [R4,#0x10]
10F7B4:  BEQ             loc_10F7BC
10F7B6:  CBZ             R0, loc_10F7C6
10F7B8:  MOVS            R1, #5
10F7BA:  B               loc_10F7BE
10F7BC:  MOVS            R1, #4
10F7BE:  LDR             R2, [R0]
10F7C0:  LDR.W           R1, [R2,R1,LSL#2]
10F7C4:  BLX             R1
10F7C6:  LDR             R0, [R5,#0x10]
10F7C8:  CBZ             R0, loc_10F7D6
10F7CA:  CMP             R5, R0
10F7CC:  BEQ             loc_10F7DC
10F7CE:  STR             R0, [R4,#0x10]
10F7D0:  MOVS            R0, #0
10F7D2:  STR             R0, [R5,#0x10]
10F7D4:  B               loc_10F7E8
10F7D6:  MOVS            R0, #0
10F7D8:  STR             R0, [R4,#0x10]
10F7DA:  B               loc_10F7E8
10F7DC:  STR             R4, [R4,#0x10]
10F7DE:  LDR             R0, [R5,#0x10]
10F7E0:  LDR             R1, [R0]
10F7E2:  LDR             R2, [R1,#0xC]
10F7E4:  MOV             R1, R4
10F7E6:  BLX             R2
10F7E8:  MOV             R0, R4
10F7EA:  POP             {R4,R5,R7,PC}
