; =========================================================
; Game Engine Function: _ZN6CTrain22ReleaseOneMissionTrainEPS_
; Address            : 0x57FE7C - 0x57FE9A
; =========================================================

57FE7C:  CMP             R0, #0
57FE7E:  IT EQ
57FE80:  BXEQ            LR
57FE82:  LDR.W           R2, [R0,#0x5E8]
57FE86:  LDRH.W          R1, [R0,#0x5CC]
57FE8A:  CMP             R2, #0
57FE8C:  BIC.W           R1, R1, #0x20 ; ' '
57FE90:  STRH.W          R1, [R0,#0x5CC]
57FE94:  MOV             R0, R2
57FE96:  BNE             loc_57FE82
57FE98:  BX              LR
