; =========================================================
; Game Engine Function: _ZN16CAtomicModelInfo21GetAtomicFromDistanceEf
; Address            : 0x3849DC - 0x384A02
; =========================================================

3849DC:  LDR             R2, =(TheCamera_ptr - 0x3849E6)
3849DE:  VLDR            S0, [R0,#0x30]
3849E2:  ADD             R2, PC; TheCamera_ptr
3849E4:  LDR             R2, [R2]; TheCamera
3849E6:  VLDR            S2, [R2,#0xEC]
3849EA:  VMUL.F32        S0, S0, S2
3849EE:  VMOV            S2, R1
3849F2:  VCMPE.F32       S0, S2
3849F6:  VMRS            APSR_nzcv, FPSCR
3849FA:  ITE GT
3849FC:  LDRGT           R0, [R0,#0x34]
3849FE:  MOVLE           R0, #0
384A00:  BX              LR
