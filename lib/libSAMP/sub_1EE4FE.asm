; =========================================================
; Game Engine Function: sub_1EE4FE
; Address            : 0x1EE4FE - 0x1EE524
; =========================================================

1EE4FE:  PUSH            {R4,R5,R7,LR}
1EE500:  ADD             R7, SP, #8
1EE502:  MOV             R5, R0
1EE504:  LDRB            R0, [R0]
1EE506:  MOV             R4, R1
1EE508:  LSLS            R0, R0, #0x1F
1EE50A:  ITT NE
1EE50C:  LDRNE           R0, [R5,#8]; void *
1EE50E:  BLXNE           j__ZdlPv; operator delete(void *)
1EE512:  LDR             R0, [R4,#8]
1EE514:  STR             R0, [R5,#8]
1EE516:  MOVS            R0, #0
1EE518:  VLDR            D16, [R4]
1EE51C:  VSTR            D16, [R5]
1EE520:  STRH            R0, [R4]
1EE522:  POP             {R4,R5,R7,PC}
