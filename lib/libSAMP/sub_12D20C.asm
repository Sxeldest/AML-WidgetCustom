; =========================================================
; Game Engine Function: sub_12D20C
; Address            : 0x12D20C - 0x12D258
; =========================================================

12D20C:  PUSH            {R4-R7,LR}
12D20E:  ADD             R7, SP, #0xC
12D210:  PUSH.W          {R11}
12D214:  MOV             R4, R0
12D216:  MOV.W           R5, #0x870
12D21A:  ADDS            R6, R4, R5
12D21C:  LDRB.W          R0, [R6,#-0x2C]
12D220:  LSLS            R0, R0, #0x1F
12D222:  ITT NE
12D224:  LDRNE.W         R0, [R6,#-0x24]; void *
12D228:  BLXNE           j__ZdlPv; operator delete(void *)
12D22C:  LDRB.W          R0, [R6,#-0x38]
12D230:  LSLS            R0, R0, #0x1F
12D232:  ITT NE
12D234:  LDRNE.W         R0, [R6,#-0x30]; void *
12D238:  BLXNE           j__ZdlPv; operator delete(void *)
12D23C:  LDRB.W          R0, [R6,#-0x44]
12D240:  LSLS            R0, R0, #0x1F
12D242:  ITT NE
12D244:  LDRNE.W         R0, [R6,#-0x3C]; void *
12D248:  BLXNE           j__ZdlPv; operator delete(void *)
12D24C:  SUBS            R5, #0x48 ; 'H'
12D24E:  BNE             loc_12D21A
12D250:  MOV             R0, R4
12D252:  POP.W           {R11}
12D256:  POP             {R4-R7,PC}
