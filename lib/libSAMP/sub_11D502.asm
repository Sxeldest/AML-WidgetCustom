; =========================================================
; Game Engine Function: sub_11D502
; Address            : 0x11D502 - 0x11D522
; =========================================================

11D502:  PUSH            {R4,R6,R7,LR}
11D504:  ADD             R7, SP, #8
11D506:  SUB             SP, SP, #0x10
11D508:  MOV             R4, R0
11D50A:  MOVS            R0, #0
11D50C:  STR             R0, [R4,#0x10]
11D50E:  STR             R2, [SP,#0x18+var_C]
11D510:  STRD.W          R3, R1, [SP,#0x18+var_14]
11D514:  ADD             R1, SP, #0x18+var_14
11D516:  MOV             R0, R4
11D518:  BL              sub_11D784
11D51C:  MOV             R0, R4
11D51E:  ADD             SP, SP, #0x10
11D520:  POP             {R4,R6,R7,PC}
