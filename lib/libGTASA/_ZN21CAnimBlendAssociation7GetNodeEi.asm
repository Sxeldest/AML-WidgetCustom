; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation7GetNodeEi
; Address            : 0x38A014 - 0x38A020
; =========================================================

38A014:  LDR             R0, [R0,#0x10]
38A016:  ADD.W           R1, R1, R1,LSL#1
38A01A:  ADD.W           R0, R0, R1,LSL#3
38A01E:  BX              LR
