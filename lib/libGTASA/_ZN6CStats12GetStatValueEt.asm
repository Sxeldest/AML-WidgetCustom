; =========================================================
; Game Engine Function: _ZN6CStats12GetStatValueEt
; Address            : 0x4158A4 - 0x4158D4
; =========================================================

4158A4:  CMP             R0, #0x51 ; 'Q'
4158A6:  BHI             loc_4158BC
4158A8:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4158AE)
4158AA:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
4158AC:  LDR             R1, [R1]; CStats::StatTypesFloat ...
4158AE:  ADD.W           R0, R1, R0,LSL#2
4158B2:  VLDR            S0, [R0]
4158B6:  VMOV            R0, S0
4158BA:  BX              LR
4158BC:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x4158C2)
4158BE:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
4158C0:  LDR             R1, [R1]; CStats::StatTypesInt ...
4158C2:  ADD.W           R0, R1, R0,LSL#2
4158C6:  VLDR            S0, [R0,#-0x1E0]
4158CA:  VCVT.F32.S32    S0, S0
4158CE:  VMOV            R0, S0
4158D2:  BX              LR
