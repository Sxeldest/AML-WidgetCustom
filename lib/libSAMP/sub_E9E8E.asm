; =========================================================
; Game Engine Function: sub_E9E8E
; Address            : 0xE9E8E - 0xEA0E8
; =========================================================

E9E8E:  PUSH            {R4-R7,LR}
E9E90:  ADD             R7, SP, #0xC
E9E92:  PUSH.W          {R11}
E9E96:  LDR.W           R12, [R1]
E9E9A:  MOV             R2, R1
E9E9C:  CMP.W           R12, #0
E9EA0:  BEQ             loc_E9EAE
E9EA2:  LDR             R3, [R1,#4]
E9EA4:  CBZ             R3, loc_E9EC2
E9EA6:  MOV             R2, R3
E9EA8:  LDR             R3, [R3]
E9EAA:  CMP             R3, #0
E9EAC:  BNE             loc_E9EA6
E9EAE:  LDR.W           R12, [R2,#4]
E9EB2:  CMP.W           R12, #0
E9EB6:  BNE             loc_E9EC4
E9EB8:  MOV.W           R12, #0
E9EBC:  MOV.W           LR, #1
E9EC0:  B               loc_E9ECE
E9EC2:  MOV             R2, R1
E9EC4:  LDR             R3, [R2,#8]
E9EC6:  MOV.W           LR, #0
E9ECA:  STR.W           R3, [R12,#8]
E9ECE:  LDR             R4, [R2,#8]
E9ED0:  LDR             R3, [R4]
E9ED2:  CMP             R3, R2
E9ED4:  BEQ             loc_E9EDC
E9ED6:  STR.W           R12, [R4,#4]
E9EDA:  B               loc_E9EEC
E9EDC:  CMP             R2, R0
E9EDE:  STR.W           R12, [R4]
E9EE2:  BEQ             loc_E9EE8
E9EE4:  LDR             R3, [R4,#4]
E9EE6:  B               loc_E9EEC
E9EE8:  MOVS            R3, #0
E9EEA:  MOV             R0, R12
E9EEC:  LDRB            R4, [R2,#0xC]
E9EEE:  CMP             R2, R1
E9EF0:  BEQ             loc_E9F1C
E9EF2:  LDR             R5, [R1,#8]
E9EF4:  STR             R5, [R2,#8]
E9EF6:  LDR             R6, [R1,#8]
E9EF8:  LDR             R6, [R6]
E9EFA:  SUBS            R6, R6, R1
E9EFC:  IT NE
E9EFE:  MOVNE           R6, #1
E9F00:  STR.W           R2, [R5,R6,LSL#2]
E9F04:  LDRD.W          R6, R5, [R1]
E9F08:  STRD.W          R6, R5, [R2]
E9F0C:  STR             R2, [R6,#8]
E9F0E:  CBZ             R5, loc_E9F12
E9F10:  STR             R2, [R5,#8]
E9F12:  LDRB            R5, [R1,#0xC]
E9F14:  CMP             R0, R1
E9F16:  STRB            R5, [R2,#0xC]
E9F18:  IT EQ
E9F1A:  MOVEQ           R0, R2
E9F1C:  CMP             R4, #0
E9F1E:  BEQ.W           loc_EA0E2
E9F22:  CMP             R0, #0
E9F24:  BEQ.W           loc_EA0E2
E9F28:  CMP.W           LR, #0
E9F2C:  BEQ             loc_EA006
E9F2E:  MOV.W           R12, #1
E9F32:  MOV.W           LR, #0
E9F36:  LDR             R2, [R3,#8]
E9F38:  LDRB            R1, [R3,#0xC]
E9F3A:  LDR             R4, [R2]
E9F3C:  CMP             R4, R3
E9F3E:  BEQ             loc_E9F46
E9F40:  CBZ             R1, loc_E9F4C
E9F42:  MOV             R1, R3
E9F44:  B               loc_E9F80
E9F46:  CBZ             R1, loc_E9FA4
E9F48:  MOV             R1, R3
E9F4A:  B               loc_E9FD4
E9F4C:  LDR             R1, [R2,#4]
E9F4E:  STRB.W          R12, [R3,#0xC]
E9F52:  STRB.W          LR, [R2,#0xC]
E9F56:  LDR             R4, [R1]
E9F58:  STR             R4, [R2,#4]
E9F5A:  CBZ             R4, loc_E9F5E
E9F5C:  STR             R2, [R4,#8]
E9F5E:  LDR             R4, [R2,#8]
E9F60:  STR             R4, [R1,#8]
E9F62:  LDR             R4, [R2,#8]
E9F64:  MOV             R5, R4
E9F66:  LDR.W           R6, [R5],#4
E9F6A:  CMP             R6, R2
E9F6C:  IT EQ
E9F6E:  MOVEQ           R5, R4
E9F70:  STR             R1, [R5]
E9F72:  STR             R2, [R1]
E9F74:  LDR             R4, [R3]
E9F76:  STR             R1, [R2,#8]
E9F78:  CMP             R0, R4
E9F7A:  LDR             R1, [R4,#4]
E9F7C:  IT EQ
E9F7E:  MOVEQ           R0, R3
E9F80:  LDR             R3, [R1]
E9F82:  CBZ             R3, loc_E9F8A
E9F84:  LDRB            R2, [R3,#0xC]
E9F86:  CMP             R2, #0
E9F88:  BEQ             loc_EA016
E9F8A:  LDR             R2, [R1,#4]
E9F8C:  CBZ             R2, loc_E9F94
E9F8E:  LDRB            R4, [R2,#0xC]
E9F90:  CMP             R4, #0
E9F92:  BEQ             loc_EA01A
E9F94:  LDR             R2, [R1,#8]
E9F96:  STRB.W          LR, [R1,#0xC]
E9F9A:  CMP             R2, R0
E9F9C:  BEQ             loc_EA00E
E9F9E:  LDRB            R1, [R2,#0xC]
E9FA0:  CBNZ            R1, loc_E9FF4
E9FA2:  B               loc_EA010
E9FA4:  LDR             R1, [R3,#4]
E9FA6:  STRB.W          R12, [R3,#0xC]
E9FAA:  STRB.W          LR, [R2,#0xC]
E9FAE:  STR             R1, [R2]
E9FB0:  CBZ             R1, loc_E9FB4
E9FB2:  STR             R2, [R1,#8]
E9FB4:  LDR             R1, [R2,#8]
E9FB6:  STR             R1, [R3,#8]
E9FB8:  LDR             R1, [R2,#8]
E9FBA:  MOV             R4, R1
E9FBC:  LDR.W           R5, [R4],#4
E9FC0:  CMP             R5, R2
E9FC2:  IT EQ
E9FC4:  MOVEQ           R4, R1
E9FC6:  STR             R3, [R4]
E9FC8:  CMP             R0, R2
E9FCA:  LDR             R1, [R2]
E9FCC:  STR             R3, [R2,#8]
E9FCE:  STR             R2, [R3,#4]
E9FD0:  IT EQ
E9FD2:  MOVEQ           R0, R3
E9FD4:  LDR             R3, [R1]
E9FD6:  CBZ             R3, loc_E9FDE
E9FD8:  LDRB            R2, [R3,#0xC]
E9FDA:  CMP             R2, #0
E9FDC:  BEQ             loc_EA080
E9FDE:  LDR             R2, [R1,#4]
E9FE0:  CBZ             R2, loc_E9FE6
E9FE2:  LDRB            R4, [R2,#0xC]
E9FE4:  CBZ             R4, loc_EA04C
E9FE6:  LDR             R2, [R1,#8]
E9FE8:  STRB.W          LR, [R1,#0xC]
E9FEC:  LDRB            R1, [R2,#0xC]
E9FEE:  CBZ             R1, loc_EA010
E9FF0:  CMP             R2, R0
E9FF2:  BEQ             loc_EA010
E9FF4:  LDR             R1, [R2,#8]
E9FF6:  MOV             R3, R1
E9FF8:  LDR.W           R4, [R3],#4
E9FFC:  CMP             R4, R2
E9FFE:  IT NE
EA000:  MOVNE           R3, R1
EA002:  LDR             R3, [R3]
EA004:  B               loc_E9F36
EA006:  MOVS            R0, #1
EA008:  STRB.W          R0, [R12,#0xC]
EA00C:  B               loc_EA0E2
EA00E:  MOV             R2, R0
EA010:  MOVS            R0, #1
EA012:  STRB            R0, [R2,#0xC]
EA014:  B               loc_EA0E2
EA016:  LDR             R2, [R1,#4]
EA018:  CBZ             R2, loc_EA020
EA01A:  LDRB            R0, [R2,#0xC]
EA01C:  CMP             R0, #0
EA01E:  BEQ             loc_EA0B2
EA020:  MOVS            R0, #1
EA022:  MOVS            R2, #0
EA024:  STRB            R0, [R3,#0xC]
EA026:  LDR             R0, [R3,#4]
EA028:  STRB            R2, [R1,#0xC]
EA02A:  STR             R0, [R1]
EA02C:  CBZ             R0, loc_EA030
EA02E:  STR             R1, [R0,#8]
EA030:  LDR             R0, [R1,#8]
EA032:  STR             R0, [R3,#8]
EA034:  LDR             R0, [R1,#8]
EA036:  MOV             R2, R0
EA038:  LDR.W           R6, [R2],#4
EA03C:  CMP             R6, R1
EA03E:  IT EQ
EA040:  MOVEQ           R2, R0
EA042:  STR             R3, [R2]
EA044:  MOV             R2, R1
EA046:  STR             R3, [R1,#8]
EA048:  STR             R1, [R3,#4]
EA04A:  B               loc_EA0B4
EA04C:  CBZ             R3, loc_EA054
EA04E:  LDRB            R0, [R3,#0xC]
EA050:  CBZ             R0, loc_EA080
EA052:  LDR             R2, [R1,#4]
EA054:  MOVS            R0, #1
EA056:  MOVS            R3, #0
EA058:  STRB            R0, [R2,#0xC]
EA05A:  LDR             R0, [R2]
EA05C:  STRB            R3, [R1,#0xC]
EA05E:  STR             R0, [R1,#4]
EA060:  CBZ             R0, loc_EA064
EA062:  STR             R1, [R0,#8]
EA064:  LDR             R0, [R1,#8]
EA066:  STR             R0, [R2,#8]
EA068:  LDR             R0, [R1,#8]
EA06A:  MOV             R3, R0
EA06C:  LDR.W           R6, [R3],#4
EA070:  CMP             R6, R1
EA072:  IT EQ
EA074:  MOVEQ           R3, R0
EA076:  STR             R2, [R3]
EA078:  MOV             R3, R1
EA07A:  STR             R2, [R1,#8]
EA07C:  STR             R1, [R2]
EA07E:  B               loc_EA082
EA080:  MOV             R2, R1
EA082:  LDR             R0, [R2,#8]
EA084:  LDR             R1, [R0]
EA086:  LDRB            R6, [R0,#0xC]
EA088:  STRB            R6, [R2,#0xC]
EA08A:  MOVS            R6, #1
EA08C:  LDR             R2, [R1,#4]
EA08E:  STRB            R6, [R0,#0xC]
EA090:  STRB            R6, [R3,#0xC]
EA092:  STR             R2, [R0]
EA094:  CBZ             R2, loc_EA098
EA096:  STR             R0, [R2,#8]
EA098:  LDR             R2, [R0,#8]
EA09A:  STR             R2, [R1,#8]
EA09C:  LDR             R2, [R0,#8]
EA09E:  MOV             R3, R2
EA0A0:  LDR.W           R6, [R3],#4
EA0A4:  CMP             R6, R0
EA0A6:  IT EQ
EA0A8:  MOVEQ           R3, R2
EA0AA:  STR             R1, [R3]
EA0AC:  STR             R1, [R0,#8]
EA0AE:  STR             R0, [R1,#4]
EA0B0:  B               loc_EA0E2
EA0B2:  MOV             R3, R1
EA0B4:  LDR             R0, [R3,#8]
EA0B6:  LDR             R1, [R0,#4]
EA0B8:  LDRB            R6, [R0,#0xC]
EA0BA:  STRB            R6, [R3,#0xC]
EA0BC:  MOVS            R6, #1
EA0BE:  LDR             R3, [R1]
EA0C0:  STRB            R6, [R0,#0xC]
EA0C2:  STRB            R6, [R2,#0xC]
EA0C4:  STR             R3, [R0,#4]
EA0C6:  CBZ             R3, loc_EA0CA
EA0C8:  STR             R0, [R3,#8]
EA0CA:  LDR             R2, [R0,#8]
EA0CC:  STR             R2, [R1,#8]
EA0CE:  LDR             R2, [R0,#8]
EA0D0:  MOV             R3, R2
EA0D2:  LDR.W           R6, [R3],#4
EA0D6:  CMP             R6, R0
EA0D8:  IT EQ
EA0DA:  MOVEQ           R3, R2
EA0DC:  STR             R1, [R3]
EA0DE:  STR             R1, [R0,#8]
EA0E0:  STR             R0, [R1]
EA0E2:  POP.W           {R11}
EA0E6:  POP             {R4-R7,PC}
