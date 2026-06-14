; =========================================================
; Game Engine Function: sub_152874
; Address            : 0x152874 - 0x1528BC
; =========================================================

152874:  PUSH            {R4,R6,R7,LR}
152876:  ADD             R7, SP, #8
152878:  SUB             SP, SP, #0x10
15287A:  STRH.W          R2, [R7,#var_A]
15287E:  SUB.W           R2, R7, #-var_A
152882:  BL              sub_1528BC
152886:  MOV             R4, R0
152888:  MOVS            R0, #0xBF800000
15288E:  MOV.W           R1, #0xFFFFFFFF
152892:  STRD.W          R1, R0, [SP,#0x18+var_18]
152896:  MOVS            R1, #0
152898:  MOVS            R2, #0
15289A:  MOVT            R1, #0x4040
15289E:  MOVT            R2, #0x4396
1528A2:  MOV             R0, R4
1528A4:  MOV.W           R3, #0xFFFFFFFF
1528A8:  BL              sub_150D14
1528AC:  MOV             R0, #0x451C4000
1528B4:  STR             R0, [R4,#0x60]
1528B6:  MOV             R0, R4
1528B8:  ADD             SP, SP, #0x10
1528BA:  POP             {R4,R6,R7,PC}
