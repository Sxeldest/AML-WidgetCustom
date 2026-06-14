; =========================================================
; Game Engine Function: silk_sigm_Q15
; Address            : 0x1A7FD4 - 0x1A8020
; =========================================================

1A7FD4:  CMP.W           R0, #0xFFFFFFFF
1A7FD8:  BLE             loc_1A7FFC
1A7FDA:  CMP             R0, #0xBF
1A7FDC:  ITT GT
1A7FDE:  MOVWGT          R0, #0x7FFF
1A7FE2:  BXGT            LR
1A7FE4:  ADR             R2, dword_1A8020
1A7FE6:  LSRS            R1, R0, #5
1A7FE8:  ADR             R3, dword_1A8038
1A7FEA:  AND.W           R0, R0, #0x1F
1A7FEE:  LDRSH.W         R2, [R2,R1,LSL#2]
1A7FF2:  LDR.W           R1, [R3,R1,LSL#2]
1A7FF6:  SMLABB.W        R0, R2, R0, R1
1A7FFA:  BX              LR
1A7FFC:  CMN.W           R0, #0xBF
1A8000:  ITT LT
1A8002:  MOVLT           R0, #0
1A8004:  BXLT            LR
1A8006:  NEGS            R0, R0
1A8008:  ADR             R2, dword_1A8020
1A800A:  ADR             R3, dword_1A8050
1A800C:  ASRS            R1, R0, #5
1A800E:  AND.W           R0, R0, #0x1F
1A8012:  LDRSH.W         R2, [R2,R1,LSL#2]
1A8016:  LDR.W           R1, [R3,R1,LSL#2]
1A801A:  MLS.W           R0, R2, R0, R1
1A801E:  BX              LR
