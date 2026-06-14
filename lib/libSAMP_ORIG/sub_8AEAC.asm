; =========================================================
; Game Engine Function: sub_8AEAC
; Address            : 0x8AEAC - 0x8AF4C
; =========================================================

8AEAC:  PUSH            {R4,R5,R7,LR}
8AEAE:  ADD             R7, SP, #8
8AEB0:  LDR.W           R3, [R0,#0x1C4]
8AEB4:  CMP             R2, #0
8AEB6:  LDR.W           R0, [R0,#0x1CC]
8AEBA:  ADD.W           R0, R0, R3,LSL#2
8AEBE:  LDR.W           R0, [R0,#-4]
8AEC2:  MVN.W           R12, R0
8AEC6:  IT NE
8AEC8:  SUBSNE.W        R0, R2, R1
8AECC:  BNE             loc_8AF04
8AECE:  LDRB            R4, [R1]
8AED0:  CBZ             R4, loc_8AF46
8AED2:  LDR             R3, =(unk_52D88 - 0x8AEDC)
8AED4:  ADDS            R2, R1, #1
8AED6:  MOV             R1, R12
8AED8:  ADD             R3, PC; unk_52D88
8AEDA:  B               loc_8AEEC
8AEDC:  UXTB            R5, R1
8AEDE:  EORS            R0, R5
8AEE0:  ADDS            R2, #1
8AEE2:  LDR.W           R0, [R3,R0,LSL#2]
8AEE6:  EOR.W           R1, R0, R1,LSR#8
8AEEA:  CBZ             R4, loc_8AF42
8AEEC:  MOV             R0, R4
8AEEE:  LDRB            R4, [R2]
8AEF0:  CMP             R0, #0x23 ; '#'
8AEF2:  IT EQ
8AEF4:  CMPEQ           R4, #0x23 ; '#'
8AEF6:  BNE             loc_8AEDC
8AEF8:  LDRB            R5, [R2,#1]
8AEFA:  MOVS            R4, #0x23 ; '#'
8AEFC:  CMP             R5, #0x23 ; '#'
8AEFE:  IT EQ
8AF00:  MOVEQ           R1, R12
8AF02:  B               loc_8AEDC
8AF04:  LDR             R5, =(unk_52D88 - 0x8AF10)
8AF06:  MVNS            R0, R1
8AF08:  ADDS            R3, R1, #1
8AF0A:  ADD             R2, R0
8AF0C:  ADD             R5, PC; unk_52D88
8AF0E:  MOV             R1, R12
8AF10:  B               loc_8AF26
8AF12:  UXTB            R4, R1
8AF14:  EORS            R0, R4
8AF16:  ADDS            R3, #1
8AF18:  SUBS            R2, #1
8AF1A:  LDR.W           R0, [R5,R0,LSL#2]
8AF1E:  EOR.W           R1, R0, R1,LSR#8
8AF22:  ADDS            R0, R2, #1
8AF24:  BEQ             loc_8AF42
8AF26:  LDRB.W          R0, [R3,#-1]
8AF2A:  CMP             R0, #0x23 ; '#'
8AF2C:  BNE             loc_8AF12
8AF2E:  CMP             R2, #2
8AF30:  BCC             loc_8AF12
8AF32:  LDRB            R4, [R3]
8AF34:  CMP             R4, #0x23 ; '#'
8AF36:  BNE             loc_8AF12
8AF38:  LDRB            R4, [R3,#1]
8AF3A:  CMP             R4, #0x23 ; '#'
8AF3C:  IT EQ
8AF3E:  MOVEQ           R1, R12
8AF40:  B               loc_8AF12
8AF42:  MVNS            R0, R1
8AF44:  POP             {R4,R5,R7,PC}
8AF46:  MVN.W           R0, R12
8AF4A:  POP             {R4,R5,R7,PC}
