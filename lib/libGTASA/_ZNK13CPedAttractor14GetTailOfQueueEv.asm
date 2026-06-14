; =========================================================
; Game Engine Function: _ZNK13CPedAttractor14GetTailOfQueueEv
; Address            : 0x4A8EE8 - 0x4A8EFC
; =========================================================

4A8EE8:  LDR             R1, [R0,#0x1C]
4A8EEA:  CMP             R1, #0
4A8EEC:  ITEEE EQ
4A8EEE:  MOVEQ           R0, #0
4A8EF0:  LDRNE           R0, [R0,#dword_20]
4A8EF2:  ADDNE.W         R0, R0, R1,LSL#2
4A8EF6:  LDRNE.W         R0, [R0,#-4]
4A8EFA:  BX              LR
