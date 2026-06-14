; =========================================================
; Game Engine Function: sub_1020FC
; Address            : 0x1020FC - 0x102126
; =========================================================

1020FC:  PUSH            {R4,R6,R7,LR}
1020FE:  ADD             R7, SP, #8
102100:  MOVS            R1, #0
102102:  MOVS            R2, #0
102104:  MOVS            R3, #0
102106:  MOV             R4, R0
102108:  BL              sub_F89BC
10210C:  MOV             R0, R4
10210E:  MOVS            R1, #0
102110:  MOVS            R2, #0
102112:  MOVS            R3, #0
102114:  BL              sub_F8A08
102118:  LDRB.W          R0, [R4,#0x2C4]
10211C:  AND.W           R0, R0, #0xFE
102120:  STRB.W          R0, [R4,#0x2C4]
102124:  POP             {R4,R6,R7,PC}
