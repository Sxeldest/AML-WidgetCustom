; =========================================================
; Game Engine Function: sub_15FC08
; Address            : 0x15FC08 - 0x15FD3E
; =========================================================

15FC08:  PUSH            {R4-R7,LR}
15FC0A:  ADD             R7, SP, #0xC
15FC0C:  PUSH.W          {R8-R11}
15FC10:  SUB             SP, SP, #0xC
15FC12:  LDR             R6, [R1,#4]
15FC14:  MOV             R5, R2
15FC16:  MOV             R2, R0
15FC18:  MOV.W           R0, #0x55555555
15FC1C:  MOV             R9, R1
15FC1E:  MOV.W           R1, #0x33333333
15FC22:  AND.W           R0, R0, R6,LSR#1
15FC26:  LDR.W           R10, [R5,#4]
15FC2A:  SUBS            R0, R6, R0
15FC2C:  AND.W           R1, R1, R0,LSR#2
15FC30:  BIC.W           R0, R0, #0xCCCCCCCC
15FC34:  ADD             R0, R1
15FC36:  MOV.W           R1, #0x1010101
15FC3A:  ADD.W           R0, R0, R0,LSR#4
15FC3E:  BIC.W           R0, R0, #0xF0F0F0F0
15FC42:  MULS            R0, R1
15FC44:  MOV.W           R8, R0,LSR#24
15FC48:  CMP.W           R8, #1
15FC4C:  BHI             loc_15FC56
15FC4E:  SUBS            R0, R6, #1
15FC50:  AND.W           R10, R10, R0
15FC54:  B               loc_15FC68
15FC56:  CMP             R10, R6
15FC58:  BCC             loc_15FC68
15FC5A:  MOV             R0, R10
15FC5C:  MOV             R1, R6
15FC5E:  MOV             R4, R2
15FC60:  BLX             sub_221798
15FC64:  MOV             R2, R4
15FC66:  MOV             R10, R1
15FC68:  LDR.W           R11, [R9]
15FC6C:  LDR.W           R0, [R11,R10,LSL#2]
15FC70:  MOV             R4, R0
15FC72:  LDR             R0, [R0]
15FC74:  CMP             R0, R5
15FC76:  BNE             loc_15FC70
15FC78:  ADD.W           R12, R9, #8
15FC7C:  CMP             R4, R12
15FC7E:  BEQ             loc_15FCA6
15FC80:  LDR             R0, [R4,#4]
15FC82:  CMP.W           R8, #1
15FC86:  BHI             loc_15FC8E
15FC88:  SUBS            R1, R6, #1
15FC8A:  ANDS            R0, R1
15FC8C:  B               loc_15FCA2
15FC8E:  CMP             R0, R6
15FC90:  BCC             loc_15FCA2
15FC92:  MOV             R1, R6
15FC94:  STRD.W          R12, R2, [SP,#0x28+var_24]
15FC98:  BLX             sub_221798
15FC9C:  LDRD.W          R12, R2, [SP,#0x28+var_24]
15FCA0:  MOV             R0, R1
15FCA2:  CMP             R0, R10
15FCA4:  BEQ             loc_15FCD6
15FCA6:  LDR             R0, [R5]
15FCA8:  CBZ             R0, loc_15FCD0
15FCAA:  LDR             R0, [R0,#4]
15FCAC:  CMP.W           R8, #1
15FCB0:  BHI             loc_15FCB8
15FCB2:  SUBS            R1, R6, #1
15FCB4:  ANDS            R0, R1
15FCB6:  B               loc_15FCCC
15FCB8:  CMP             R0, R6
15FCBA:  BCC             loc_15FCCC
15FCBC:  MOV             R1, R6
15FCBE:  STRD.W          R12, R2, [SP,#0x28+var_24]
15FCC2:  BLX             sub_221798
15FCC6:  LDRD.W          R12, R2, [SP,#0x28+var_24]
15FCCA:  MOV             R0, R1
15FCCC:  CMP             R0, R10
15FCCE:  BEQ             loc_15FCD6
15FCD0:  MOVS            R0, #0
15FCD2:  STR.W           R0, [R11,R10,LSL#2]
15FCD6:  LDR.W           R11, [R5]
15FCDA:  MOVS            R3, #0
15FCDC:  CMP.W           R11, #0
15FCE0:  BEQ             loc_15FCF2
15FCE2:  LDR.W           R0, [R11,#4]
15FCE6:  CMP.W           R8, #1
15FCEA:  BHI             loc_15FCF8
15FCEC:  SUBS            R1, R6, #1
15FCEE:  ANDS            R0, R1
15FCF0:  B               loc_15FD0E
15FCF2:  MOV.W           R11, #0
15FCF6:  B               loc_15FD1E
15FCF8:  CMP             R0, R6
15FCFA:  BCC             loc_15FD0E
15FCFC:  MOV             R1, R6
15FCFE:  MOV             R8, R2
15FD00:  MOV             R6, R12
15FD02:  BLX             sub_221798
15FD06:  MOVS            R3, #0
15FD08:  MOV             R12, R6
15FD0A:  MOV             R2, R8
15FD0C:  MOV             R0, R1
15FD0E:  CMP             R0, R10
15FD10:  ITTT NE
15FD12:  LDRNE.W         R1, [R9]
15FD16:  STRNE.W         R4, [R1,R0,LSL#2]
15FD1A:  LDRNE.W         R11, [R5]
15FD1E:  MOVS            R0, #1
15FD20:  STR.W           R11, [R4]
15FD24:  STRB            R0, [R2,#8]
15FD26:  LDR.W           R0, [R9,#0xC]
15FD2A:  STRD.W          R5, R12, [R2]
15FD2E:  SUBS            R0, #1
15FD30:  STR             R3, [R5]
15FD32:  STR.W           R0, [R9,#0xC]
15FD36:  ADD             SP, SP, #0xC
15FD38:  POP.W           {R8-R11}
15FD3C:  POP             {R4-R7,PC}
