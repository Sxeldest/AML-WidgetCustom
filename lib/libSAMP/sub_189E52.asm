; =========================================================
; Game Engine Function: sub_189E52
; Address            : 0x189E52 - 0x189F4A
; =========================================================

189E52:  PUSH            {R4-R7,LR}
189E54:  ADD             R7, SP, #0xC
189E56:  PUSH.W          {R8}
189E5A:  SUB             SP, SP, #0x18
189E5C:  MOV             R4, R0
189E5E:  LDR             R0, [R0,#4]
189E60:  STRH.W          R1, [R7,#var_16]
189E64:  CBZ             R0, loc_189E94
189E66:  SUB.W           R1, R7, #-var_16
189E6A:  SUB.W           R2, R7, #-var_1D
189E6E:  MOV             R0, R4
189E70:  BL              sub_18B156
189E74:  LDR             R3, [R4,#4]
189E76:  MOV             R2, R0
189E78:  LDRH.W          R1, [R7,#var_16]
189E7C:  CMP             R0, R3
189E7E:  BNE             loc_189EAA
189E80:  LDR             R0, [R4]
189E82:  ADD.W           R0, R0, R2,LSL#2
189E86:  LDRH.W          R2, [R0,#-2]!
189E8A:  ADDS            R2, #1
189E8C:  CMP             R2, R1
189E8E:  BNE             loc_189EC8
189E90:  STRH            R2, [R0]
189E92:  B               loc_189F42
189E94:  STRH.W          R1, [SP,#0x28+var_1A]
189E98:  ADD             R2, SP, #0x28+var_1C
189E9A:  STRH.W          R1, [SP,#0x28+var_1C]
189E9E:  SUB.W           R1, R7, #-var_16
189EA2:  MOV             R0, R4
189EA4:  BL              sub_18B104
189EA8:  B               loc_189F42
189EAA:  LDR             R5, [R4]
189EAC:  LDRH.W          R12, [R5,R2,LSL#2]
189EB0:  SUB.W           R0, R12, #1
189EB4:  CMP             R0, R1
189EB6:  BLE             loc_189ED6
189EB8:  ORR.W           R0, R1, R1,LSL#16
189EBC:  ADD             R1, SP, #0x28+var_14
189EBE:  STR             R0, [SP,#0x28+var_14]
189EC0:  MOV             R0, R4
189EC2:  BL              sub_18B1A0
189EC6:  B               loc_189F42
189EC8:  BCS             loc_189F42
189ECA:  STRH.W          R1, [SP,#0x28+var_22]
189ECE:  ADD             R2, SP, #0x28+var_24
189ED0:  STRH.W          R1, [SP,#0x28+var_24]
189ED4:  B               loc_189E9E
189ED6:  BNE             loc_189EF6
189ED8:  STRH.W          R0, [R5,R2,LSL#2]
189EDC:  CBZ             R2, loc_189F42
189EDE:  ADD.W           R3, R5, R2,LSL#2
189EE2:  UXTH            R0, R0
189EE4:  MOV             R1, R3
189EE6:  LDRH.W          R5, [R1,#-2]!
189EEA:  ADDS            R5, #1
189EEC:  CMP             R5, R0
189EEE:  BNE             loc_189F42
189EF0:  LDRH            R0, [R3,#2]
189EF2:  STRH            R0, [R1]
189EF4:  B               loc_189F3A
189EF6:  ADD.W           LR, R5, R2,LSL#2
189EFA:  MOVS            R0, #0
189EFC:  MOVS            R6, #0
189EFE:  CMP             R1, R12
189F00:  LDRH.W          R8, [LR,#2]
189F04:  IT CC
189F06:  MOVCC           R0, #1
189F08:  CMP             R1, R8
189F0A:  IT HI
189F0C:  MOVHI           R6, #1
189F0E:  ORRS            R0, R6
189F10:  CMP             R0, #1
189F12:  ITT EQ
189F14:  ADDEQ.W         R0, R8, #1
189F18:  CMPEQ           R0, R1
189F1A:  BNE             loc_189F42
189F1C:  SUBS            R1, R3, #1
189F1E:  STRH.W          R0, [LR,#2]
189F22:  CMP             R2, R1
189F24:  BCS             loc_189F42
189F26:  ADDS            R1, R2, #1
189F28:  MOVS            R6, #1
189F2A:  UXTAH.W         R0, R6, R0
189F2E:  LDRH.W          R3, [R5,R1,LSL#2]
189F32:  CMP             R0, R3
189F34:  BNE             loc_189F42
189F36:  STRH.W          R12, [R5,R1,LSL#2]
189F3A:  MOV             R0, R4
189F3C:  MOV             R1, R2
189F3E:  BL              sub_18B242
189F42:  ADD             SP, SP, #0x18
189F44:  POP.W           {R8}
189F48:  POP             {R4-R7,PC}
