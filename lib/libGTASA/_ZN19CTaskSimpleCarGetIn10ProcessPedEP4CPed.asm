; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetIn10ProcessPedEP4CPed
; Address            : 0x501D20 - 0x501E1A
; =========================================================

501D20:  PUSH            {R4,R5,R7,LR}
501D22:  ADD             R7, SP, #8
501D24:  MOV             R4, R0
501D26:  MOV             R5, R1
501D28:  LDR             R0, [R4,#0x18]
501D2A:  CBZ             R0, loc_501D76
501D2C:  LDRB            R1, [R4,#8]
501D2E:  CBZ             R1, loc_501D7A
501D30:  MOV             R0, R5; this
501D32:  MOVS            R1, #0; int
501D34:  BLX             j__ZN4CPed31RemoveWeaponWhenEnteringVehicleEi; CPed::RemoveWeaponWhenEnteringVehicle(int)
501D38:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x501D3E)
501D3A:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
501D3C:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
501D3E:  LDRB.W          R0, [R0,#(byte_796830 - 0x7967F4)]
501D42:  CBZ             R0, loc_501D76
501D44:  MOV             R0, R5; this
501D46:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
501D4A:  CMP             R0, #1
501D4C:  BNE             loc_501D76
501D4E:  LDR             R0, [R4,#0x18]
501D50:  CBZ             R0, loc_501D76
501D52:  LDR             R1, [R0,#0x44]
501D54:  ORR.W           R1, R1, #0x800000
501D58:  STR             R1, [R0,#0x44]
501D5A:  LDR             R0, [R4,#0x18]
501D5C:  LDR             R1, [R0,#0x44]
501D5E:  ORR.W           R1, R1, #0x40000
501D62:  STR             R1, [R0,#0x44]
501D64:  LDR             R0, [R4,#0x18]
501D66:  LDR.W           R1, [R0,#0x42C]
501D6A:  BIC.W           R1, R1, #0x200000
501D6E:  STR.W           R1, [R0,#0x42C]
501D72:  MOVS            R0, #1
501D74:  POP             {R4,R5,R7,PC}
501D76:  MOVS            R0, #1
501D78:  POP             {R4,R5,R7,PC}
501D7A:  LDR             R1, [R4,#0xC]
501D7C:  CBNZ            R1, loc_501D88
501D7E:  MOV             R0, R4; this
501D80:  MOV             R1, R5; CPed *
501D82:  BLX             j__ZN19CTaskSimpleCarGetIn9StartAnimEPK4CPed; CTaskSimpleCarGetIn::StartAnim(CPed const*)
501D86:  LDR             R0, [R4,#0x18]
501D88:  LDR.W           R1, [R0,#0x5A4]
501D8C:  CMP             R1, #0xA
501D8E:  BNE             loc_501E16
501D90:  LDR             R1, [R4,#0xC]
501D92:  CMP             R1, #0
501D94:  ITT NE
501D96:  LDRBNE.W        R2, [R1,#0x2E]
501D9A:  MOVSNE.W        R2, R2,LSL#31
501D9E:  BEQ             loc_501E16
501DA0:  LDRSH.W         R2, [R1,#0x2C]
501DA4:  SUBW            R2, R2, #0x167
501DA8:  CMP             R2, #3
501DAA:  BHI             loc_501E16
501DAC:  LDR             R2, =(BMX_PUSHOFF_START_FRAME_ptr - 0x501DB6)
501DAE:  VMOV.F32        S0, #30.0
501DB2:  ADD             R2, PC; BMX_PUSHOFF_START_FRAME_ptr
501DB4:  LDR             R2, [R2]; BMX_PUSHOFF_START_FRAME
501DB6:  VLDR            S2, [R2]
501DBA:  VDIV.F32        S0, S2, S0
501DBE:  VLDR            S2, [R1,#0x20]
501DC2:  VCMPE.F32       S2, S0
501DC6:  VMRS            APSR_nzcv, FPSCR
501DCA:  BLE             loc_501E16
501DCC:  LDR             R1, =(BMX_PUSHOFF_FORCE_MULT_ptr - 0x501DD4)
501DCE:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x501DDA)
501DD0:  ADD             R1, PC; BMX_PUSHOFF_FORCE_MULT_ptr
501DD2:  VLDR            S0, [R0,#0x90]
501DD6:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
501DD8:  LDR             R1, [R1]; BMX_PUSHOFF_FORCE_MULT
501DDA:  VLDR            S2, [R1]
501DDE:  LDR             R1, [R2]; CTimer::ms_fTimeStep ...
501DE0:  VMUL.F32        S0, S2, S0
501DE4:  VLDR            S2, [R1]
501DE8:  LDR             R1, [R0,#0x14]
501DEA:  VLDR            S4, [R1,#0x14]
501DEE:  VMUL.F32        S0, S0, S2
501DF2:  VLDR            S2, [R1,#0x10]
501DF6:  VLDR            S6, [R1,#0x18]
501DFA:  VMUL.F32        S2, S0, S2
501DFE:  VMUL.F32        S4, S0, S4
501E02:  VMUL.F32        S0, S0, S6
501E06:  VMOV            R1, S2
501E0A:  VMOV            R2, S4
501E0E:  VMOV            R3, S0
501E12:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
501E16:  MOVS            R0, #0
501E18:  POP             {R4,R5,R7,PC}
