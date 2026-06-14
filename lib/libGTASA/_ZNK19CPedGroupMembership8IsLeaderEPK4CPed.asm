; =========================================================
; Game Engine Function: _ZNK19CPedGroupMembership8IsLeaderEPK4CPed
; Address            : 0x4B233A - 0x4B234E
; =========================================================

4B233A:  MOV             R2, R0
4B233C:  MOVS            R0, #0
4B233E:  CMP             R1, #0
4B2340:  IT EQ
4B2342:  BXEQ            LR
4B2344:  LDR             R2, [R2,#0x20]
4B2346:  CMP             R2, R1
4B2348:  IT EQ
4B234A:  MOVEQ           R0, #1
4B234C:  BX              LR
