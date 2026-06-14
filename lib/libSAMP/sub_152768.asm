; =========================================================
; Game Engine Function: sub_152768
; Address            : 0x152768 - 0x1527AE
; =========================================================

152768:  PUSH            {R4,R6,R7,LR}
15276A:  ADD             R7, SP, #8
15276C:  SUB             SP, SP, #0x10
15276E:  STRH.W          R2, [R7,#var_A]
152772:  SUB.W           R2, R7, #-var_A
152776:  BL              sub_1527B0
15277A:  MOV             R4, R0
15277C:  MOV             R0, #0x3ECCCCCD
152784:  MOV.W           R1, #0x10E
152788:  STRD.W          R1, R0, [SP,#0x18+var_18]
15278C:  MOVS            R1, #0
15278E:  MOVS            R2, #0
152790:  MOVT            R1, #0x4040
152794:  MOVT            R2, #0x4396
152798:  MOV             R0, R4
15279A:  MOVS            R3, #0x2D ; '-'
15279C:  BL              sub_150D14
1527A0:  MOVS            R0, #0x44610000
1527A6:  STR             R0, [R4,#0x60]
1527A8:  MOV             R0, R4
1527AA:  ADD             SP, SP, #0x10
1527AC:  POP             {R4,R6,R7,PC}
