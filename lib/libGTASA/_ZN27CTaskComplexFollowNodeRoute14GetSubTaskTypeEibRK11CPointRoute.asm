; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute14GetSubTaskTypeEibRK11CPointRoute
; Address            : 0x51FF6E - 0x51FF94
; =========================================================

51FF6E:  CMP             R1, #1
51FF70:  ITT NE
51FF72:  MOVNE.W         R0, #0x384
51FF76:  BXNE            LR
51FF78:  LDR             R1, [R2]
51FF7A:  CMP             R1, R0
51FF7C:  ITT EQ
51FF7E:  MOVWEQ          R0, #0x516
51FF82:  BXEQ            LR
51FF84:  ADDS            R2, R0, #1
51FF86:  MOV.W           R0, #0x384
51FF8A:  CMP             R2, R1
51FF8C:  IT EQ
51FF8E:  MOVWEQ          R0, #0x387
51FF92:  BX              LR
