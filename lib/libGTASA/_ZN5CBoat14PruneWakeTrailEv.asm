; =========================================================
; Game Engine Function: _ZN5CBoat14PruneWakeTrailEv
; Address            : 0x56C608 - 0x56C64C
; =========================================================

56C608:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56C60E)
56C60A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56C60C:  LDR             R2, [R1]; CTimer::ms_fTimeStep ...
56C60E:  ADDW            R1, R0, #0x75C
56C612:  VLDR            S0, [R2]
56C616:  MOVS            R2, #0
56C618:  B               loc_56C62A
56C61A:  VSUB.F32        S2, S2, S0
56C61E:  ADDS            R2, #1
56C620:  CMP             R2, #0x20 ; ' '
56C622:  VSTM            R1!, {S2}
56C626:  IT CS
56C628:  BXCS            LR
56C62A:  VLDR            S2, [R1]
56C62E:  VCMPE.F32       S2, #0.0
56C632:  VMRS            APSR_nzcv, FPSCR
56C636:  BLE             loc_56C646
56C638:  VCMPE.F32       S2, S0
56C63C:  VMRS            APSR_nzcv, FPSCR
56C640:  BGT             loc_56C61A
56C642:  MOVS            R3, #0
56C644:  STR             R3, [R1]
56C646:  STRH.W          R2, [R0,#0x658]
56C64A:  BX              LR
