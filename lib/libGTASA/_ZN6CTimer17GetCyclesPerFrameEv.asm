; =========================================================
; Game Engine Function: _ZN6CTimer17GetCyclesPerFrameEv
; Address            : 0x420FCC - 0x420FEC
; =========================================================

420FCC:  LDR             R0, =(timerDef_ptr - 0x420FD6)
420FCE:  VMOV.F32        S2, #20.0
420FD2:  ADD             R0, PC; timerDef_ptr
420FD4:  LDR             R0, [R0]; timerDef
420FD6:  VLDR            S0, [R0,#4]
420FDA:  VCVT.F32.U32    S0, S0
420FDE:  VMUL.F32        S0, S0, S2
420FE2:  VCVT.U32.F32    S0, S0
420FE6:  VMOV            R0, S0
420FEA:  BX              LR
