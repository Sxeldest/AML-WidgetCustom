; =========================================================
; Game Engine Function: sub_978D0
; Address            : 0x978D0 - 0x97900
; =========================================================

978D0:  LDR             R1, =(dword_1ACF68 - 0x978DE)
978D2:  MOVW            R2, #0x18C8
978D6:  VMOV            S0, R0
978DA:  ADD             R1, PC; dword_1ACF68
978DC:  LDR             R1, [R1]
978DE:  ADD             R1, R2
978E0:  VLDR            S2, [R1,#4]
978E4:  LDR.W           R2, [R1,#0xE4]
978E8:  VMUL.F32        S0, S2, S0
978EC:  STR.W           R0, [R2,#0x274]
978F0:  MOVS            R0, #1
978F2:  STRB.W          R0, [R2,#0x7C]
978F6:  VSTR            S0, [R1,#0x14]
978FA:  VSTR            S0, [R1]
978FE:  BX              LR
