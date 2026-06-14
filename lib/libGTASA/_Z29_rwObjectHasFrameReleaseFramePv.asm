; =========================================================
; Game Engine Function: _Z29_rwObjectHasFrameReleaseFramePv
; Address            : 0x1DD016 - 0x1DD02A
; =========================================================

1DD016:  LDR             R1, [R0,#4]
1DD018:  CMP             R1, #0
1DD01A:  ITTTT NE
1DD01C:  LDRDNE.W        R1, R2, [R0,#8]
1DD020:  STRNE           R1, [R2]
1DD022:  LDRDNE.W        R1, R0, [R0,#8]
1DD026:  STRNE           R0, [R1,#4]
1DD028:  BX              LR
