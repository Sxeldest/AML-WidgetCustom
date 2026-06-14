; =========================================================
; Game Engine Function: sub_21DDA8
; Address            : 0x21DDA8 - 0x21DE26
; =========================================================

21DDA8:  PUSH            {R4-R7,LR}
21DDAA:  ADD             R7, SP, #0xC
21DDAC:  PUSH.W          {R8-R10}
21DDB0:  MOV             R9, R0
21DDB2:  LDR             R0, =(dword_6BD63C - 0x21DDBA)
21DDB4:  MOV             R5, R9
21DDB6:  ADD             R0, PC; dword_6BD63C
21DDB8:  LDR.W           R6, [R5,#0x64]!
21DDBC:  LDR             R0, [R0]
21DDBE:  CMP             R6, R5
21DDC0:  ADD.W           R8, R9, R0
21DDC4:  BEQ             loc_21DE16
21DDC6:  LDR             R0, =(RwEngineInstance_ptr - 0x21DDD0)
21DDC8:  LDR.W           R10, =(dword_6BD690 - 0x21DDD2)
21DDCC:  ADD             R0, PC; RwEngineInstance_ptr
21DDCE:  ADD             R10, PC; dword_6BD690
21DDD0:  LDR             R4, [R0]; RwEngineInstance
21DDD2:  MOV             R0, R6
21DDD4:  LDR.W           R1, [R0,#-4]
21DDD8:  LDR             R6, [R0]
21DDDA:  CMP             R1, #0
21DDDC:  ITTT NE
21DDDE:  SUBNE.W         R1, R0, #0xC
21DDE2:  LDRNE           R0, [R1,#0x14]
21DDE4:  CMPNE           R0, #0
21DDE6:  BNE             loc_21DDEE
21DDE8:  CMP             R6, R5
21DDEA:  BNE             loc_21DDD2
21DDEC:  B               loc_21DE16
21DDEE:  LDR             R0, [R1,#0x10]
21DDF0:  STR             R6, [R0]
21DDF2:  LDRD.W          R0, R2, [R1,#0xC]
21DDF6:  STR             R2, [R0,#4]
21DDF8:  LDRD.W          R0, R2, [R1]
21DDFC:  STR             R0, [R2]
21DDFE:  LDRD.W          R0, R2, [R1]
21DE02:  STR             R2, [R0,#4]
21DE04:  LDR.W           R0, [R10]
21DE08:  LDR             R2, [R4]
21DE0A:  LDR             R0, [R2,R0]
21DE0C:  LDR.W           R2, [R2,#0x140]
21DE10:  BLX             R2
21DE12:  CMP             R6, R5
21DE14:  BNE             loc_21DDD2
21DE16:  LDR.W           R0, [R8,#4]
21DE1A:  STR.W           R0, [R9,#0x10]
21DE1E:  MOV             R0, R9
21DE20:  POP.W           {R8-R10}
21DE24:  POP             {R4-R7,PC}
