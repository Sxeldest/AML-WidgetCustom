; =========================================================
; Game Engine Function: _ZN7CClouds30VolumetricCloudsGetMaxDistanceEv
; Address            : 0x5A0D74 - 0x5A0D8E
; =========================================================

5A0D74:  LDR             R0, =(Scene_ptr - 0x5A0D7E)
5A0D76:  VLDR            S0, =600.0
5A0D7A:  ADD             R0, PC; Scene_ptr
5A0D7C:  LDR             R0, [R0]; Scene
5A0D7E:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
5A0D80:  VLDR            S2, [R0,#0x84]
5A0D84:  VMIN.F32        D0, D1, D0
5A0D88:  VMOV            R0, S0
5A0D8C:  BX              LR
