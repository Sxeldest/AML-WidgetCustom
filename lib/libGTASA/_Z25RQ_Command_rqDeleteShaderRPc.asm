; =========================================================
; Game Engine Function: _Z25RQ_Command_rqDeleteShaderRPc
; Address            : 0x1CDCEC - 0x1CDD02
; =========================================================

1CDCEC:  MOV             R1, R0
1CDCEE:  LDR             R2, [R1]
1CDCF0:  LDR.W           R0, [R2],#4
1CDCF4:  STR             R2, [R1]
1CDCF6:  CMP             R0, #0
1CDCF8:  IT EQ
1CDCFA:  BXEQ            LR
1CDCFC:  LDR             R1, [R0]
1CDCFE:  LDR             R1, [R1,#4]
1CDD00:  BX              R1
