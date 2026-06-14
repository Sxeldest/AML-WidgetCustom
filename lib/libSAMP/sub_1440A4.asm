; =========================================================
; Game Engine Function: sub_1440A4
; Address            : 0x1440A4 - 0x1440D8
; =========================================================

1440A4:  LDR             R2, [R0]
1440A6:  LDR             R1, [R0,#8]
1440A8:  CMP             R1, R2
1440AA:  BGE             loc_1440C4
1440AC:  LDR             R2, [R0,#0xC]
1440AE:  ASRS            R3, R1, #3
1440B0:  LDRB            R2, [R2,R3]
1440B2:  ADDS            R3, R1, #1
1440B4:  STR             R3, [R0,#8]
1440B6:  AND.W           R0, R1, #7
1440BA:  LSL.W           R0, R2, R0
1440BE:  UXTB            R0, R0
1440C0:  LSRS            R0, R0, #7
1440C2:  B               loc_1440C6
1440C4:  MOVS            R0, #0
1440C6:  LDR             R1, =(off_234AA8 - 0x1440CC)
1440C8:  ADD             R1, PC; off_234AA8
1440CA:  LDR             R1, [R1]; byte_2633CC
1440CC:  LDRB            R1, [R1]
1440CE:  CMP             R0, R1
1440D0:  IT NE
1440D2:  BNE.W           loc_1108A0
1440D6:  BX              LR
