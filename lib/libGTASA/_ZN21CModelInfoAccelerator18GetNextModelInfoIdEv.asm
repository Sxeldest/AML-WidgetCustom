; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator18GetNextModelInfoIdEv
; Address            : 0x38653E - 0x38654E
; =========================================================

38653E:  LDRH            R2, [R0,#4]
386540:  LDR             R1, [R0]
386542:  LDRH.W          R1, [R1,R2,LSL#1]
386546:  ADDS            R2, #1
386548:  STRH            R2, [R0,#4]
38654A:  MOV             R0, R1
38654C:  BX              LR
