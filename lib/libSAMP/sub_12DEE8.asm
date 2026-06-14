; =========================================================
; Game Engine Function: sub_12DEE8
; Address            : 0x12DEE8 - 0x12DF48
; =========================================================

12DEE8:  PUSH            {R4-R7,LR}
12DEEA:  ADD             R7, SP, #0xC
12DEEC:  PUSH.W          {R11}
12DEF0:  MOV             R4, R0
12DEF2:  LDR             R0, =(_ZTV4Chat - 0x12DEFC); `vtable for'Chat ...
12DEF4:  MOV.W           R5, #0x870
12DEF8:  ADD             R0, PC; `vtable for'Chat
12DEFA:  ADDS            R0, #8
12DEFC:  STR             R0, [R4]
12DEFE:  ADDS            R6, R4, R5
12DF00:  LDRB.W          R0, [R6,#0x34]
12DF04:  LSLS            R0, R0, #0x1F
12DF06:  ITT NE
12DF08:  LDRNE           R0, [R6,#0x3C]; void *
12DF0A:  BLXNE           j__ZdlPv; operator delete(void *)
12DF0E:  LDRB.W          R0, [R6,#0x28]
12DF12:  LSLS            R0, R0, #0x1F
12DF14:  ITT NE
12DF16:  LDRNE           R0, [R6,#0x30]; void *
12DF18:  BLXNE           j__ZdlPv; operator delete(void *)
12DF1C:  LDRB            R0, [R6,#0x1C]
12DF1E:  LSLS            R0, R0, #0x1F
12DF20:  ITT NE
12DF22:  LDRNE           R0, [R6,#0x24]; void *
12DF24:  BLXNE           j__ZdlPv; operator delete(void *)
12DF28:  SUBS            R5, #0x48 ; 'H'
12DF2A:  BNE             loc_12DEFE
12DF2C:  LDR             R1, [R4,#0x58]
12DF2E:  ADD.W           R0, R4, #0x54 ; 'T'
12DF32:  BL              sub_12DF4C
12DF36:  MOV             R0, R4
12DF38:  BL              sub_12BCE4
12DF3C:  POP.W           {R11}
12DF40:  POP.W           {R4-R7,LR}
12DF44:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
