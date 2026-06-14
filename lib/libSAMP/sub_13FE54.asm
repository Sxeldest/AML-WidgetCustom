; =========================================================
; Game Engine Function: sub_13FE54
; Address            : 0x13FE54 - 0x14008C
; =========================================================

13FE54:  PUSH            {R4-R7,LR}
13FE56:  ADD             R7, SP, #0xC
13FE58:  PUSH.W          {R8-R11}
13FE5C:  SUB             SP, SP, #4
13FE5E:  MOV             R4, R0
13FE60:  LDR             R0, =(off_23496C - 0x13FE66)
13FE62:  ADD             R0, PC; off_23496C
13FE64:  LDR             R0, [R0]; dword_23DEF4
13FE66:  LDR             R0, [R0]
13FE68:  LDR.W           R0, [R0,#0x3B0]
13FE6C:  LDR             R5, [R0,#4]
13FE6E:  LDR.W           R8, [R0,#0x10]
13FE72:  LDR             R0, [R4,#0x1C]
13FE74:  BL              sub_104330
13FE78:  MOVW            R11, #0xFFFF
13FE7C:  CMP             R0, #0
13FE7E:  BEQ             loc_13FF40
13FE80:  MOV             R1, R0
13FE82:  MOVW            R0, #0xEA60
13FE86:  ADDS            R2, R5, R0
13FE88:  LDRD.W          R0, R2, [R2]
13FE8C:  CMP             R0, R2
13FE8E:  BEQ             loc_13FEAC
13FE90:  MOV.W           R3, #0x1F40
13FE94:  LDR             R6, [R0]
13FE96:  ADD.W           R6, R5, R6,LSL#2
13FE9A:  LDR             R6, [R6,R3]
13FE9C:  CMP             R6, R1
13FE9E:  BEQ             loc_13FEAC
13FEA0:  ADDS            R0, #4
13FEA2:  CMP             R0, R2
13FEA4:  BNE             loc_13FE94
13FEA6:  MOVW            R9, #0xFFFF
13FEAA:  B               loc_13FEFC
13FEAC:  CMP             R0, R2
13FEAE:  MOVW            R9, #0xFFFF
13FEB2:  BEQ             loc_13FEFC
13FEB4:  LDR             R0, [R0]
13FEB6:  SUB.W           R2, R11, #1
13FEBA:  UXTH            R2, R2
13FEBC:  UXTH.W          R9, R0
13FEC0:  SUBS            R0, #1
13FEC2:  UXTH            R0, R0
13FEC4:  CMP             R0, R2
13FEC6:  BCS             loc_13FEFC
13FEC8:  MOV.W           R0, R9,LSR#4
13FECC:  CMP             R0, #0x7C ; '|'
13FECE:  BHI             loc_13FF4E
13FED0:  MOV             R0, R5
13FED2:  MOV             R1, R9
13FED4:  BL              sub_F2396
13FED8:  CBZ             R0, loc_13FF4E
13FEDA:  LDR.W           R0, [R5,R9,LSL#2]
13FEDE:  CBZ             R0, loc_13FF4E
13FEE0:  BL              sub_F8E1C
13FEE4:  VMOV.F32        S0, #30.0
13FEE8:  VMOV            S2, R0
13FEEC:  VCMP.F32        S2, S0
13FEF0:  VMRS            APSR_nzcv, FPSCR
13FEF4:  BPL             loc_13FF4E
13FEF6:  MOV.W           R10, #1
13FEFA:  B               loc_13FF52
13FEFC:  MOV             R0, R8
13FEFE:  BL              sub_148684
13FF02:  SUB.W           R1, R11, #1
13FF06:  MOV             R6, R0
13FF08:  SUBS            R0, #1
13FF0A:  UXTH            R1, R1
13FF0C:  UXTH            R0, R0
13FF0E:  CMP             R0, R1
13FF10:  BCS             loc_13FF3A
13FF12:  CMP.W           R6, #0x3E8
13FF16:  BHI             loc_13FF3A
13FF18:  ADD.W           R0, R8, R6
13FF1C:  LDRB            R0, [R0,#4]
13FF1E:  CBZ             R0, loc_13FF3A
13FF20:  ADD.W           R0, R8, R6,LSL#2
13FF24:  LDR.W           R0, [R0,#0x3EC]
13FF28:  CBZ             R0, loc_13FF3A
13FF2A:  BL              sub_1028C8
13FF2E:  MOV             R10, R0
13FF30:  CMP             R0, #0
13FF32:  IT NE
13FF34:  MOVNE.W         R10, #2
13FF38:  B               loc_13FF56
13FF3A:  MOV.W           R10, #0
13FF3E:  B               loc_13FF56
13FF40:  MOV.W           R10, #0
13FF44:  MOVW            R6, #0xFFFF
13FF48:  MOVW            R9, #0xFFFF
13FF4C:  B               loc_13FF56
13FF4E:  MOV.W           R10, #0
13FF52:  MOVW            R6, #0xFFFF
13FF56:  LDR             R0, [R4,#0x1C]
13FF58:  BL              sub_106AB0
13FF5C:  CBNZ            R0, loc_13FF6E
13FF5E:  LDR             R0, [R4,#0x1C]
13FF60:  BL              sub_106AF8
13FF64:  CBNZ            R0, loc_13FF6E
13FF66:  LDR             R0, [R4,#0x1C]
13FF68:  BL              sub_106B26
13FF6C:  CBZ             R0, loc_13FF7E
13FF6E:  MOVS            R0, #0
13FF70:  STR             R0, [R4,#0xC]
13FF72:  STRB.W          R0, [R4,#0x1A0]
13FF76:  ADD             SP, SP, #4
13FF78:  POP.W           {R8-R11}
13FF7C:  POP             {R4-R7,PC}
13FF7E:  CMP.W           R10, #0
13FF82:  BEQ             loc_13FFB2
13FF84:  CMP.W           R10, #1
13FF88:  BNE             loc_140018
13FF8A:  STRH.W          R9, [R4,#0x1A2]
13FF8E:  BL              sub_F0B30
13FF92:  LDRH.W          R6, [R4,#0x1A2]
13FF96:  STR.W           R0, [R4,#0x1AC]
13FF9A:  LSRS            R0, R6, #4
13FF9C:  CMP             R0, #0x7C ; '|'
13FF9E:  BHI             loc_140044
13FFA0:  MOV             R0, R5
13FFA2:  MOV             R1, R6
13FFA4:  BL              sub_F2396
13FFA8:  CMP             R0, #0
13FFAA:  BEQ             loc_140044
13FFAC:  LDR.W           R0, [R5,R6,LSL#2]
13FFB0:  B               loc_140046
13FFB2:  LDRB            R0, [R4,#9]
13FFB4:  CMP             R0, #0
13FFB6:  BEQ             loc_140062
13FFB8:  BL              sub_F0B30
13FFBC:  LDR.W           R1, [R4,#0x1AC]
13FFC0:  SUBS            R0, R0, R1
13FFC2:  CMP.W           R0, #0x7D0
13FFC6:  BCC             loc_13FFDE
13FFC8:  MOVS            R0, #0
13FFCA:  STRH.W          R11, [R4,#0x1A2]
13FFCE:  STRD.W          R0, R0, [R4,#0x194]
13FFD2:  STR.W           R0, [R4,#0x19C]
13FFD6:  STRB            R0, [R4,#9]
13FFD8:  STRB.W          R0, [R4,#0x1A0]
13FFDC:  STR             R0, [R4,#0xC]
13FFDE:  BL              sub_F0B30
13FFE2:  LDR.W           R1, [R4,#0x1AC]
13FFE6:  SUBS            R0, R0, R1
13FFE8:  LSRS            R0, R0, #4
13FFEA:  CMP             R0, #0x7C ; '|'
13FFEC:  BHI             loc_13FF76
13FFEE:  LDRH.W          R6, [R4,#0x1A2]
13FFF2:  CMP.W           R6, #0x7D0
13FFF6:  BCC             loc_14006C
13FFF8:  SUB.W           R0, R6, #0x7D0
13FFFC:  UXTH            R0, R0
13FFFE:  CMP.W           R0, #0x3E8
140002:  BHI             loc_13FF76
140004:  ADD.W           R1, R8, R0
140008:  LDRB            R1, [R1,#4]
14000A:  CMP             R1, #0
14000C:  BEQ             loc_13FF76
14000E:  ADD.W           R0, R8, R0,LSL#2
140012:  LDR.W           R0, [R0,#0x3EC]
140016:  B               loc_14007E
140018:  ADD.W           R0, R6, #0x7D0
14001C:  STRH.W          R0, [R4,#0x1A2]
140020:  BL              sub_F0B30
140024:  CMP.W           R6, #0x3E8
140028:  STR.W           R0, [R4,#0x1AC]
14002C:  BHI             loc_13FF76
14002E:  ADD.W           R0, R8, R6
140032:  LDRB            R0, [R0,#4]
140034:  CMP             R0, #0
140036:  BEQ             loc_13FF76
140038:  ADD.W           R0, R8, R6,LSL#2
14003C:  LDR.W           R0, [R0,#0x3EC]
140040:  CBNZ            R0, loc_140046
140042:  B               loc_13FF76
140044:  MOVS            R0, #0
140046:  LDRB            R1, [R4,#9]
140048:  STR             R0, [R4,#0xC]
14004A:  CBNZ            R1, loc_140058
14004C:  MOVS            R0, #0
14004E:  STRB.W          R0, [R4,#0x1A0]
140052:  MOV             R0, R4
140054:  BL              sub_140F8C
140058:  MOVS            R0, #1
14005A:  STRB.W          R0, [R4,#0x1A0]
14005E:  STRB            R0, [R4,#9]
140060:  B               loc_13FF76
140062:  MOVS            R0, #0
140064:  STRB.W          R0, [R4,#0x1A0]
140068:  STR             R0, [R4,#0xC]
14006A:  B               loc_13FF76
14006C:  MOV             R0, R5
14006E:  MOV             R1, R6
140070:  BL              sub_F2396
140074:  CMP             R0, #0
140076:  BEQ.W           loc_13FF76
14007A:  LDR.W           R0, [R5,R6,LSL#2]
14007E:  CMP             R0, #0
140080:  BEQ.W           loc_13FF76
140084:  MOVS            R1, #1
140086:  STRB.W          R1, [R4,#0x1A0]
14008A:  B               loc_140068
