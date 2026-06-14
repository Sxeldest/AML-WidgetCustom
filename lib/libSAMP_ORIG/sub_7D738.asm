; =========================================================
; Game Engine Function: sub_7D738
; Address            : 0x7D738 - 0x7D75E
; =========================================================

7D738:  PUSH            {R4,R6,R7,LR}
7D73A:  ADD             R7, SP, #8
7D73C:  MOV             R4, R0
7D73E:  LDR             R0, =(_ZTV5Label - 0x7D748); `vtable for'Label ...
7D740:  LDRB.W          R1, [R4,#0x54]
7D744:  ADD             R0, PC; `vtable for'Label
7D746:  ADDS            R0, #8
7D748:  STR             R0, [R4]
7D74A:  LSLS            R0, R1, #0x1F
7D74C:  ITT NE
7D74E:  LDRNE           R0, [R4,#0x5C]; void *
7D750:  BLXNE           j__ZdlPv; operator delete(void *)
7D754:  MOV             R0, R4
7D756:  POP.W           {R4,R6,R7,LR}
7D75A:  B.W             sub_7C3B4
