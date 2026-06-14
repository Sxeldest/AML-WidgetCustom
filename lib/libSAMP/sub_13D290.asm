; =========================================================
; Game Engine Function: sub_13D290
; Address            : 0x13D290 - 0x13D2B6
; =========================================================

13D290:  PUSH            {R4,R6,R7,LR}
13D292:  ADD             R7, SP, #8
13D294:  MOV             R4, R0
13D296:  LDR             R0, =(_ZTV7EditBox - 0x13D2A0); `vtable for'EditBox ...
13D298:  LDRB.W          R1, [R4,#0x58]
13D29C:  ADD             R0, PC; `vtable for'EditBox
13D29E:  ADDS            R0, #8
13D2A0:  STR             R0, [R4]
13D2A2:  LSLS            R0, R1, #0x1F
13D2A4:  ITT NE
13D2A6:  LDRNE           R0, [R4,#0x60]; void *
13D2A8:  BLXNE           j__ZdlPv; operator delete(void *)
13D2AC:  MOV             R0, R4
13D2AE:  POP.W           {R4,R6,R7,LR}
13D2B2:  B.W             sub_12BCE4
