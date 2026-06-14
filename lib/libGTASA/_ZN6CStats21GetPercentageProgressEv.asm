; =========================================================
; Game Engine Function: _ZN6CStats21GetPercentageProgressEv
; Address            : 0x416C2C - 0x416C6A
; =========================================================

416C2C:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416C32)
416C2E:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
416C30:  LDR             R0, [R0]; CStats::StatTypesFloat ...
416C32:  VLDR            S0, [R0,#4]
416C36:  VCMP.F32        S0, #0.0
416C3A:  VMRS            APSR_nzcv, FPSCR
416C3E:  BNE             loc_416C46
416C40:  VLDR            S0, =0.0
416C44:  B               loc_416C5C
416C46:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416C50)
416C48:  VLDR            S2, =100.0
416C4C:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
416C4E:  LDR             R0, [R0]; CStats::StatTypesFloat ...
416C50:  VLDR            S4, [R0]
416C54:  VMUL.F32        S2, S4, S2
416C58:  VDIV.F32        S0, S2, S0
416C5C:  VLDR            S2, =100.0
416C60:  VMIN.F32        D0, D0, D1
416C64:  VMOV            R0, S0
416C68:  BX              LR
