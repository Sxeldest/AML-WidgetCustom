; =========================================================
; Game Engine Function: sub_476D32
; Address            : 0x476D32 - 0x476D94
; =========================================================

476D32:  PUSH            {R4-R7,LR}
476D34:  ADD             R7, SP, #0xC
476D36:  PUSH.W          {R8-R10}
476D3A:  LDR.W           R12, [R7,#arg_0]
476D3E:  CMP.W           R12, #1
476D42:  BLT             loc_476D8E
476D44:  LDR.W           LR, [R0,#0x1C]
476D48:  LDR.W           R9, [R0,#0x3C]
476D4C:  SUB.W           R8, R12, #1
476D50:  CMP.W           R9, #1
476D54:  BLT             loc_476D82
476D56:  MOV.W           R10, #0
476D5A:  CMP.W           LR, #0
476D5E:  BEQ             loc_476D7A
476D60:  LDR.W           R0, [R2,R10,LSL#2]
476D64:  LDR             R4, [R1]
476D66:  LDR.W           R6, [R0,R3,LSL#2]
476D6A:  MOV             R0, LR
476D6C:  LDRB.W          R5, [R10,R4]
476D70:  ADD             R4, R9
476D72:  STRB.W          R5, [R6],#1
476D76:  SUBS            R0, #1
476D78:  BNE             loc_476D6C
476D7A:  ADD.W           R10, R10, #1
476D7E:  CMP             R10, R9
476D80:  BNE             loc_476D5A
476D82:  ADDS            R3, #1
476D84:  ADDS            R1, #4
476D86:  CMP.W           R12, #1
476D8A:  MOV             R12, R8
476D8C:  BGT             loc_476D4C
476D8E:  POP.W           {R8-R10}
476D92:  POP             {R4-R7,PC}
