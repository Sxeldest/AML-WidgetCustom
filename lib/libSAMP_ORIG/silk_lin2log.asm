; =========================================================
; Game Engine Function: silk_lin2log
; Address            : 0xB7EE2 - 0xB7F22
; =========================================================

B7EE2:  CLZ.W           R1, R0
B7EE6:  RSBS.W          R2, R1, #0x18
B7EEA:  BEQ             loc_B7F02
B7EEC:  CMP.W           R2, #0xFFFFFFFF
B7EF0:  BLE             loc_B7EF6
B7EF2:  RORS            R0, R2
B7EF4:  B               loc_B7F02
B7EF6:  NEGS            R3, R2
B7EF8:  ADDS            R2, #0x20 ; ' '
B7EFA:  LSL.W           R3, R0, R3
B7EFE:  LSRS            R0, R2
B7F00:  ORRS            R0, R3
B7F02:  AND.W           R0, R0, #0x7F
B7F06:  MOVS            R3, #0xB3
B7F08:  RSB.W           R2, R0, #0x80
B7F0C:  RSB.W           R1, R1, #0x1F
B7F10:  SMULBB.W        R2, R0, R2
B7F14:  ORR.W           R0, R0, R1,LSL#7
B7F18:  SMULBB.W        R2, R2, R3
B7F1C:  ADD.W           R0, R0, R2,LSR#16
B7F20:  BX              LR
