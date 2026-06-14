; =========================================================
; Game Engine Function: sub_1729EA
; Address            : 0x1729EA - 0x172AB2
; =========================================================

1729EA:  PUSH            {R4-R7,LR}
1729EC:  ADD             R7, SP, #0xC
1729EE:  PUSH.W          {R11}
1729F2:  SUB             SP, SP, #0x28
1729F4:  VMOV.I32        Q8, #0
1729F8:  LDR             R1, [R0,#0x40]
1729FA:  MOV             R4, R0
1729FC:  MOV             R0, SP
1729FE:  MOV             R2, R0
172A00:  MOVS            R3, #0
172A02:  VST1.64         {D16-D17}, [R2]!
172A06:  VST1.64         {D16-D17}, [R2]!
172A0A:  STR             R3, [R2]
172A0C:  STR             R3, [SP,#0x38+var_14]
172A0E:  CBZ             R1, loc_172A1A
172A10:  LDR             R2, [R4,#0x48]
172A12:  ADD.W           R1, R2, R1,LSL#4
172A16:  SUBS            R1, #0x10
172A18:  B               loc_172A1E
172A1A:  LDR             R1, [R4,#0x28]
172A1C:  ADDS            R1, #0x14
172A1E:  VLD1.32         {D16-D17}, [R1]
172A22:  ADDS            R0, #4
172A24:  LDR             R1, [R4,#0x4C]
172A26:  VST1.32         {D16-D17}, [R0]
172A2A:  CBZ             R1, loc_172A38
172A2C:  LDR             R0, [R4,#0x54]
172A2E:  ADD.W           R0, R0, R1,LSL#2
172A32:  LDR.W           R1, [R0,#-4]
172A36:  B               loc_172A3A
172A38:  MOVS            R1, #0
172A3A:  LDRD.W          R0, R2, [R4]
172A3E:  LDR             R6, [R4,#0x30]
172A40:  LDR             R3, [R4,#0xC]
172A42:  CMP             R0, R2
172A44:  STR             R3, [SP,#0x38+var_1C]
172A46:  STRD.W          R1, R6, [SP,#0x38+var_24]
172A4A:  BNE             loc_172A92
172A4C:  CMP             R0, #0
172A4E:  ADD.W           R6, R0, #1
172A52:  ITTE NE
172A54:  ADDNE.W         R1, R0, R0,LSR#31
172A58:  ADDNE.W         R1, R0, R1,ASR#1
172A5C:  MOVEQ           R1, #8
172A5E:  CMP             R1, R6
172A60:  IT GT
172A62:  MOVGT           R6, R1
172A64:  CMP             R0, R6
172A66:  BGE             loc_172A92
172A68:  ADD.W           R0, R6, R6,LSL#2
172A6C:  LSLS            R0, R0, #3
172A6E:  BL              sub_1654B0
172A72:  LDR             R1, [R4,#8]; src
172A74:  MOV             R5, R0
172A76:  CBZ             R1, loc_172A8C
172A78:  LDR             R0, [R4]
172A7A:  ADD.W           R0, R0, R0,LSL#2
172A7E:  LSLS            R2, R0, #3; n
172A80:  MOV             R0, R5; dest
172A82:  BLX             j_memcpy
172A86:  LDR             R0, [R4,#8]
172A88:  BL              sub_165578
172A8C:  LDR             R0, [R4]
172A8E:  STRD.W          R6, R5, [R4,#4]
172A92:  LDR             R1, [R4,#8]
172A94:  ADD.W           R0, R0, R0,LSL#2
172A98:  MOVS            R2, #0x28 ; '('; n
172A9A:  ADD.W           R0, R1, R0,LSL#3; dest
172A9E:  MOV             R1, SP; src
172AA0:  BLX             j_memcpy
172AA4:  LDR             R0, [R4]
172AA6:  ADDS            R0, #1
172AA8:  STR             R0, [R4]
172AAA:  ADD             SP, SP, #0x28 ; '('
172AAC:  POP.W           {R11}
172AB0:  POP             {R4-R7,PC}
