; =========================================================
; Game Engine Function: sub_12DE88
; Address            : 0x12DE88 - 0x12DEE4
; =========================================================

12DE88:  PUSH            {R4-R7,LR}
12DE8A:  ADD             R7, SP, #0xC
12DE8C:  PUSH.W          {R11}
12DE90:  MOV             R4, R0
12DE92:  LDR             R0, =(_ZTV4Chat - 0x12DE9C); `vtable for'Chat ...
12DE94:  MOV.W           R5, #0x870
12DE98:  ADD             R0, PC; `vtable for'Chat
12DE9A:  ADDS            R0, #8
12DE9C:  STR             R0, [R4]
12DE9E:  ADDS            R6, R4, R5
12DEA0:  LDRB.W          R0, [R6,#0x34]
12DEA4:  LSLS            R0, R0, #0x1F
12DEA6:  ITT NE
12DEA8:  LDRNE           R0, [R6,#0x3C]; void *
12DEAA:  BLXNE           j__ZdlPv; operator delete(void *)
12DEAE:  LDRB.W          R0, [R6,#0x28]
12DEB2:  LSLS            R0, R0, #0x1F
12DEB4:  ITT NE
12DEB6:  LDRNE           R0, [R6,#0x30]; void *
12DEB8:  BLXNE           j__ZdlPv; operator delete(void *)
12DEBC:  LDRB            R0, [R6,#0x1C]
12DEBE:  LSLS            R0, R0, #0x1F
12DEC0:  ITT NE
12DEC2:  LDRNE           R0, [R6,#0x24]; void *
12DEC4:  BLXNE           j__ZdlPv; operator delete(void *)
12DEC8:  SUBS            R5, #0x48 ; 'H'
12DECA:  BNE             loc_12DE9E
12DECC:  LDR             R1, [R4,#0x58]
12DECE:  ADD.W           R0, R4, #0x54 ; 'T'
12DED2:  BL              sub_12DF4C
12DED6:  MOV             R0, R4
12DED8:  POP.W           {R11}
12DEDC:  POP.W           {R4-R7,LR}
12DEE0:  B.W             sub_12BCE4
