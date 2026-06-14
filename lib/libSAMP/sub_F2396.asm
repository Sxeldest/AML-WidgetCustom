; =========================================================
; Game Engine Function: sub_F2396
; Address            : 0xF2396 - 0xF23DC
; =========================================================

F2396:  MOV             R12, R0
F2398:  LSRS            R3, R1, #4
F239A:  MOVS            R0, #0
F239C:  CMP             R3, #0x7C ; '|'
F239E:  BHI             locret_F23D6
F23A0:  ADD.W           R3, R12, R1
F23A4:  MOVW            R2, #0x9C40
F23A8:  LDRB            R2, [R3,R2]
F23AA:  CBZ             R2, locret_F23D6
F23AC:  MOVW            R0, #0xEA60
F23B0:  ADD.W           R2, R12, R0
F23B4:  LDRD.W          R0, R2, [R2]
F23B8:  CMP             R0, R2
F23BA:  BEQ             loc_F23CA
F23BC:  LDR             R3, [R0]
F23BE:  CMP             R3, R1
F23C0:  BEQ             loc_F23CA
F23C2:  ADDS            R0, #4
F23C4:  CMP             R0, R2
F23C6:  BNE             loc_F23BC
F23C8:  B               loc_F23D8
F23CA:  CMP             R0, R2
F23CC:  BEQ             loc_F23D8
F23CE:  LDR             R0, [R0]
F23D0:  CMP             R0, #0
F23D2:  IT NE
F23D4:  MOVNE           R0, #1
F23D6:  BX              LR
F23D8:  MOVS            R0, #0
F23DA:  BX              LR
