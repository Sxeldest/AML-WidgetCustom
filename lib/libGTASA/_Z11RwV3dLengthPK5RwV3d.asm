; =========================================================
; Game Engine Function: _Z11RwV3dLengthPK5RwV3d
; Address            : 0x1E67B8 - 0x1E6824
; =========================================================

1E67B8:  SUB             SP, SP, #4
1E67BA:  VLDR            S0, [R0]
1E67BE:  VLDR            S2, [R0,#4]
1E67C2:  VMUL.F32        S0, S0, S0
1E67C6:  VLDR            S4, [R0,#8]
1E67CA:  VMUL.F32        S2, S2, S2
1E67CE:  VMUL.F32        S4, S4, S4
1E67D2:  VADD.F32        S0, S0, S2
1E67D6:  VADD.F32        S0, S0, S4
1E67DA:  VSTR            S0, [SP,#4+var_4]
1E67DE:  LDR             R0, [SP,#4+var_4]
1E67E0:  CBZ             R0, loc_1E6818
1E67E2:  LDR             R0, =(RwEngineInstance_ptr - 0x1E67EE)
1E67E4:  MOV.W           R2, #0x3FC00000
1E67E8:  LDR             R1, =(dword_6BD0E4 - 0x1E67F0)
1E67EA:  ADD             R0, PC; RwEngineInstance_ptr
1E67EC:  ADD             R1, PC; dword_6BD0E4
1E67EE:  LDR             R0, [R0]; RwEngineInstance
1E67F0:  LDR             R1, [R1]
1E67F2:  LDR             R0, [R0]
1E67F4:  LDR             R0, [R0,R1]
1E67F6:  LDR             R1, [SP,#4+var_4]
1E67F8:  ADD.W           R1, R1, #0x800
1E67FC:  STR             R1, [SP,#4+var_4]
1E67FE:  LDR             R1, [SP,#4+var_4]
1E6800:  UBFX.W          R1, R1, #0xC, #0xC
1E6804:  LDR.W           R0, [R0,R1,LSL#2]
1E6808:  LDR             R1, [SP,#4+var_4]
1E680A:  AND.W           R1, R2, R1,LSR#1
1E680E:  ADD             R0, R1
1E6810:  STR             R0, [SP,#4+var_4]
1E6812:  VMOV            S0, R0
1E6816:  B               loc_1E681C
1E6818:  VLDR            S0, =0.0
1E681C:  VMOV            R0, S0
1E6820:  ADD             SP, SP, #4
1E6822:  BX              LR
