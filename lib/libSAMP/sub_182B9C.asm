; =========================================================
; Game Engine Function: sub_182B9C
; Address            : 0x182B9C - 0x182BE8
; =========================================================

182B9C:  PUSH            {R4-R7,LR}
182B9E:  ADD             R7, SP, #0xC
182BA0:  PUSH.W          {R11}
182BA4:  SUB             SP, SP, #8
182BA6:  MOV             R6, R2
182BA8:  SUB.W           R2, R7, #-var_11
182BAC:  MOV             R5, R0
182BAE:  BL              sub_182454
182BB2:  MOV             R4, R0
182BB4:  LDRB.W          R0, [R7,#var_11]
182BB8:  CBZ             R0, loc_182BC0
182BBA:  MOV.W           R4, #0xFFFFFFFF
182BBE:  B               loc_182BDE
182BC0:  LDR             R0, [R5,#4]
182BC2:  LDM.W           R6, {R1-R3}
182BC6:  CMP             R4, R0
182BC8:  BCS             loc_182BD4
182BCA:  MOV             R0, R5
182BCC:  STR             R4, [SP,#0x18+var_18]
182BCE:  BL              sub_186A4E
182BD2:  B               loc_182BDE
182BD4:  MOV             R0, R5
182BD6:  BL              sub_1869CA
182BDA:  LDR             R0, [R5,#4]
182BDC:  SUBS            R4, R0, #1
182BDE:  MOV             R0, R4
182BE0:  ADD             SP, SP, #8
182BE2:  POP.W           {R11}
182BE6:  POP             {R4-R7,PC}
