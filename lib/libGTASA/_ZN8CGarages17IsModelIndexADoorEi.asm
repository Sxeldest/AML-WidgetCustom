; =========================================================
; Game Engine Function: _ZN8CGarages17IsModelIndexADoorEi
; Address            : 0x314B28 - 0x314B62
; =========================================================

314B28:  PUSH            {R4,R6,R7,LR}
314B2A:  ADD             R7, SP, #8
314B2C:  CMP             R0, #0
314B2E:  BLT             loc_314B5E
314B30:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x314B36)
314B32:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
314B34:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
314B36:  LDR.W           R4, [R1,R0,LSL#2]
314B3A:  CBZ             R4, loc_314B5E
314B3C:  LDR             R0, [R4]
314B3E:  LDR             R1, [R0,#8]
314B40:  MOV             R0, R4
314B42:  BLX             R1
314B44:  CBZ             R0, loc_314B5E
314B46:  LDR             R0, [R4]
314B48:  LDR             R1, [R0,#8]
314B4A:  MOV             R0, R4
314B4C:  BLX             R1
314B4E:  LDRH            R0, [R0,#0x28]
314B50:  AND.W           R0, R0, #0x7800
314B54:  CMP.W           R0, #0x3800
314B58:  ITT EQ
314B5A:  MOVEQ           R0, #1
314B5C:  POPEQ           {R4,R6,R7,PC}
314B5E:  MOVS            R0, #0
314B60:  POP             {R4,R6,R7,PC}
