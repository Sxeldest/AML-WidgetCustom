; =========================================================
; Game Engine Function: _Z29RpAnimBlendClumpIsInitializedP7RpClump
; Address            : 0x3908CC - 0x3908E8
; =========================================================

3908CC:  LDR             R1, =(ClumpOffset_ptr - 0x3908D2)
3908CE:  ADD             R1, PC; ClumpOffset_ptr
3908D0:  LDR             R1, [R1]; ClumpOffset
3908D2:  LDR             R1, [R1]
3908D4:  LDR             R0, [R0,R1]
3908D6:  CMP             R0, #0
3908D8:  ITT EQ
3908DA:  MOVEQ           R0, #0
3908DC:  BXEQ            LR
3908DE:  LDR             R0, [R0,#8]
3908E0:  CMP             R0, #0
3908E2:  IT NE
3908E4:  MOVNE           R0, #1
3908E6:  BX              LR
