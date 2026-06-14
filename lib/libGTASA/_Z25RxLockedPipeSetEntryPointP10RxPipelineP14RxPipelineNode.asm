; =========================================================
; Game Engine Function: _Z25RxLockedPipeSetEntryPointP10RxPipelineP14RxPipelineNode
; Address            : 0x1DFE9E - 0x1DFEE2
; =========================================================

1DFE9E:  MOV             R2, R0
1DFEA0:  MOVS            R0, #0
1DFEA2:  CBZ             R2, locret_1DFEE0
1DFEA4:  CMP             R1, #0
1DFEA6:  ITT NE
1DFEA8:  LDRNE           R3, [R2]
1DFEAA:  CMPNE           R3, #0
1DFEAC:  BEQ             locret_1DFEE0
1DFEAE:  LDR             R0, [R1]
1DFEB0:  CMP             R0, #0
1DFEB2:  ITT EQ
1DFEB4:  MOVEQ           R0, #0
1DFEB6:  BXEQ            LR
1DFEB8:  LDR             R0, [R2,#8]
1DFEBA:  SUBS            R1, R1, R0
1DFEBC:  ADDS.W          R0, R1, #0x28 ; '('
1DFEC0:  MOV.W           R0, #0
1DFEC4:  IT EQ
1DFEC6:  BXEQ            LR
1DFEC8:  MOVW            R3, #0xCCCD
1DFECC:  ASRS            R1, R1, #3
1DFECE:  MOVT            R3, #0xCCCC
1DFED2:  LDR.W           R12, [R2,#4]
1DFED6:  MULS            R1, R3
1DFED8:  CMP             R1, R12
1DFEDA:  ITT CC
1DFEDC:  STRCC           R1, [R2,#0x28]
1DFEDE:  MOVCC           R0, R2
1DFEE0:  BX              LR
