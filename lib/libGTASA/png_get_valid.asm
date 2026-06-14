; =========================================================
; Game Engine Function: png_get_valid
; Address            : 0x1F3190 - 0x1F31A4
; =========================================================

1F3190:  MOV             R3, R0
1F3192:  MOVS            R0, #0
1F3194:  CMP             R3, #0
1F3196:  IT EQ
1F3198:  BXEQ            LR
1F319A:  CMP             R1, #0
1F319C:  ITT NE
1F319E:  LDRNE           R0, [R1,#8]
1F31A0:  ANDNE           R0, R2
1F31A2:  BX              LR
