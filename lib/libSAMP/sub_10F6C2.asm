; =========================================================
; Game Engine Function: sub_10F6C2
; Address            : 0x10F6C2 - 0x10F6F4
; =========================================================

10F6C2:  PUSH            {R4-R7,LR}
10F6C4:  ADD             R7, SP, #0xC
10F6C6:  PUSH.W          {R11}
10F6CA:  MOV             R4, R0
10F6CC:  LDRD.W          R5, R0, [R0]
10F6D0:  CMP             R0, R5
10F6D2:  BEQ             loc_10F6EC
10F6D4:  MOV             R6, R0
10F6D6:  LDRB.W          R1, [R6,#-0x14]!
10F6DA:  LSLS            R1, R1, #0x1F
10F6DC:  ITT NE
10F6DE:  LDRNE.W         R0, [R0,#-0xC]; void *
10F6E2:  BLXNE           j__ZdlPv; operator delete(void *)
10F6E6:  CMP             R6, R5
10F6E8:  MOV             R0, R6
10F6EA:  BNE             loc_10F6D6
10F6EC:  STR             R5, [R4,#4]
10F6EE:  POP.W           {R11}
10F6F2:  POP             {R4-R7,PC}
