; =========================================================
; Game Engine Function: sub_1E71C4
; Address            : 0x1E71C4 - 0x1E7210
; =========================================================

1E71C4:  CMP             R0, #0
1E71C6:  MOV.W           R2, #0
1E71CA:  IT NE
1E71CC:  CMPNE           R1, #0
1E71CE:  BEQ             loc_1E720C
1E71D0:  LDRB.W          R12, [R1]
1E71D4:  LDRB            R2, [R0]
1E71D6:  SUB.W           R3, R12, #0x41 ; 'A'
1E71DA:  UXTB            R3, R3
1E71DC:  CMP             R3, #0x1A
1E71DE:  SUB.W           R3, R2, #0x41 ; 'A'
1E71E2:  IT CC
1E71E4:  ADDCC.W         R12, R12, #0x20 ; ' '
1E71E8:  UXTB.W          R12, R12
1E71EC:  UXTB            R3, R3
1E71EE:  CMP             R3, #0x1A
1E71F0:  IT CC
1E71F2:  ADDCC           R2, #0x20 ; ' '
1E71F4:  UXTB            R3, R2
1E71F6:  CMP             R3, R12
1E71F8:  BNE             loc_1E7208
1E71FA:  ADDS            R1, #1
1E71FC:  ADDS            R0, #1
1E71FE:  LSLS            R2, R2, #0x18
1E7200:  BNE             loc_1E71D0
1E7202:  MOVS            R2, #0
1E7204:  MOV             R0, R2
1E7206:  BX              LR
1E7208:  SUB.W           R2, R3, R12
1E720C:  MOV             R0, R2
1E720E:  BX              LR
