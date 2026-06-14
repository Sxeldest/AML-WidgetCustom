; =========================================================
; Game Engine Function: _ZN8CVehicle15ProcessCarAlarmEv
; Address            : 0x585198 - 0x5851DE
; =========================================================

585198:  LDRH.W          R1, [R0,#0x460]
58519C:  CMP             R1, #0
58519E:  ITT NE
5851A0:  MOVWNE          R2, #0xFFFF
5851A4:  CMPNE           R1, R2
5851A6:  BNE             loc_5851AA
5851A8:  BX              LR
5851AA:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5851B4)
5851AC:  VLDR            S0, =50.0
5851B0:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5851B2:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
5851B4:  VLDR            S2, [R2]
5851B8:  VDIV.F32        S0, S2, S0
5851BC:  VLDR            S2, =1000.0
5851C0:  VMUL.F32        S0, S0, S2
5851C4:  VCVT.U32.F32    S0, S0
5851C8:  VMOV            R2, S0
5851CC:  CMP             R1, R2
5851CE:  ITEE CS
5851D0:  SUBCS           R1, R1, R2
5851D2:  MOVCC           R1, #0
5851D4:  STRCC.W         R1, [R0,#0x524]
5851D8:  STRH.W          R1, [R0,#0x460]
5851DC:  BX              LR
