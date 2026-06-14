; =========================================================
; Game Engine Function: sub_7D764
; Address            : 0x7D764 - 0x7D78E
; =========================================================

7D764:  PUSH            {R4,R6,R7,LR}
7D766:  ADD             R7, SP, #8
7D768:  MOV             R4, R0
7D76A:  LDR             R0, =(_ZTV5Label - 0x7D774); `vtable for'Label ...
7D76C:  LDRB.W          R1, [R4,#0x54]
7D770:  ADD             R0, PC; `vtable for'Label
7D772:  ADDS            R0, #8
7D774:  STR             R0, [R4]
7D776:  LSLS            R0, R1, #0x1F
7D778:  ITT NE
7D77A:  LDRNE           R0, [R4,#0x5C]; void *
7D77C:  BLXNE           j__ZdlPv; operator delete(void *)
7D780:  MOV             R0, R4
7D782:  BL              sub_7C3B4
7D786:  POP.W           {R4,R6,R7,LR}
7D78A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
