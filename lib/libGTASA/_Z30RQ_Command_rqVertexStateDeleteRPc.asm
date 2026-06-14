; =========================================================
; Game Engine Function: _Z30RQ_Command_rqVertexStateDeleteRPc
; Address            : 0x1CBD8C - 0x1CBDA2
; =========================================================

1CBD8C:  MOV             R1, R0
1CBD8E:  LDR             R2, [R1]
1CBD90:  LDR.W           R0, [R2],#4
1CBD94:  STR             R2, [R1]
1CBD96:  CMP             R0, #0
1CBD98:  IT EQ
1CBD9A:  BXEQ            LR
1CBD9C:  LDR             R1, [R0]
1CBD9E:  LDR             R1, [R1,#4]
1CBDA0:  BX              R1
