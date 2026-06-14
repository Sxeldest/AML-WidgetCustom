; =========================================================
; Game Engine Function: sub_17DDCE
; Address            : 0x17DDCE - 0x17DE2C
; =========================================================

17DDCE:  PUSH            {R7,LR}
17DDD0:  MOV             R7, SP
17DDD2:  SUB             SP, SP, #8
17DDD4:  LDR             R0, [R2]
17DDD6:  STR             R1, [SP,#0x10+var_C]
17DDD8:  CBZ             R0, loc_17DE20
17DDDA:  LDR.W           R12, [R2,#4]
17DDDE:  CMP.W           R12, #0
17DDE2:  ITTE NE
17DDE4:  STRNE.W         R12, [R2,#8]
17DDE8:  MOVNE           LR, R12
17DDEA:  LDREQ.W         LR, [R2,#8]
17DDEE:  LDR             R1, [R1,#4]
17DDF0:  LDR.W           R3, [LR]
17DDF4:  LDR             R3, [R3,#4]
17DDF6:  CMP             R3, R1
17DDF8:  BCS             loc_17DE20
17DDFA:  LDR.W           R3, [LR,#8]
17DDFE:  CMP             R3, R12
17DE00:  ITT NE
17DE02:  STRNE           R3, [R2,#8]
17DE04:  MOVNE           LR, R3
17DE06:  SUBS            R0, #1
17DE08:  BNE             loc_17DDF0
17DE0A:  CMP.W           R12, #0
17DE0E:  ITT NE
17DE10:  LDRNE.W         R0, [R12,#4]
17DE14:  STRNE           R0, [R2,#8]
17DE16:  ADD             R1, SP, #0x10+var_C
17DE18:  MOV             R0, R2
17DE1A:  BL              sub_17DFD4
17DE1E:  B               loc_17DE28
17DE20:  ADD             R1, SP, #0x10+var_C
17DE22:  MOV             R0, R2
17DE24:  BL              sub_17DF64
17DE28:  ADD             SP, SP, #8
17DE2A:  POP             {R7,PC}
