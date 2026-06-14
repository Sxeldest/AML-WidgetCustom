; =========================================================
; Game Engine Function: _ZNK13CPedAttractor15IsAtHeadOfQueueEP4CPed
; Address            : 0x4A8ECC - 0x4A8EDA
; =========================================================

4A8ECC:  LDR             R0, [R0,#0x20]
4A8ECE:  LDR             R2, [R0]
4A8ED0:  MOVS            R0, #0
4A8ED2:  CMP             R2, R1
4A8ED4:  IT EQ
4A8ED6:  MOVEQ           R0, #1
4A8ED8:  BX              LR
