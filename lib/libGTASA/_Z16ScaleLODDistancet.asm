; =========================================================
; Game Engine Function: _Z16ScaleLODDistancet
; Address            : 0x46BA58 - 0x46BA88
; =========================================================

46BA58:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x46BA5E)
46BA5A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
46BA5C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
46BA5E:  LDR.W           R0, [R1,R0,LSL#2]
46BA62:  CMP             R0, #0
46BA64:  IT EQ
46BA66:  BXEQ            LR
46BA68:  LDR             R1, =(TheCamera_ptr - 0x46BA76)
46BA6A:  VMOV.F32        S4, #1.5
46BA6E:  VLDR            S0, [R0,#0x30]
46BA72:  ADD             R1, PC; TheCamera_ptr
46BA74:  LDR             R1, [R1]; TheCamera
46BA76:  VLDR            S2, [R1,#0xEC]
46BA7A:  VMUL.F32        S0, S0, S2
46BA7E:  VMUL.F32        S0, S0, S4
46BA82:  VSTR            S0, [R0,#0x30]
46BA86:  BX              LR
