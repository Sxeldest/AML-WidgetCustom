; =========================================================
; Game Engine Function: sub_1EEFF8
; Address            : 0x1EEFF8 - 0x1EF00C
; =========================================================

1EEFF8:  PUSH            {R4,R6,R7,LR}
1EEFFA:  ADD             R7, SP, #8
1EEFFC:  MOV             R4, R0
1EEFFE:  BL              sub_1EF13C
1EF002:  LDRD.W          R1, R2, [R4,#0x10]
1EF006:  ADD             R1, R2
1EF008:  SUBS            R0, R0, R1
1EF00A:  POP             {R4,R6,R7,PC}
