; =========================================================
; Game Engine Function: sub_F51A4
; Address            : 0xF51A4 - 0xF51EC
; =========================================================

F51A4:  PUSH            {R4,R5,R7,LR}
F51A6:  ADD             R7, SP, #8
F51A8:  MOV             R4, R0
F51AA:  LDR             R0, [R0,#0x10]
F51AC:  MOV             R5, R1
F51AE:  MOVS            R1, #0
F51B0:  CMP             R4, R0
F51B2:  STR             R1, [R4,#0x10]
F51B4:  BEQ             loc_F51BC
F51B6:  CBZ             R0, loc_F51C6
F51B8:  MOVS            R1, #5
F51BA:  B               loc_F51BE
F51BC:  MOVS            R1, #4
F51BE:  LDR             R2, [R0]
F51C0:  LDR.W           R1, [R2,R1,LSL#2]
F51C4:  BLX             R1
F51C6:  LDR             R0, [R5,#0x10]
F51C8:  CBZ             R0, loc_F51D6
F51CA:  CMP             R5, R0
F51CC:  BEQ             loc_F51DC
F51CE:  STR             R0, [R4,#0x10]
F51D0:  MOVS            R0, #0
F51D2:  STR             R0, [R5,#0x10]
F51D4:  B               loc_F51E8
F51D6:  MOVS            R0, #0
F51D8:  STR             R0, [R4,#0x10]
F51DA:  B               loc_F51E8
F51DC:  STR             R4, [R4,#0x10]
F51DE:  LDR             R0, [R5,#0x10]
F51E0:  LDR             R1, [R0]
F51E2:  LDR             R2, [R1,#0xC]
F51E4:  MOV             R1, R4
F51E6:  BLX             R2
F51E8:  MOV             R0, R4
F51EA:  POP             {R4,R5,R7,PC}
