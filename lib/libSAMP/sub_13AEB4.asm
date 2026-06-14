; =========================================================
; Game Engine Function: sub_13AEB4
; Address            : 0x13AEB4 - 0x13AFEA
; =========================================================

13AEB4:  PUSH            {R4-R7,LR}
13AEB6:  ADD             R7, SP, #0xC
13AEB8:  PUSH.W          {R8-R11}
13AEBC:  SUB             SP, SP, #0xC
13AEBE:  LDR             R6, [R1,#4]
13AEC0:  MOV             R5, R2
13AEC2:  MOV             R2, R0
13AEC4:  MOV.W           R0, #0x55555555
13AEC8:  MOV             R9, R1
13AECA:  MOV.W           R1, #0x33333333
13AECE:  AND.W           R0, R0, R6,LSR#1
13AED2:  LDR.W           R10, [R5,#4]
13AED6:  SUBS            R0, R6, R0
13AED8:  AND.W           R1, R1, R0,LSR#2
13AEDC:  BIC.W           R0, R0, #0xCCCCCCCC
13AEE0:  ADD             R0, R1
13AEE2:  MOV.W           R1, #0x1010101
13AEE6:  ADD.W           R0, R0, R0,LSR#4
13AEEA:  BIC.W           R0, R0, #0xF0F0F0F0
13AEEE:  MULS            R0, R1
13AEF0:  MOV.W           R8, R0,LSR#24
13AEF4:  CMP.W           R8, #1
13AEF8:  BHI             loc_13AF02
13AEFA:  SUBS            R0, R6, #1
13AEFC:  AND.W           R10, R10, R0
13AF00:  B               loc_13AF14
13AF02:  CMP             R10, R6
13AF04:  BCC             loc_13AF14
13AF06:  MOV             R0, R10
13AF08:  MOV             R1, R6
13AF0A:  MOV             R4, R2
13AF0C:  BLX             sub_221798
13AF10:  MOV             R2, R4
13AF12:  MOV             R10, R1
13AF14:  LDR.W           R11, [R9]
13AF18:  LDR.W           R0, [R11,R10,LSL#2]
13AF1C:  MOV             R4, R0
13AF1E:  LDR             R0, [R0]
13AF20:  CMP             R0, R5
13AF22:  BNE             loc_13AF1C
13AF24:  ADD.W           R12, R9, #8
13AF28:  CMP             R4, R12
13AF2A:  BEQ             loc_13AF52
13AF2C:  LDR             R0, [R4,#4]
13AF2E:  CMP.W           R8, #1
13AF32:  BHI             loc_13AF3A
13AF34:  SUBS            R1, R6, #1
13AF36:  ANDS            R0, R1
13AF38:  B               loc_13AF4E
13AF3A:  CMP             R0, R6
13AF3C:  BCC             loc_13AF4E
13AF3E:  MOV             R1, R6
13AF40:  STRD.W          R12, R2, [SP,#0x28+var_24]
13AF44:  BLX             sub_221798
13AF48:  LDRD.W          R12, R2, [SP,#0x28+var_24]
13AF4C:  MOV             R0, R1
13AF4E:  CMP             R0, R10
13AF50:  BEQ             loc_13AF82
13AF52:  LDR             R0, [R5]
13AF54:  CBZ             R0, loc_13AF7C
13AF56:  LDR             R0, [R0,#4]
13AF58:  CMP.W           R8, #1
13AF5C:  BHI             loc_13AF64
13AF5E:  SUBS            R1, R6, #1
13AF60:  ANDS            R0, R1
13AF62:  B               loc_13AF78
13AF64:  CMP             R0, R6
13AF66:  BCC             loc_13AF78
13AF68:  MOV             R1, R6
13AF6A:  STRD.W          R12, R2, [SP,#0x28+var_24]
13AF6E:  BLX             sub_221798
13AF72:  LDRD.W          R12, R2, [SP,#0x28+var_24]
13AF76:  MOV             R0, R1
13AF78:  CMP             R0, R10
13AF7A:  BEQ             loc_13AF82
13AF7C:  MOVS            R0, #0
13AF7E:  STR.W           R0, [R11,R10,LSL#2]
13AF82:  LDR.W           R11, [R5]
13AF86:  MOVS            R3, #0
13AF88:  CMP.W           R11, #0
13AF8C:  BEQ             loc_13AF9E
13AF8E:  LDR.W           R0, [R11,#4]
13AF92:  CMP.W           R8, #1
13AF96:  BHI             loc_13AFA4
13AF98:  SUBS            R1, R6, #1
13AF9A:  ANDS            R0, R1
13AF9C:  B               loc_13AFBA
13AF9E:  MOV.W           R11, #0
13AFA2:  B               loc_13AFCA
13AFA4:  CMP             R0, R6
13AFA6:  BCC             loc_13AFBA
13AFA8:  MOV             R1, R6
13AFAA:  MOV             R8, R2
13AFAC:  MOV             R6, R12
13AFAE:  BLX             sub_221798
13AFB2:  MOVS            R3, #0
13AFB4:  MOV             R12, R6
13AFB6:  MOV             R2, R8
13AFB8:  MOV             R0, R1
13AFBA:  CMP             R0, R10
13AFBC:  ITTT NE
13AFBE:  LDRNE.W         R1, [R9]
13AFC2:  STRNE.W         R4, [R1,R0,LSL#2]
13AFC6:  LDRNE.W         R11, [R5]
13AFCA:  MOVS            R0, #1
13AFCC:  STR.W           R11, [R4]
13AFD0:  STRB            R0, [R2,#8]
13AFD2:  LDR.W           R0, [R9,#0xC]
13AFD6:  STRD.W          R5, R12, [R2]
13AFDA:  SUBS            R0, #1
13AFDC:  STR             R3, [R5]
13AFDE:  STR.W           R0, [R9,#0xC]
13AFE2:  ADD             SP, SP, #0xC
13AFE4:  POP.W           {R8-R11}
13AFE8:  POP             {R4-R7,PC}
