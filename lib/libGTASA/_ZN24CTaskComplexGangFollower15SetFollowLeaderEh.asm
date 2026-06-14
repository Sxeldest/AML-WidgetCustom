; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollower15SetFollowLeaderEh
; Address            : 0x5177D8 - 0x5177EE
; =========================================================

5177D8:  LDRB.W          R2, [R0,#0x3D]
5177DC:  MOVS            R3, #4
5177DE:  AND.W           R1, R3, R1,LSL#2
5177E2:  AND.W           R2, R2, #0xFB
5177E6:  ORRS            R1, R2
5177E8:  STRB.W          R1, [R0,#0x3D]
5177EC:  BX              LR
