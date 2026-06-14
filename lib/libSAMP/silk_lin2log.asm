; =========================================================
; Game Engine Function: silk_lin2log
; Address            : 0x196106 - 0x196146
; =========================================================

196106:  CLZ.W           R1, R0
19610A:  RSBS.W          R2, R1, #0x18
19610E:  BEQ             loc_196126
196110:  CMP.W           R2, #0xFFFFFFFF
196114:  BLE             loc_19611A
196116:  RORS            R0, R2
196118:  B               loc_196126
19611A:  NEGS            R3, R2
19611C:  ADDS            R2, #0x20 ; ' '
19611E:  LSL.W           R3, R0, R3
196122:  LSRS            R0, R2
196124:  ORRS            R0, R3
196126:  AND.W           R0, R0, #0x7F
19612A:  MOVS            R3, #0xB3
19612C:  RSB.W           R2, R0, #0x80
196130:  RSB.W           R1, R1, #0x1F
196134:  SMULBB.W        R2, R0, R2
196138:  ORR.W           R0, R0, R1,LSL#7
19613C:  SMULBB.W        R2, R2, R3
196140:  ADD.W           R0, R0, R2,LSR#16
196144:  BX              LR
