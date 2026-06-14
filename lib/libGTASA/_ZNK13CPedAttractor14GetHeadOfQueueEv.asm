; =========================================================
; Game Engine Function: _ZNK13CPedAttractor14GetHeadOfQueueEv
; Address            : 0x4A8EDA - 0x4A8EE8
; =========================================================

4A8EDA:  LDR             R1, [R0,#0x1C]
4A8EDC:  CMP             R1, #0
4A8EDE:  ITEE EQ
4A8EE0:  MOVEQ           R0, #0
4A8EE2:  LDRNE           R0, [R0,#dword_20]
4A8EE4:  LDRNE           R0, [R0]
4A8EE6:  BX              LR
