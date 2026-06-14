; =========================================================
; Game Engine Function: RWLockInit
; Address            : 0x23F2AC - 0x23F2BA
; =========================================================

23F2AC:  MOVS            R1, #0
23F2AE:  STR             R1, [R0]
23F2B0:  STR             R1, [R0,#4]
23F2B2:  STR             R1, [R0,#8]
23F2B4:  STR             R1, [R0,#0xC]
23F2B6:  STR             R1, [R0,#0x10]
23F2B8:  BX              LR
