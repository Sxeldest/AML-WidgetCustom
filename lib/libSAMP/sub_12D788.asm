; =========================================================
; Game Engine Function: sub_12D788
; Address            : 0x12D788 - 0x12D7B6
; =========================================================

12D788:  PUSH            {R4,R6,R7,LR}
12D78A:  ADD             R7, SP, #8
12D78C:  MOV             R4, R0
12D78E:  LDRB            R0, [R0,#0x1C]
12D790:  LSLS            R0, R0, #0x1F
12D792:  ITT NE
12D794:  LDRNE           R0, [R4,#0x24]; void *
12D796:  BLXNE           j__ZdlPv; operator delete(void *)
12D79A:  LDRB            R0, [R4,#0x10]
12D79C:  LSLS            R0, R0, #0x1F
12D79E:  ITT NE
12D7A0:  LDRNE           R0, [R4,#0x18]; void *
12D7A2:  BLXNE           j__ZdlPv; operator delete(void *)
12D7A6:  LDRB            R0, [R4,#4]
12D7A8:  LSLS            R0, R0, #0x1F
12D7AA:  ITT NE
12D7AC:  LDRNE           R0, [R4,#0xC]; void *
12D7AE:  BLXNE           j__ZdlPv; operator delete(void *)
12D7B2:  MOV             R0, R4
12D7B4:  POP             {R4,R6,R7,PC}
