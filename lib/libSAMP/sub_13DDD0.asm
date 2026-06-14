; =========================================================
; Game Engine Function: sub_13DDD0
; Address            : 0x13DDD0 - 0x13DE14
; =========================================================

13DDD0:  PUSH            {R4-R7,LR}
13DDD2:  ADD             R7, SP, #0xC
13DDD4:  PUSH.W          {R11}
13DDD8:  SUB             SP, SP, #8
13DDDA:  MOV             R4, R0
13DDDC:  LDR             R0, [R0,#0x44]
13DDDE:  LDR             R1, [R4,#0x48]
13DDE0:  SUBS            R1, R1, R0
13DDE2:  BEQ             loc_13DE0C
13DDE4:  CMP             R1, #4
13DDE6:  BHI             loc_13DE0C
13DDE8:  LDR             R5, [R0]
13DDEA:  MOV             R6, R5
13DDEC:  LDR.W           R0, [R6],#0x14
13DDF0:  LDR             R1, [R0,#8]
13DDF2:  MOV             R0, R5
13DDF4:  BLX             R1
13DDF6:  MOVS            R0, #0
13DDF8:  MOV             R1, SP
13DDFA:  STRD.W          R0, R0, [SP,#0x18+var_18]
13DDFE:  MOV             R0, R5
13DE00:  BL              sub_12BD92
13DE04:  MOV             R0, R4
13DE06:  MOV             R1, R6
13DE08:  BL              sub_12BD38
13DE0C:  ADD             SP, SP, #8
13DE0E:  POP.W           {R11}
13DE12:  POP             {R4-R7,PC}
