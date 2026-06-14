; =========================================================
; Game Engine Function: _Z26RQ_Command_rqDeleteTextureRPc
; Address            : 0x1D038C - 0x1D03A2
; =========================================================

1D038C:  MOV             R1, R0
1D038E:  LDR             R2, [R1]
1D0390:  LDR.W           R0, [R2],#4
1D0394:  STR             R2, [R1]
1D0396:  CMP             R0, #0
1D0398:  IT EQ
1D039A:  BXEQ            LR
1D039C:  LDR             R1, [R0]
1D039E:  LDR             R1, [R1,#4]
1D03A0:  BX              R1
