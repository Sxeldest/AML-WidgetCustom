; =========================================================
; Game Engine Function: sub_12E8CC
; Address            : 0x12E8CC - 0x12E902
; =========================================================

12E8CC:  PUSH            {R4,R5,R7,LR}
12E8CE:  ADD             R7, SP, #8
12E8D0:  MOV             R4, R0
12E8D2:  LDR             R0, =(_ZTV12express_menu - 0x12E8DC); `vtable for'express_menu ...
12E8D4:  MOV             R5, R4
12E8D6:  MOVS            R1, #0
12E8D8:  ADD             R0, PC; `vtable for'express_menu
12E8DA:  ADDS            R0, #8
12E8DC:  STR.W           R0, [R5],#0x54
12E8E0:  ADD.W           R0, R4, #0x5C ; '\'
12E8E4:  BL              sub_12EC64
12E8E8:  ADD.W           R0, R4, #0x58 ; 'X'
12E8EC:  MOVS            R1, #0
12E8EE:  BL              sub_12EC4A
12E8F2:  MOV             R0, R5
12E8F4:  BL              sub_1630A8
12E8F8:  MOV             R0, R4
12E8FA:  POP.W           {R4,R5,R7,LR}
12E8FE:  B.W             sub_12BCE4
