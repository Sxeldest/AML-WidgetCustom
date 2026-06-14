; =========================================================
; Game Engine Function: sub_EF4E4
; Address            : 0xEF4E4 - 0xEF520
; =========================================================

EF4E4:  PUSH            {R4,R6,R7,LR}
EF4E6:  ADD             R7, SP, #8
EF4E8:  SUB             SP, SP, #8
EF4EA:  MOV             R4, R0
EF4EC:  LDR             R0, [R0,#8]; int
EF4EE:  LDRB            R2, [R4,#4]
EF4F0:  LDR             R1, [R4,#0xC]
EF4F2:  CBZ             R2, loc_EF504
EF4F4:  LDR             R1, [R1,#0x10]
EF4F6:  CMP             R1, #0xB
EF4F8:  BHI             loc_EF512
EF4FA:  LDR             R2, =(off_22AA20 - 0xEF500); "Jan" ...
EF4FC:  ADD             R2, PC; off_22AA20
EF4FE:  LDR.W           R1, [R2,R1,LSL#2]
EF502:  B               loc_EF516
EF504:  LDR             R2, [R4]
EF506:  MOVS            R3, #0
EF508:  STR             R3, [SP,#0x10+var_10]
EF50A:  MOVS            R3, #0x62 ; 'b'
EF50C:  BL              sub_EFCE0
EF510:  B               loc_EF51A
EF512:  LDR             R1, =(asc_8C763 - 0xEF518); "???" ...
EF514:  ADD             R1, PC; "???"
EF516:  BL              sub_DFA8C
EF51A:  STR             R0, [R4,#8]
EF51C:  ADD             SP, SP, #8
EF51E:  POP             {R4,R6,R7,PC}
