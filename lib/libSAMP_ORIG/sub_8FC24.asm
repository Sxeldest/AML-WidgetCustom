; =========================================================
; Game Engine Function: sub_8FC24
; Address            : 0x8FC24 - 0x8FCD0
; =========================================================

8FC24:  PUSH            {R4,R5,R7,LR}
8FC26:  ADD             R7, SP, #8
8FC28:  LDR             R2, =(dword_1ACF68 - 0x8FC32)
8FC2A:  MOVW            R4, #0x1978
8FC2E:  ADD             R2, PC; dword_1ACF68
8FC30:  LDR             R2, [R2]
8FC32:  ADD.W           LR, R2, R4
8FC36:  LDR             R3, [R2,R4]
8FC38:  CBZ             R0, loc_8FC52
8FC3A:  SUBS            R2, R3, #1
8FC3C:  ADDS            R4, R2, #1
8FC3E:  CMP             R4, #1
8FC40:  BLT             loc_8FC52
8FC42:  LDR.W           R4, [LR,#8]
8FC46:  LDR.W           R4, [R4,R2,LSL#2]
8FC4A:  SUBS            R2, #1
8FC4C:  CMP             R4, R0
8FC4E:  BNE             loc_8FC3C
8FC50:  ADDS            R3, R2, #1
8FC52:  CMP             R3, #1
8FC54:  BLT             loc_8FC9E
8FC56:  LDR.W           R0, [LR,#8]
8FC5A:  MOV             R12, #unk_40200
8FC62:  SUBS            R0, #4
8FC64:  B               loc_8FC6E
8FC66:  SUBS            R3, #1
8FC68:  ADDS            R2, R3, #1
8FC6A:  CMP             R2, #1
8FC6C:  BLS             loc_8FC9E
8FC6E:  LDR.W           R2, [R0,R3,LSL#2]
8FC72:  CMP             R2, R1
8FC74:  ITT NE
8FC76:  LDRBNE.W        R4, [R2,#0x7B]
8FC7A:  CMPNE           R4, #0
8FC7C:  BEQ             loc_8FC66
8FC7E:  LDR             R4, [R2,#8]
8FC80:  LSLS            R5, R4, #7
8FC82:  BMI             loc_8FC66
8FC84:  AND.W           R4, R4, R12
8FC88:  CMP             R4, R12
8FC8A:  BEQ             loc_8FC66
8FC8C:  LDR.W           R0, [R2,#0x308]
8FC90:  CMP             R0, #0
8FC92:  IT EQ
8FC94:  MOVEQ           R0, R2
8FC96:  POP.W           {R4,R5,R7,LR}
8FC9A:  B.W             sub_8C628
8FC9E:  LDR.W           R0, [LR,#0x13C]
8FCA2:  CMP             R0, #0
8FCA4:  ITTTT NE
8FCA6:  MOVNE           R0, #0
8FCA8:  STRBNE.W        R0, [LR,#0x1A1]
8FCAC:  STRBNE.W        R0, [LR,#0x19C]
8FCB0:  STRDNE.W        R0, R0, [LR,#0x13C]
8FCB4:  IT NE
8FCB6:  STRNE.W         R0, [LR,#0x194]
8FCBA:  LDR.W           R0, [LR,#0x124]
8FCBE:  CMP             R0, #1
8FCC0:  BLT             locret_8FCCE
8FCC2:  MOVS            R0, #0
8FCC4:  MOVS            R1, #0
8FCC6:  POP.W           {R4,R5,R7,LR}
8FCCA:  B.W             sub_98854
8FCCE:  POP             {R4,R5,R7,PC}
