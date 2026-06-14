; =========================================================
; Game Engine Function: sub_1065DC
; Address            : 0x1065DC - 0x1065FA
; =========================================================

1065DC:  LDR             R1, [R0]
1065DE:  LDR             R0, [R0,#4]
1065E0:  LDR             R2, =0x434C4E
1065E2:  LSRS            R1, R1, #8
1065E4:  EOR.W           R2, R2, R0,LSR#8
1065E8:  ORR.W           R0, R1, R0,LSL#24
1065EC:  LDR             R1, =0x47432B2B
1065EE:  EORS            R0, R1
1065F0:  ORRS            R0, R2
1065F2:  CLZ.W           R0, R0
1065F6:  LSRS            R0, R0, #5
1065F8:  BX              LR
