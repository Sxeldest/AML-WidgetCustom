; =========================================================
; Game Engine Function: sub_103D20
; Address            : 0x103D20 - 0x103D5E
; =========================================================

103D20:  PUSH            {R4-R7,LR}
103D22:  ADD             R7, SP, #0xC
103D24:  PUSH.W          {R11}
103D28:  MOV             R4, R1
103D2A:  LDRD.W          R1, R2, [R0,#8]
103D2E:  LDR             R6, =(sub_FFB40+1 - 0x103D38)
103D30:  MOV             R5, R0
103D32:  MOV             R0, R4
103D34:  ADD             R6, PC; sub_FFB40
103D36:  BLX             R6; sub_FFB40
103D38:  LDR             R1, =(asc_4F675 - 0x103D40); "(" ...
103D3A:  MOV             R0, R4
103D3C:  ADD             R1, PC; "("
103D3E:  ADDS            R2, R1, #1
103D40:  BLX             R6; sub_FFB40
103D42:  LDR             R0, [R5,#0x10]
103D44:  MOV             R1, R4
103D46:  BL              sub_FE074
103D4A:  LDR             R1, =(asc_50037 - 0x103D54); ")" ...
103D4C:  MOV             R0, R4
103D4E:  MOV             R3, R6
103D50:  ADD             R1, PC; ")"
103D52:  ADDS            R2, R1, #1
103D54:  POP.W           {R11}
103D58:  POP.W           {R4-R7,LR}
103D5C:  BX              R3; sub_FFB40
