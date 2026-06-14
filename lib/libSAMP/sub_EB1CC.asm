; =========================================================
; Game Engine Function: sub_EB1CC
; Address            : 0xEB1CC - 0xEB1E0
; =========================================================

EB1CC:  CMP             R0, #0x10
EB1CE:  BHI             loc_EB1DA
EB1D0:  LDR             R1, =(off_22A8D4 - 0xEB1D6); "<uninitialized>" ...
EB1D2:  ADD             R1, PC; off_22A8D4
EB1D4:  LDR.W           R0, [R1,R0,LSL#2]
EB1D8:  BX              LR
EB1DA:  LDR             R0, =(aUnknownToken - 0xEB1E0); "unknown token" ...
EB1DC:  ADD             R0, PC; "unknown token"
EB1DE:  BX              LR
