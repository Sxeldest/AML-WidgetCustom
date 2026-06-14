; =========================================================
; Game Engine Function: _Z11RwV2dLengthPK5RwV2d
; Address            : 0x1E6830 - 0x1E6890
; =========================================================

1E6830:  SUB             SP, SP, #4
1E6832:  VLDR            S0, [R0]
1E6836:  VLDR            S2, [R0,#4]
1E683A:  VMUL.F32        S0, S0, S0
1E683E:  VMUL.F32        S2, S2, S2
1E6842:  VADD.F32        S0, S0, S2
1E6846:  VSTR            S0, [SP,#4+var_4]
1E684A:  LDR             R0, [SP,#4+var_4]
1E684C:  CBZ             R0, loc_1E6884
1E684E:  LDR             R0, =(RwEngineInstance_ptr - 0x1E685A)
1E6850:  MOV.W           R2, #0x3FC00000
1E6854:  LDR             R1, =(dword_6BD0E4 - 0x1E685C)
1E6856:  ADD             R0, PC; RwEngineInstance_ptr
1E6858:  ADD             R1, PC; dword_6BD0E4
1E685A:  LDR             R0, [R0]; RwEngineInstance
1E685C:  LDR             R1, [R1]
1E685E:  LDR             R0, [R0]
1E6860:  LDR             R0, [R0,R1]
1E6862:  LDR             R1, [SP,#4+var_4]
1E6864:  ADD.W           R1, R1, #0x800
1E6868:  STR             R1, [SP,#4+var_4]
1E686A:  LDR             R1, [SP,#4+var_4]
1E686C:  UBFX.W          R1, R1, #0xC, #0xC
1E6870:  LDR.W           R0, [R0,R1,LSL#2]
1E6874:  LDR             R1, [SP,#4+var_4]
1E6876:  AND.W           R1, R2, R1,LSR#1
1E687A:  ADD             R0, R1
1E687C:  STR             R0, [SP,#4+var_4]
1E687E:  VMOV            S0, R0
1E6882:  B               loc_1E6888
1E6884:  VLDR            S0, =0.0
1E6888:  VMOV            R0, S0
1E688C:  ADD             SP, SP, #4
1E688E:  BX              LR
