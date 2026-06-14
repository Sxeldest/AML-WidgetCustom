; =========================================================
; Game Engine Function: _ZNK12CTaskManager13GetActiveTaskEv
; Address            : 0x533A32 - 0x533A52
; =========================================================

533A32:  LDR             R1, [R0]
533A34:  CMP             R1, #0
533A36:  ITT EQ
533A38:  LDREQ           R1, [R0,#4]
533A3A:  CMPEQ           R1, #0
533A3C:  BEQ             loc_533A42
533A3E:  MOV             R0, R1
533A40:  BX              LR
533A42:  LDR             R1, [R0,#8]
533A44:  CMP             R1, #0
533A46:  ITT EQ
533A48:  LDREQ           R1, [R0,#0xC]
533A4A:  CMPEQ           R1, #0
533A4C:  BNE             loc_533A3E
533A4E:  LDR             R0, [R0,#0x10]
533A50:  BX              LR
