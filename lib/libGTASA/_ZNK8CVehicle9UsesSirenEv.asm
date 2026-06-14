; =========================================================
; Game Engine Function: _ZNK8CVehicle9UsesSirenEv
; Address            : 0x584C7C - 0x584CD4
; =========================================================

584C7C:  LDRSH.W         R1, [R0,#0x26]
584C80:  MOVW            R2, #0x20A
584C84:  MOVS            R0, #1
584C86:  CMP             R1, R2
584C88:  BLE             loc_584CA6
584C8A:  SUB.W           R2, R1, #0x254
584C8E:  CMP             R2, #5
584C90:  BHI             loc_584C96
584C92:  CMP             R2, #4
584C94:  BNE             locret_584CA4
584C96:  MOVW            R2, #0x20B
584C9A:  CMP             R1, R2
584C9C:  IT NE
584C9E:  CMPNE.W         R1, #0x210
584CA2:  BNE             loc_584CC8
584CA4:  BX              LR
584CA6:  SUBW            R2, R1, #0x197
584CAA:  CMP             R2, #0x1A
584CAC:  BHI             loc_584CCC
584CAE:  MOVS            R3, #1
584CB0:  LSL.W           R12, R3, R2
584CB4:  MOV             R3, #0x4910201
584CBC:  TST.W           R12, R3
584CC0:  IT NE
584CC2:  BXNE            LR
584CC4:  CMP             R2, #0x19
584CC6:  BNE             loc_584CCC
584CC8:  MOVS            R0, #0
584CCA:  BX              LR
584CCC:  CMP.W           R1, #0x1EA
584CD0:  BEQ             locret_584CA4
584CD2:  B               loc_584CC8
