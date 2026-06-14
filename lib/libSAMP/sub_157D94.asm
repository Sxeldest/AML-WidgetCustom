; =========================================================
; Game Engine Function: sub_157D94
; Address            : 0x157D94 - 0x157E1C
; =========================================================

157D94:  PUSH            {R4-R7,LR}
157D96:  ADD             R7, SP, #0xC
157D98:  PUSH.W          {R8}
157D9C:  MOV             LR, R0
157D9E:  MOV             R3, R1
157DA0:  LDRB.W          R12, [LR,#4]!
157DA4:  LDRB.W          R6, [R3,#4]!
157DA8:  LDR.W           R2, [LR,#4]
157DAC:  ANDS.W          R8, R12, #1
157DB0:  LDR             R4, [R3,#4]
157DB2:  IT EQ
157DB4:  MOVEQ.W         R2, R12,LSR#1; n
157DB8:  ANDS.W          R5, R6, #1
157DBC:  IT EQ
157DBE:  LSREQ           R4, R6, #1
157DC0:  CMP             R2, R4
157DC2:  BNE             loc_157E02
157DC4:  LDR             R1, [R1,#0xC]
157DC6:  CMP             R5, #0
157DC8:  LDR             R0, [R0,#0xC]
157DCA:  IT EQ
157DCC:  ADDEQ           R1, R3, #1; s2
157DCE:  ADD.W           R3, LR, #1
157DD2:  CMP.W           R8, #0
157DD6:  IT EQ
157DD8:  MOVEQ           R0, R3; s1
157DDA:  BNE             loc_157E06
157DDC:  CBZ             R2, loc_157E14
157DDE:  MOV.W           R0, R12,LSR#1
157DE2:  SUBS            R2, R0, #1
157DE4:  LDRB.W          R0, [R1],#1
157DE8:  LDRB.W          R6, [R3],#1
157DEC:  SUBS            R0, R6, R0
157DEE:  CLZ.W           R0, R0
157DF2:  MOV.W           R0, R0,LSR#5
157DF6:  BNE             loc_157E16
157DF8:  SUBS            R6, R2, #1
157DFA:  CMP             R2, #0
157DFC:  MOV             R2, R6
157DFE:  BNE             loc_157DE4
157E00:  B               loc_157E16
157E02:  MOVS            R0, #0
157E04:  B               loc_157E16
157E06:  CBZ             R2, loc_157E14
157E08:  BLX             memcmp
157E0C:  CLZ.W           R0, R0
157E10:  LSRS            R0, R0, #5
157E12:  B               loc_157E16
157E14:  MOVS            R0, #1
157E16:  POP.W           {R8}
157E1A:  POP             {R4-R7,PC}
