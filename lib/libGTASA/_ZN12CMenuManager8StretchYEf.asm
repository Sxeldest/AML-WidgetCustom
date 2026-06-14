; =========================================================
; Game Engine Function: _ZN12CMenuManager8StretchYEf
; Address            : 0x42F110 - 0x42F13C
; =========================================================

42F110:  LDR             R0, =(RsGlobal_ptr - 0x42F11A)
42F112:  VMOV            S0, R1
42F116:  ADD             R0, PC; RsGlobal_ptr
42F118:  LDR             R0, [R0]; RsGlobal
42F11A:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
42F11C:  CMP.W           R0, #0x1C0
42F120:  BEQ             loc_42F136
42F122:  VLDR            S2, =448.0
42F126:  VDIV.F32        S0, S0, S2
42F12A:  VMOV            S2, R0
42F12E:  VCVT.F32.S32    S2, S2
42F132:  VMUL.F32        S0, S0, S2
42F136:  VMOV            R0, S0
42F13A:  BX              LR
