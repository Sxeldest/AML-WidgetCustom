; =========================================================
; Game Engine Function: _ZN5CHeli30FindSwatPositionRelativeToHeliEi
; Address            : 0x571E98 - 0x571ED4
; =========================================================

571E98:  CMP             R2, #3
571E9A:  BHI             loc_571EBA
571E9C:  LDR             R1, =(unk_61ECD4 - 0x571EA8)
571E9E:  VMOV.F32        S0, #-0.5
571EA2:  LDR             R3, =(unk_61ECC4 - 0x571EAE)
571EA4:  ADD             R1, PC; unk_61ECD4
571EA6:  ADD.W           R1, R1, R2,LSL#2
571EAA:  ADD             R3, PC; unk_61ECC4
571EAC:  VLDR            S2, [R1]
571EB0:  ADD.W           R1, R3, R2,LSL#2
571EB4:  VLDR            S4, [R1]
571EB8:  B               loc_571EC6
571EBA:  VLDR            S4, =0.0
571EBE:  VMOV.F32        S2, S4
571EC2:  VMOV.F32        S0, S4
571EC6:  VSTR            S4, [R0]
571ECA:  VSTR            S2, [R0,#4]
571ECE:  VSTR            S0, [R0,#8]
571ED2:  BX              LR
