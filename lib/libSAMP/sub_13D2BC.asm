; =========================================================
; Game Engine Function: sub_13D2BC
; Address            : 0x13D2BC - 0x13D2E6
; =========================================================

13D2BC:  PUSH            {R4,R6,R7,LR}
13D2BE:  ADD             R7, SP, #8
13D2C0:  MOV             R4, R0
13D2C2:  LDR             R0, =(_ZTV7EditBox - 0x13D2CC); `vtable for'EditBox ...
13D2C4:  LDRB.W          R1, [R4,#0x58]
13D2C8:  ADD             R0, PC; `vtable for'EditBox
13D2CA:  ADDS            R0, #8
13D2CC:  STR             R0, [R4]
13D2CE:  LSLS            R0, R1, #0x1F
13D2D0:  ITT NE
13D2D2:  LDRNE           R0, [R4,#0x60]; void *
13D2D4:  BLXNE           j__ZdlPv; operator delete(void *)
13D2D8:  MOV             R0, R4
13D2DA:  BL              sub_12BCE4
13D2DE:  POP.W           {R4,R6,R7,LR}
13D2E2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
