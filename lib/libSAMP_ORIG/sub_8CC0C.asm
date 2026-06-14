; =========================================================
; Game Engine Function: sub_8CC0C
; Address            : 0x8CC0C - 0x8CCB6
; =========================================================

8CC0C:  PUSH            {R4-R7,LR}
8CC0E:  ADD             R7, SP, #0xC
8CC10:  PUSH.W          {R8-R10}
8CC14:  LDR             R2, =(dword_1ACF68 - 0x8CC1E)
8CC16:  MOVW            R6, #0x1A9C
8CC1A:  ADD             R2, PC; dword_1ACF68
8CC1C:  LDR             R2, [R2]
8CC1E:  LDR.W           R10, [R2,R6]
8CC22:  CMP.W           R10, #0
8CC26:  BEQ             loc_8CCB0
8CC28:  CBZ             R0, loc_8CC9A
8CC2A:  CMP.W           R10, #1
8CC2E:  BLT             loc_8CC9A
8CC30:  ADD             R2, R6
8CC32:  MOV.W           R9, #0
8CC36:  MOV.W           R8, #1
8CC3A:  LDR.W           R12, [R2,#8]
8CC3E:  ADD.W           LR, R12, #0x28 ; '('
8CC42:  B               loc_8CC58
8CC44:  LSLS            R2, R5, #0x1F
8CC46:  BEQ             loc_8CC9E
8CC48:  ADD.W           R9, R9, #1
8CC4C:  ADD.W           R8, R8, #1
8CC50:  ADD.W           LR, LR, #0x24 ; '$'
8CC54:  CMP             R9, R10
8CC56:  BEQ             loc_8CCB0
8CC58:  ADD.W           R2, R9, R9,LSL#3
8CC5C:  ADD.W           R2, R12, R2,LSL#2
8CC60:  LDR             R2, [R2,#4]
8CC62:  CMP             R2, #0
8CC64:  BEQ             loc_8CC48
8CC66:  LDRB            R4, [R2,#0xB]
8CC68:  LSLS            R4, R4, #0x1F
8CC6A:  BNE             loc_8CC48
8CC6C:  MOVS            R5, #0
8CC6E:  MOV             R6, R8
8CC70:  MOV             R4, LR
8CC72:  CMP             R2, #0
8CC74:  ITTTT NE
8CC76:  LDRNE.W         R3, [R0,#0x2FC]
8CC7A:  LDRNE.W         R2, [R2,#0x2FC]
8CC7E:  SUBNE           R2, R2, R3
8CC80:  CLZNE.W         R2, R2
8CC84:  ITT NE
8CC86:  LSRNE           R2, R2, #5
8CC88:  ORRNE           R5, R2
8CC8A:  CMP             R6, R10
8CC8C:  BGE             loc_8CC44
8CC8E:  LSLS            R2, R5, #0x1F
8CC90:  BNE             loc_8CC44
8CC92:  LDR.W           R2, [R4],#0x24
8CC96:  ADDS            R6, #1
8CC98:  B               loc_8CC72
8CC9A:  MOV.W           R9, #0
8CC9E:  CMP             R9, R10
8CCA0:  BGE             loc_8CCB0
8CCA2:  MOV             R0, R9
8CCA4:  POP.W           {R8-R10}
8CCA8:  POP.W           {R4-R7,LR}
8CCAC:  B.W             sub_98854
8CCB0:  POP.W           {R8-R10}
8CCB4:  POP             {R4-R7,PC}
