; =========================================================
; Game Engine Function: sub_1109F4
; Address            : 0x1109F4 - 0x110A14
; =========================================================

1109F4:  PUSH            {R7,LR}
1109F6:  MOV             R7, SP
1109F8:  MOV             R3, R1
1109FA:  LDRH            R1, [R1,#0x26]
1109FC:  MOVW            LR, #0x31C7
110A00:  LDR.W           R12, [R0]
110A04:  SUBS.W          R1, R1, LR
110A08:  MOV             R0, R3
110A0A:  IT NE
110A0C:  MOVNE           R1, R2
110A0E:  POP.W           {R7,LR}
110A12:  BX              R12
