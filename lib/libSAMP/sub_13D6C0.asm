; =========================================================
; Game Engine Function: sub_13D6C0
; Address            : 0x13D6C0 - 0x13D6E6
; =========================================================

13D6C0:  PUSH            {R4,R6,R7,LR}
13D6C2:  ADD             R7, SP, #8
13D6C4:  MOV             R4, R0
13D6C6:  LDR             R0, =(_ZTV5Label - 0x13D6D0); `vtable for'Label ...
13D6C8:  LDRB.W          R1, [R4,#0x54]
13D6CC:  ADD             R0, PC; `vtable for'Label
13D6CE:  ADDS            R0, #8
13D6D0:  STR             R0, [R4]
13D6D2:  LSLS            R0, R1, #0x1F
13D6D4:  ITT NE
13D6D6:  LDRNE           R0, [R4,#0x5C]; void *
13D6D8:  BLXNE           j__ZdlPv; operator delete(void *)
13D6DC:  MOV             R0, R4
13D6DE:  POP.W           {R4,R6,R7,LR}
13D6E2:  B.W             sub_12BCE4
