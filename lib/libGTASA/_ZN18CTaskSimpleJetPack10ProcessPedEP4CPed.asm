; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack10ProcessPedEP4CPed
; Address            : 0x530D4C - 0x530F00
; =========================================================

530D4C:  PUSH            {R4-R7,LR}
530D4E:  ADD             R7, SP, #0xC
530D50:  PUSH.W          {R11}
530D54:  VPUSH           {D8}
530D58:  MOV             R4, R0
530D5A:  MOV             R5, R1
530D5C:  LDRB            R1, [R4,#8]
530D5E:  LDRB            R0, [R4,#0xC]
530D60:  CBZ             R1, loc_530D92
530D62:  CBZ             R0, loc_530D74
530D64:  MOV             R0, R5; this
530D66:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
530D6A:  CMP             R0, #1
530D6C:  ITT EQ
530D6E:  MOVEQ           R0, R5; this
530D70:  BLXEQ           j__ZN4CPed31ReplaceWeaponWhenExitingVehicleEv; CPed::ReplaceWeaponWhenExitingVehicle(void)
530D74:  LDR             R0, [R4,#0x64]; this
530D76:  CBZ             R0, loc_530D80
530D78:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530D7C:  MOVS            R0, #0
530D7E:  STR             R0, [R4,#0x64]
530D80:  LDR             R0, [R4,#0x68]; this
530D82:  CMP             R0, #0
530D84:  BEQ             loc_530E14
530D86:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530D8A:  MOVS            R0, #0
530D8C:  STR             R0, [R4,#0x68]
530D8E:  MOVS            R0, #1
530D90:  B               loc_530EF6
530D92:  CBNZ            R0, loc_530DAA
530D94:  MOV             R0, R5; this
530D96:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
530D9A:  CMP             R0, #1
530D9C:  BNE             loc_530DA6
530D9E:  MOV             R0, R5; this
530DA0:  MOVS            R1, #1; int
530DA2:  BLX             j__ZN4CPed31RemoveWeaponWhenEnteringVehicleEi; CPed::RemoveWeaponWhenEnteringVehicle(int)
530DA6:  MOVS            R0, #1
530DA8:  STRB            R0, [R4,#0xC]
530DAA:  LDR.W           R0, [R5,#0x490]
530DAE:  MOV             R1, R5; CPed *
530DB0:  ORR.W           R0, R0, #0x100
530DB4:  STR.W           R0, [R5,#0x490]
530DB8:  MOV             R0, R4; this
530DBA:  BLX             j__ZN18CTaskSimpleJetPack12ProcessAnimsEP4CPed; CTaskSimpleJetPack::ProcessAnims(CPed *)
530DBE:  CMP             R0, #1
530DC0:  BNE.W           loc_530EF4
530DC4:  VMOV.F32        S16, #1.0
530DC8:  ADDW            R0, R5, #0x544
530DCC:  VLDR            S0, [R0]
530DD0:  VCMPE.F32       S0, S16
530DD4:  VMRS            APSR_nzcv, FPSCR
530DD8:  BGE             loc_530E18
530DDA:  MOVS            R0, #0
530DDC:  STR             R0, [R4,#0x14]
530DDE:  STRH.W          R0, [R4,#0xD]
530DE2:  BLX             rand
530DE6:  VMOV.F32        S0, #-1.0
530DEA:  TST.W           R0, #1
530DEE:  IT NE
530DF0:  VMOVNE.F32      S0, S16
530DF4:  VLDR            S2, [R4,#0x10]
530DF8:  VADD.F32        S2, S2, S0
530DFC:  VMOV.F32        S0, #3.0
530E00:  VSTR            S2, [R4,#0x10]
530E04:  VCMPE.F32       S2, S0
530E08:  VMRS            APSR_nzcv, FPSCR
530E0C:  BLE             loc_530E2C
530E0E:  VSTR            S0, [R4,#0x10]
530E12:  B               loc_530E3E
530E14:  MOVS            R0, #1
530E16:  B               loc_530EF6
530E18:  MOV             R0, R5; this
530E1A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
530E1E:  CMP             R0, #1
530E20:  BNE             loc_530EC2
530E22:  MOV             R0, R4; this
530E24:  MOV             R1, R5; CPlayerPed *
530E26:  BLX             j__ZN18CTaskSimpleJetPack19ProcessControlInputEP10CPlayerPed; CTaskSimpleJetPack::ProcessControlInput(CPlayerPed *)
530E2A:  B               loc_530EC2
530E2C:  VMOV.F32        S0, #-3.0
530E30:  VCMPE.F32       S2, S0
530E34:  VMRS            APSR_nzcv, FPSCR
530E38:  IT LT
530E3A:  VSTRLT          S0, [R4,#0x10]
530E3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x530E48)
530E40:  VLDR            S2, =1.5708
530E44:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
530E46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
530E48:  VLDR            S0, [R0]
530E4C:  VCVT.F32.U32    S0, S0
530E50:  VMUL.F32        S0, S0, S2
530E54:  VLDR            S2, =1000.0
530E58:  VDIV.F32        S0, S0, S2
530E5C:  VMOV            R0, S0; x
530E60:  BLX             sinf
530E64:  MOV             R6, R0
530E66:  LDR             R0, =(_ZN18CTaskSimpleJetPack17JETPACK_TURN_RATEE_ptr - 0x530E6C)
530E68:  ADD             R0, PC; _ZN18CTaskSimpleJetPack17JETPACK_TURN_RATEE_ptr
530E6A:  LDR             R0, [R0]; CTaskSimpleJetPack::JETPACK_TURN_RATE ...
530E6C:  VLDR            S16, [R0]
530E70:  BLX             rand
530E74:  VMOV            S0, R0
530E78:  VLDR            S2, =4.6566e-10
530E7C:  VMOV            S4, R6
530E80:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x530E8E)
530E82:  VCVT.F32.S32    S0, S0
530E86:  ADD.W           R1, R5, #0x560
530E8A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
530E8C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
530E8E:  VMUL.F32        S0, S0, S2
530E92:  VLDR            S2, =0.0
530E96:  VADD.F32        S0, S0, S2
530E9A:  VMUL.F32        S2, S16, S4
530E9E:  VMUL.F32        S0, S2, S0
530EA2:  VLDR            S2, [R0]
530EA6:  LDR.W           R0, [R5,#0x444]
530EAA:  CMP             R0, #0
530EAC:  VMUL.F32        S0, S2, S0
530EB0:  VLDR            S2, [R1]
530EB4:  VADD.F32        S0, S2, S0
530EB8:  VSTR            S0, [R1]
530EBC:  ITT NE
530EBE:  MOVNE           R1, #0
530EC0:  STRNE           R1, [R0,#0x14]
530EC2:  MOV             R0, R4; this
530EC4:  MOV             R1, R5; CPed *
530EC6:  BLX             j__ZN18CTaskSimpleJetPack13ProcessThrustEP4CPed; CTaskSimpleJetPack::ProcessThrust(CPed *)
530ECA:  LDRSB.W         R0, [R4,#0xE]
530ECE:  CMP             R0, #0
530ED0:  BGT             loc_530EE8
530ED2:  VLDR            S0, [R4,#0x10]
530ED6:  VLDR            S2, =0.1
530EDA:  VABS.F32        S0, S0
530EDE:  VCMPE.F32       S0, S2
530EE2:  VMRS            APSR_nzcv, FPSCR
530EE6:  BLE             loc_530EF4
530EE8:  ADDW            R0, R5, #0x484
530EEC:  LDR             R1, [R0]
530EEE:  BIC.W           R1, R1, #1
530EF2:  STR             R1, [R0]
530EF4:  MOVS            R0, #0
530EF6:  VPOP            {D8}
530EFA:  POP.W           {R11}
530EFE:  POP             {R4-R7,PC}
