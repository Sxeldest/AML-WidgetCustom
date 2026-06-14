; =========================================================
; Game Engine Function: _Z19RxLockedPipeAddPathP10RxPipelinePjP14RxPipelineNode
; Address            : 0x1DFD10 - 0x1DFD72
; =========================================================

1DFD10:  MOV             R12, R0
1DFD12:  CMP.W           R12, #0
1DFD16:  MOV.W           R0, #0
1DFD1A:  IT NE
1DFD1C:  CMPNE           R1, #0
1DFD1E:  BEQ             locret_1DFD70
1DFD20:  LDR.W           R3, [R12]
1DFD24:  CMP             R3, #0
1DFD26:  ITT NE
1DFD28:  MOVNE           R0, #0
1DFD2A:  CMPNE           R2, #0
1DFD2C:  BEQ             locret_1DFD70
1DFD2E:  LDR             R3, [R1]
1DFD30:  ADDS            R3, #1
1DFD32:  BNE             locret_1DFD70
1DFD34:  LDR             R0, [R2]
1DFD36:  CMP             R0, #0
1DFD38:  ITT EQ
1DFD3A:  MOVEQ           R0, #0
1DFD3C:  BXEQ            LR
1DFD3E:  LDR.W           R0, [R12,#8]
1DFD42:  SUBS            R2, R2, R0
1DFD44:  ADDS.W          R0, R2, #0x28 ; '('
1DFD48:  MOV.W           R0, #0
1DFD4C:  IT EQ
1DFD4E:  BXEQ            LR
1DFD50:  PUSH            {R7,LR}
1DFD52:  MOV             R7, SP
1DFD54:  MOVW            R3, #0xCCCD
1DFD58:  ASRS            R2, R2, #3
1DFD5A:  MOVT            R3, #0xCCCC
1DFD5E:  LDR.W           LR, [R12,#4]
1DFD62:  MULS            R2, R3
1DFD64:  CMP             R2, LR
1DFD66:  POP.W           {R7,LR}
1DFD6A:  ITT CC
1DFD6C:  STRCC           R2, [R1]
1DFD6E:  MOVCC           R0, R12
1DFD70:  BX              LR
