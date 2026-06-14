; =========================================================
; Game Engine Function: sub_189A44
; Address            : 0x189A44 - 0x189B34
; =========================================================

189A44:  PUSH            {R4-R7,LR}
189A46:  ADD             R7, SP, #0xC
189A48:  PUSH.W          {R8-R11}
189A4C:  SUB             SP, SP, #4
189A4E:  LDR.W           R8, [R0,#0xC]
189A52:  MOV             R6, R1
189A54:  MOV             R11, R0
189A56:  CMP.W           R8, #0
189A5A:  BEQ             loc_189B0C
189A5C:  LDR.W           R0, [R11,#4]
189A60:  CMP             R0, #0
189A62:  IT EQ
189A64:  MOVEQ           R0, R8
189A66:  SUB.W           R9, R0, #1
189A6A:  STR.W           R9, [R11,#4]
189A6E:  CBZ             R2, loc_189A88
189A70:  LSLS            R0, R0, #2
189A72:  MOV             R1, R2
189A74:  LDR.W           R3, [R11]
189A78:  SUBS            R1, #1
189A7A:  LDR             R5, [R3,R0]
189A7C:  ADD             R3, R0
189A7E:  ADD.W           R0, R0, #4
189A82:  STR.W           R5, [R3,#-4]
189A86:  BNE             loc_189A74
189A88:  LDR.W           R1, [R11,#8]
189A8C:  ADD             R2, R9
189A8E:  LDR.W           R0, [R11]
189A92:  LDR             R3, [R6]
189A94:  CMP             R1, R9
189A96:  STR.W           R3, [R0,R2,LSL#2]
189A9A:  BNE             loc_189B2C
189A9C:  MOV             R0, #0x3FFFFFFE
189AA4:  AND.W           R0, R0, R8,LSL#1
189AA8:  SUBS.W          R1, R0, R8,LSL#1
189AAC:  MOV.W           R0, R8,LSL#3
189AB0:  IT NE
189AB2:  MOVNE           R1, #1
189AB4:  CMP             R1, #0
189AB6:  IT NE
189AB8:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
189ABC:  BLX             j__Znaj; operator new[](uint)
189AC0:  MOV             R4, R8
189AC2:  CMP.W           R8, #1
189AC6:  IT LS
189AC8:  MOVLS           R4, #1
189ACA:  LDR.W           R5, [R11]
189ACE:  MOV             R6, R0
189AD0:  MOV.W           R0, R8,LSL#1
189AD4:  MOV.W           R10, #0
189AD8:  STR             R0, [SP,#0x20+var_20]
189ADA:  ADD.W           R0, R9, R10
189ADE:  MOV             R1, R8
189AE0:  BLX             sub_221798
189AE4:  LDR.W           R0, [R5,R1,LSL#2]
189AE8:  STR.W           R0, [R6,R10,LSL#2]
189AEC:  ADD.W           R10, R10, #1
189AF0:  CMP             R4, R10
189AF2:  BNE             loc_189ADA
189AF4:  MOVS            R0, #0
189AF6:  STRD.W          R0, R8, [R11,#4]
189AFA:  LDR             R0, [SP,#0x20+var_20]
189AFC:  STR.W           R0, [R11,#0xC]
189B00:  MOV             R0, R5; void *
189B02:  BLX             j__ZdaPv; operator delete[](void *)
189B06:  STR.W           R6, [R11]
189B0A:  B               loc_189B2C
189B0C:  MOVS            R0, #0x40 ; '@'; unsigned int
189B0E:  BLX             j__Znaj; operator new[](uint)
189B12:  MOVS            R1, #1
189B14:  STR.W           R0, [R11]
189B18:  STR.W           R1, [R11,#8]
189B1C:  MOVS            R1, #0
189B1E:  STR.W           R1, [R11,#4]
189B22:  MOVS            R2, #0x10
189B24:  LDR             R1, [R6]
189B26:  STR.W           R2, [R11,#0xC]
189B2A:  STR             R1, [R0]
189B2C:  ADD             SP, SP, #4
189B2E:  POP.W           {R8-R11}
189B32:  POP             {R4-R7,PC}
