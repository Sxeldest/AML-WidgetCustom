; =========================================================
; Game Engine Function: sub_F8BC8
; Address            : 0xF8BC8 - 0xF8C18
; =========================================================

F8BC8:  PUSH            {R4-R7,LR}
F8BCA:  ADD             R7, SP, #0xC
F8BCC:  PUSH.W          {R11}
F8BD0:  CMP             R3, R1
F8BD2:  BCS             loc_F8C00
F8BD4:  LDR.W           R12, [R7,#arg_0]
F8BD8:  CMP.W           R12, #0
F8BDC:  BEQ             loc_F8C00
F8BDE:  ADD.W           LR, R0, R1
F8BE2:  ADD             R3, R0
F8BE4:  CMP             R3, LR
F8BE6:  BEQ             loc_F8C06
F8BE8:  MOV             R5, R12
F8BEA:  MOV             R6, R2
F8BEC:  CBZ             R5, loc_F8BFC
F8BEE:  LDRB.W          R4, [R6],#1
F8BF2:  SUBS            R5, #1
F8BF4:  LDRB            R1, [R3]
F8BF6:  CMP             R1, R4
F8BF8:  BNE             loc_F8BEC
F8BFA:  B               loc_F8C08
F8BFC:  ADDS            R3, #1
F8BFE:  B               loc_F8BE4
F8C00:  MOV.W           R0, #0xFFFFFFFF
F8C04:  B               loc_F8C12
F8C06:  MOV             R3, LR
F8C08:  SUBS            R0, R3, R0
F8C0A:  CMP             R3, LR
F8C0C:  IT EQ
F8C0E:  MOVEQ.W         R0, #0xFFFFFFFF
F8C12:  POP.W           {R11}
F8C16:  POP             {R4-R7,PC}
