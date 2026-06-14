; =========================================================
; Game Engine Function: _ZN8CVehicle19ReduceVehicleDamageERf
; Address            : 0x583AC0 - 0x583B22
; =========================================================

583AC0:  PUSH            {R4,R6,R7,LR}
583AC2:  ADD             R7, SP, #8
583AC4:  LDRB.W          R0, [R0,#0x3A]
583AC8:  MOV             R4, R1
583ACA:  CMP             R0, #7
583ACC:  IT HI
583ACE:  POPHI           {R4,R6,R7,PC}
583AD0:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x583AD6)
583AD2:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
583AD4:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
583AD6:  LDR             R0, [R0]; CTheScripts::pActiveScripts
583AD8:  CBZ             R0, loc_583AF6
583ADA:  LDR             R1, =(aStrap3_0 - 0x583AE2); "strap3"
583ADC:  ADDS            R0, #8; char *
583ADE:  ADD             R1, PC; "strap3"
583AE0:  BLX             strcmp
583AE4:  CBNZ            R0, loc_583AF6
583AE6:  VMOV.F32        S0, #0.25
583AEA:  VLDR            S2, [R4]
583AEE:  VMUL.F32        S0, S2, S0
583AF2:  VSTR            S0, [R4]
583AF6:  BLX             j__ZN6CStats21GetPercentageProgressEv; CStats::GetPercentageProgress(void)
583AFA:  VMOV            S2, R0
583AFE:  VLDR            S0, =100.0
583B02:  ADR             R0, loc_583B30
583B04:  VLDR            S4, [R4]
583B08:  VCMPE.F32       S2, S0
583B0C:  VMRS            APSR_nzcv, FPSCR
583B10:  IT LT
583B12:  ADDLT           R0, #4
583B14:  VLDR            S0, [R0]
583B18:  VMUL.F32        S0, S4, S0
583B1C:  VSTR            S0, [R4]
583B20:  POP             {R4,R6,R7,PC}
