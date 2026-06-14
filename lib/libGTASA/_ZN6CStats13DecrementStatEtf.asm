; =========================================================
; Game Engine Function: _ZN6CStats13DecrementStatEtf
; Address            : 0x415DA8 - 0x415E60
; =========================================================

415DA8:  VMOV            S0, R1
415DAC:  VCMPE.F32       S0, #0.0
415DB0:  VMRS            APSR_nzcv, FPSCR
415DB4:  IT LE
415DB6:  BXLE            LR
415DB8:  CMP             R0, #0x51 ; 'Q'
415DBA:  BHI             loc_415DDC
415DBC:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415DC6)
415DBE:  VLDR            S4, =0.0
415DC2:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
415DC4:  LDR             R1, [R1]; CStats::StatTypesFloat ...
415DC6:  ADD.W           R1, R1, R0,LSL#2
415DCA:  VLDR            S2, [R1]
415DCE:  VSUB.F32        S0, S2, S0
415DD2:  VMAX.F32        D0, D0, D2
415DD6:  VSTR            S0, [R1]
415DDA:  B               loc_415E18
415DDC:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x415DEE)
415DDE:  MOV             R12, #0xFFFFFE20
415DE6:  VLDR            S2, =0.0
415DEA:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
415DEC:  LDR             R1, [R1]; CStats::StatTypesInt ...
415DEE:  ADD.W           R1, R1, R0,LSL#2; bool
415DF2:  LDR.W           R3, [R1,R12]
415DF6:  VCVT.S32.F32    S0, S0
415DFA:  VMOV            R2, S0
415DFE:  SUBS            R2, R3, R2
415E00:  VMOV            S0, R2
415E04:  VCVT.F32.S32    S0, S0
415E08:  VMAX.F32        D0, D0, D1
415E0C:  VCVT.S32.F32    S0, S0
415E10:  VMOV            R2, S0
415E14:  STR.W           R2, [R1,R12]
415E18:  UXTB            R0, R0
415E1A:  CMP             R0, #0xA5
415E1C:  BNE             loc_415E5A
415E1E:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x415E24)
415E20:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
415E22:  LDR             R0, [R0]; CStats::StatTypesInt ...
415E24:  LDR.W           R0, [R0,#(dword_9649E0 - 0x96492C)]
415E28:  CMP.W           R0, #0xFFFFFFFF
415E2C:  BGT             loc_415E5A
415E2E:  PUSH            {R7,LR}
415E30:  MOV             R7, SP
415E32:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415E40)
415E34:  VMOV.F32        S0, #-23.0
415E38:  VLDR            S4, =0.0
415E3C:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
415E3E:  LDR             R0, [R0]; CStats::StatTypesFloat ...
415E40:  VLDR            S2, [R0,#0x54]
415E44:  VADD.F32        S0, S2, S0
415E48:  VMAX.F32        D0, D0, D2
415E4C:  VSTR            S0, [R0,#0x54]
415E50:  MOVS            R0, #0; this
415E52:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
415E56:  POP.W           {R7,LR}
415E5A:  MOVS            R0, #0; this
415E5C:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
