; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader19ShouldLoadGangAnimsEv
; Address            : 0x515CB8 - 0x515D22
; =========================================================

515CB8:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x515CC4)
515CBA:  MOV.W           R2, #0x194
515CBE:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x515CC6)
515CC0:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
515CC2:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
515CC4:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
515CC6:  LDR             R1, [R1]; CWorld::Players ...
515CC8:  LDR             R0, [R0]; CWorld::PlayerInFocus
515CCA:  SMULBB.W        R0, R0, R2
515CCE:  LDR             R1, [R1,R0]
515CD0:  LDR.W           R0, [R1,#0x590]
515CD4:  CMP             R0, #0
515CD6:  ITT NE
515CD8:  LDRNE.W         R1, [R1,#0x484]
515CDC:  ANDSNE.W        R1, R1, #0x100
515CE0:  BEQ             loc_515D14
515CE2:  VLDR            S0, [R0,#0x48]
515CE6:  VLDR            S2, [R0,#0x4C]
515CEA:  VMUL.F32        S0, S0, S0
515CEE:  VLDR            S4, [R0,#0x50]
515CF2:  VMUL.F32        S2, S2, S2
515CF6:  VMUL.F32        S4, S4, S4
515CFA:  VADD.F32        S0, S0, S2
515CFE:  VLDR            S2, =0.04
515D02:  VADD.F32        S0, S0, S4
515D06:  VCMPE.F32       S0, S2
515D0A:  VMRS            APSR_nzcv, FPSCR
515D0E:  ITT GT
515D10:  MOVGT           R0, #0; this
515D12:  BXGT            LR
515D14:  PUSH            {R7,LR}
515D16:  MOV             R7, SP
515D18:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
515D1C:  EOR.W           R0, R0, #1
515D20:  POP             {R7,PC}
