; =========================================================
; Game Engine Function: sub_2200EC
; Address            : 0x2200EC - 0x220100
; =========================================================

2200EC:  PUSH            {R2-R4,R6,R7,LR}
2200EE:  ADD             R7, SP, #0x10
2200F0:  MOV             R4, R2
2200F2:  STR             R3, [SP,#0x10+var_10]
2200F4:  MOV.W           R2, #0xFFFFFFFF
2200F8:  MOV             R3, R4
2200FA:  BL              sub_21FFB4
2200FE:  POP             {R2-R4,R6,R7,PC}
