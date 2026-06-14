; =========================================================
; Game Engine Function: _ZN8CGarages19FindDoorHeightForMIEj
; Address            : 0x3141C8 - 0x3141EE
; =========================================================

3141C8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3141CE)
3141CA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3141CC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3141CE:  LDR.W           R0, [R1,R0,LSL#2]
3141D2:  LDR             R0, [R0,#0x2C]
3141D4:  VLDR            S0, [R0,#8]
3141D8:  VLDR            S2, [R0,#0x14]
3141DC:  VSUB.F32        S0, S2, S0
3141E0:  VLDR            S2, =-0.1
3141E4:  VADD.F32        S0, S0, S2
3141E8:  VMOV            R0, S0
3141EC:  BX              LR
