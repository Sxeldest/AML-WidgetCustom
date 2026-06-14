; =========================================================
; Game Engine Function: sub_172AB2
; Address            : 0x172AB2 - 0x172B7A
; =========================================================

172AB2:  PUSH            {R4-R7,LR}
172AB4:  ADD             R7, SP, #0xC
172AB6:  PUSH.W          {R8-R11}
172ABA:  SUB             SP, SP, #0x14
172ABC:  MOV             R4, R0
172ABE:  LDR             R0, [R0,#0x40]
172AC0:  CBZ             R0, loc_172ACE
172AC2:  LDR             R1, [R4,#0x48]
172AC4:  ADD.W           R0, R1, R0,LSL#4
172AC8:  SUB.W           R9, R0, #0x10
172ACC:  B               loc_172AD4
172ACE:  LDR             R0, [R4,#0x28]
172AD0:  ADD.W           R9, R0, #0x14
172AD4:  LDR             R5, [R4]
172AD6:  MOV             R1, SP
172AD8:  LDR             R0, [R4,#8]
172ADA:  VLD1.32         {D16-D17}, [R9]
172ADE:  CMP             R5, #1
172AE0:  VST1.64         {D16-D17}, [R1,#0x30+var_30]
172AE4:  BLT             loc_172B0E
172AE6:  CBZ             R0, loc_172B0E
172AE8:  SUB.W           R8, R5, #1
172AEC:  ADD.W           R1, R8, R8,LSL#2
172AF0:  ADD.W           R11, R0, R1,LSL#3
172AF4:  LDR.W           R6, [R11]
172AF8:  CBZ             R6, loc_172B08
172AFA:  ADD.W           R0, R11, #4; s1
172AFE:  MOV             R1, SP; s2
172B00:  MOVS            R2, #0x10; n
172B02:  BLX             memcmp
172B06:  CBNZ            R0, loc_172B0E
172B08:  LDR.W           R0, [R11,#0x20]
172B0C:  CBZ             R0, loc_172B1E
172B0E:  MOV             R0, R4
172B10:  ADD             SP, SP, #0x14
172B12:  POP.W           {R8-R11}
172B16:  POP.W           {R4-R7,LR}
172B1A:  B.W             sub_1729EA
172B1E:  MOV.W           R10, #0
172B22:  CMP             R5, #1
172B24:  IT HI
172B26:  SUBHI.W         R10, R11, #0x28 ; '('
172B2A:  CBNZ            R6, loc_172B60
172B2C:  CMP             R5, #2
172B2E:  BCC             loc_172B60
172B30:  ADD.W           R0, R10, #4; s1
172B34:  MOV             R1, SP; s2
172B36:  MOVS            R2, #0x10; n
172B38:  BLX             memcmp
172B3C:  CBNZ            R0, loc_172B60
172B3E:  LDR             R1, [R4,#0x4C]
172B40:  LDR.W           R0, [R10,#0x14]
172B44:  CBZ             R1, loc_172B52
172B46:  LDR             R2, [R4,#0x54]
172B48:  ADD.W           R1, R2, R1,LSL#2
172B4C:  LDR.W           R1, [R1,#-4]
172B50:  B               loc_172B54
172B52:  MOVS            R1, #0
172B54:  CMP             R0, R1
172B56:  ITT EQ
172B58:  LDREQ.W         R0, [R10,#0x20]
172B5C:  CMPEQ           R0, #0
172B5E:  BEQ             loc_172B74
172B60:  VLD1.32         {D16-D17}, [R9]
172B64:  ADD.W           R0, R11, #4
172B68:  VST1.32         {D16-D17}, [R0]
172B6C:  ADD             SP, SP, #0x14
172B6E:  POP.W           {R8-R11}
172B72:  POP             {R4-R7,PC}
172B74:  STR.W           R8, [R4]
172B78:  B               loc_172B6C
