; =========================================================
; Game Engine Function: _ZN14CStreamingInfo6InListEv
; Address            : 0x2CF4F0 - 0x2CF500
; =========================================================

2CF4F0:  LDRH            R1, [R0]
2CF4F2:  MOVW            R2, #0xFFFF
2CF4F6:  MOVS            R0, #0
2CF4F8:  CMP             R1, R2
2CF4FA:  IT NE
2CF4FC:  MOVNE           R0, #1
2CF4FE:  BX              LR
