; =========================================================
; Game Engine Function: _ZN8CPtrList14IsMemberOfListEPv
; Address            : 0x40DACA - 0x40DAEC
; =========================================================

40DACA:  LDR             R0, [R0]
40DACC:  CMP             R0, #0
40DACE:  ITT EQ
40DAD0:  MOVEQ           R0, #0
40DAD2:  BXEQ            LR
40DAD4:  B               loc_40DAE0
40DAD6:  LDR             R0, [R0,#4]
40DAD8:  CMP             R0, #0
40DADA:  ITT EQ
40DADC:  MOVEQ           R0, #0
40DADE:  BXEQ            LR
40DAE0:  LDR             R2, [R0]
40DAE2:  CMP             R2, R1
40DAE4:  ITT EQ
40DAE6:  MOVEQ           R0, #1
40DAE8:  BXEQ            LR
40DAEA:  B               loc_40DAD6
