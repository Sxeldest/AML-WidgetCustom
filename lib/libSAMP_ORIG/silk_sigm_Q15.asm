; =========================================================
; Game Engine Function: silk_sigm_Q15
; Address            : 0xCA214 - 0xCA260
; =========================================================

CA214:  CMP.W           R0, #0xFFFFFFFF
CA218:  BLE             loc_CA23C
CA21A:  CMP             R0, #0xBF
CA21C:  ITT GT
CA21E:  MOVWGT          R0, #0x7FFF
CA222:  BXGT            LR
CA224:  ADR             R2, dword_CA260
CA226:  LSRS            R1, R0, #5
CA228:  ADR             R3, dword_CA278
CA22A:  AND.W           R0, R0, #0x1F
CA22E:  LDRSH.W         R2, [R2,R1,LSL#2]
CA232:  LDR.W           R1, [R3,R1,LSL#2]
CA236:  SMLABB.W        R0, R2, R0, R1
CA23A:  BX              LR
CA23C:  CMN.W           R0, #0xBF
CA240:  ITT LT
CA242:  MOVLT           R0, #0
CA244:  BXLT            LR
CA246:  NEGS            R0, R0
CA248:  ADR             R2, dword_CA260
CA24A:  ADR             R3, dword_CA290
CA24C:  ASRS            R1, R0, #5
CA24E:  AND.W           R0, R0, #0x1F
CA252:  LDRSH.W         R2, [R2,R1,LSL#2]
CA256:  LDR.W           R1, [R3,R1,LSL#2]
CA25A:  MLS.W           R0, R2, R0, R1
CA25E:  BX              LR
