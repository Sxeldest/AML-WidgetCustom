; =========================================================
; Game Engine Function: _ZN20CTaskComplexSequence18CreateFirstSubTaskEP4CPed
; Address            : 0x4EE878 - 0x4EE88E
; =========================================================

4EE878:  LDR             R1, [R0,#0xC]
4EE87A:  ADD.W           R0, R0, R1,LSL#2
4EE87E:  LDR             R0, [R0,#0x10]
4EE880:  CMP             R0, #0
4EE882:  ITT EQ
4EE884:  MOVEQ           R0, #0
4EE886:  BXEQ            LR
4EE888:  LDR             R1, [R0]
4EE88A:  LDR             R1, [R1,#8]
4EE88C:  BX              R1
