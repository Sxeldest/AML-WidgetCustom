; =========================================================
; Game Engine Function: _ZN5CBike14ProcessControlEv
; Address            : 0x561A20 - 0x56496E
; =========================================================

561A20:  PUSH            {R4-R7,LR}
561A22:  ADD             R7, SP, #0xC
561A24:  PUSH.W          {R8-R11}
561A28:  SUB             SP, SP, #4
561A2A:  VPUSH           {D8-D15}
561A2E:  SUB             SP, SP, #0x1A0; float
561A30:  MOV             R11, R0
561A32:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
561A36:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x561A44)
561A3A:  MOVS            R4, #0
561A3C:  LDRSH.W         R2, [R11,#0x26]
561A40:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
561A42:  LDR             R0, [R0,#0x2C]
561A44:  STR             R0, [SP,#0x200+var_198]
561A46:  ADD.W           R0, R11, #0x13C
561A4A:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
561A4C:  STR             R4, [SP,#0x200+var_64]
561A4E:  LDR.W           R10, [R1,R2,LSL#2]
561A52:  NOP
561A54:  NOP
561A56:  LDR.W           R0, [R11,#0x42C]
561A5A:  LDR.W           R1, [R11,#0x430]
561A5E:  STRB.W          R4, [R11,#0x5DC]
561A62:  BIC.W           R0, R0, #0x2000
561A66:  STRH.W          R4, [R11,#0x7BC]
561A6A:  BIC.W           R1, R1, #2
561A6E:  LDRB.W          R2, [R11,#0x628]
561A72:  STR.W           R0, [R11,#0x42C]
561A76:  AND.W           R0, R2, #0xDF
561A7A:  STR.W           R1, [R11,#0x430]
561A7E:  STRB.W          R0, [R11,#0x628]
561A82:  MOV             R0, R11; this
561A84:  BLX             j__ZN8CVehicle15ProcessCarAlarmEv; CVehicle::ProcessCarAlarm(void)
561A88:  MOV             R0, R11; this
561A8A:  BLX             j__ZN8CVehicle23ActivateBombWhenEnteredEv; CVehicle::ActivateBombWhenEntered(void)
561A8E:  MOV             R0, R11; this
561A90:  BLX             j__ZN8CVehicle16UpdateClumpAlphaEv; CVehicle::UpdateClumpAlpha(void)
561A94:  LDR.W           R0, [R11,#0x464]; this
561A98:  CBZ             R0, loc_561AC4
561A9A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
561A9E:  CBNZ            R0, loc_561AAE
561AA0:  LDR.W           R0, [R11,#0x468]; this
561AA4:  CBZ             R0, loc_561AC4
561AA6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
561AAA:  CMP             R0, #1
561AAC:  BNE             loc_561AC4
561AAE:  LDRB.W          R0, [R11,#0x7CA]
561AB2:  CMP             R0, #0
561AB4:  BEQ.W           loc_561C2C
561AB8:  CMP             R0, #1
561ABA:  ITT EQ
561ABC:  MOVEQ           R0, #2
561ABE:  STRBEQ.W        R0, [R11,#0x7CA]
561AC2:  B               loc_561AC8
561AC4:  STRB.W          R4, [R11,#0x7CA]
561AC8:  LDR.W           R0, [R11]
561ACC:  ADD             R1, SP, #0x200+var_64
561ACE:  LDR.W           R2, [R0,#0x10C]
561AD2:  MOV             R0, R11
561AD4:  BLX             R2
561AD6:  LDRB.W          R0, [R11,#0x3A]
561ADA:  AND.W           R1, R0, #0xF8
561ADE:  CMP             R1, #0x10
561AE0:  BEQ.W           loc_564960
561AE4:  LDRB.W          R1, [R11,#0x628]
561AE8:  TST.W           R1, #0x10
561AEC:  BEQ             loc_561B26
561AEE:  LDR.W           R2, [R11,#0x14]
561AF2:  VLDR            S2, =0.35
561AF6:  VLDR            S0, [R2,#8]
561AFA:  VABS.F32        S0, S0
561AFE:  VCMPE.F32       S0, S2
561B02:  VMRS            APSR_nzcv, FPSCR
561B06:  BGT             loc_561B1E
561B08:  VLDR            S0, [R2,#0x18]
561B0C:  VMOV.F32        S2, #0.5
561B10:  VABS.F32        S0, S0
561B14:  VCMPE.F32       S0, S2
561B18:  VMRS            APSR_nzcv, FPSCR
561B1C:  BLE             loc_561B26
561B1E:  AND.W           R1, R1, #0xEF
561B22:  STRB.W          R1, [R11,#0x628]
561B26:  LDR             R2, [SP,#0x200+var_64]
561B28:  ADDW            R4, R11, #0x42C
561B2C:  LSLS            R2, R2, #0x1E
561B2E:  BMI             loc_561B52
561B30:  ANDS.W          R1, R1, #0x18
561B34:  BNE             loc_561B52
561B36:  LDR.W           R1, [R11,#0x388]
561B3A:  LDR.W           R3, [R11,#0x650]
561B3E:  LDR             R2, [R1,#0x14]
561B40:  STR.W           R2, [R11,#0xA8]
561B44:  LDR             R1, [R1,#0x18]
561B46:  STR.W           R1, [R11,#0xAC]
561B4A:  LDR             R1, [R3,#0x28]
561B4C:  STR.W           R1, [R11,#0xB0]
561B50:  B               loc_561E68
561B52:  LDR.W           R0, =(vecTestResistance_ptr - 0x561B62)
561B56:  ADD.W           R1, R11, #0x54 ; 'T'; CMatrix *
561B5A:  LDR.W           R2, [R11,#0x14]
561B5E:  ADD             R0, PC; vecTestResistance_ptr
561B60:  LDR             R0, [R0]; vecTestResistance
561B62:  VLDR            S20, [R0,#4]
561B66:  LDR             R6, [R0]
561B68:  ADD             R0, SP, #0x200+var_A4; CVector *
561B6A:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
561B6E:  VMOV.F32        S16, #1.0
561B72:  LDRB.W          R0, [R11,#0x3A]
561B76:  CMP             R0, #7
561B78:  BHI             loc_561C34
561B7A:  VMOV.F32        S18, #1.0
561B7E:  ADDW            R0, R11, #0x724
561B82:  VLDR            S0, [R0]
561B86:  VCMPE.F32       S0, S18
561B8A:  VMRS            APSR_nzcv, FPSCR
561B8E:  BLT             loc_561BA2
561B90:  ADD.W           R0, R11, #0x728
561B94:  VLDR            S0, [R0]
561B98:  VCMPE.F32       S0, S18
561B9C:  VMRS            APSR_nzcv, FPSCR
561BA0:  BGE             loc_561C40
561BA2:  ADDW            R0, R11, #0x74C
561BA6:  VLDR            S0, [R0]
561BAA:  VCMPE.F32       S0, #0.0
561BAE:  VMRS            APSR_nzcv, FPSCR
561BB2:  BGT             loc_561C3C
561BB4:  ADD.W           R0, R11, #0x750
561BB8:  VLDR            S0, [R0]
561BBC:  VCMPE.F32       S0, #0.0
561BC0:  VMRS            APSR_nzcv, FPSCR
561BC4:  BGT             loc_561C3C
561BC6:  MOVS            R0, #0xD
561BC8:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
561BCC:  MOV             R5, R0
561BCE:  MOVS            R0, #0xD
561BD0:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
561BD4:  LDR.W           R1, [R11,#0x14]
561BD8:  VLDR            S18, =88.0
561BDC:  VLDR            S0, [R1,#0x18]
561BE0:  VCMPE.F32       S0, #0.0
561BE4:  VMRS            APSR_nzcv, FPSCR
561BE8:  BGE             loc_561C3C
561BEA:  VLDR            S2, =0.075
561BEE:  VMOV            S4, R5
561BF2:  VMOV.F32        S8, #0.25
561BF6:  VMUL.F32        S2, S4, S2
561BFA:  VMOV            S4, R0
561BFE:  LDR.W           R0, [R11,#0x650]
561C02:  VLDR            S6, [R0,#0x30]
561C06:  VSUB.F32        S0, S6, S0
561C0A:  VLDR            S6, =0.9
561C0E:  VMUL.F32        S4, S4, S8
561C12:  VABS.F32        S0, S0
561C16:  VMUL.F32        S0, S4, S0
561C1A:  VMIN.F32        D0, D1, D0
561C1E:  VMOV            S2, R6
561C22:  VADD.F32        S0, S0, S6
561C26:  VMUL.F32        S0, S0, S2
561C2A:  B               loc_561CB8
561C2C:  MOVS            R0, #1
561C2E:  STRB.W          R0, [R11,#0x7CA]
561C32:  B               loc_561AC8
561C34:  MOV             R9, R6
561C36:  VMOV.F32        S18, S16
561C3A:  B               loc_561CE0
561C3C:  MOV             R9, R6
561C3E:  B               loc_561CE0
561C40:  MOVS            R0, #0xD
561C42:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
561C46:  ADDW            R1, R11, #0x72C
561C4A:  MOV             R9, #0x3F6147AE
561C52:  VLDR            S0, [R1]
561C56:  VCMPE.F32       S0, S18
561C5A:  VMRS            APSR_nzcv, FPSCR
561C5E:  BLT             loc_561C72
561C60:  ADD.W           R1, R11, #0x730
561C64:  VLDR            S0, [R1]
561C68:  VCMPE.F32       S0, S18
561C6C:  VMRS            APSR_nzcv, FPSCR
561C70:  BGE             loc_561CDC
561C72:  LDR.W           R1, [R11,#0x14]
561C76:  VLDR            S18, =88.0
561C7A:  VLDR            S0, [R1,#0x18]
561C7E:  VCMPE.F32       S0, #0.0
561C82:  VMRS            APSR_nzcv, FPSCR
561C86:  BLE             loc_561CE0
561C88:  VMOV            S4, R0
561C8C:  LDR.W           R0, [R11,#0x650]
561C90:  VLDR            S2, =0.2
561C94:  VLDR            S6, =0.05
561C98:  VMUL.F32        S2, S4, S2
561C9C:  VLDR            S4, [R0,#0x2C]
561CA0:  VSUB.F32        S0, S4, S0
561CA4:  VMOV            S4, R6
561CA8:  VABS.F32        S0, S0
561CAC:  VMUL.F32        S0, S2, S0
561CB0:  VMIN.F32        D0, D0, D3
561CB4:  VSUB.F32        S0, S4, S0
561CB8:  VMOV            R9, S0
561CBC:  B               loc_561CE0
561CBE:  ALIGN 0x10
561CC0:  DCFS 0.35
561CC4:  DCFS 88.0
561CC8:  DCFS 0.075
561CCC:  DCFS 0.9
561CD0:  DCFS 0.2
561CD4:  DCFS 0.05
561CD8:  DCFS 1000.0
561CDC:  VLDR            S18, =88.0
561CE0:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x561CF0)
561CE4:  ADD.W           R8, R11, #0xA8
561CE8:  LDR.W           R5, [R11,#0x14]
561CEC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
561CEE:  MOV             R2, R8
561CF0:  VLDR            S22, [SP,#0x200+var_A4]
561CF4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
561CF6:  MOV             R1, R5; CVector *
561CF8:  VLDR            S24, [SP,#0x200+var_A0]
561CFC:  VLDR            S26, [R11,#0x94]
561D00:  LDR             R6, [R0]; CTimer::ms_fTimeStep
561D02:  ADD             R0, SP, #0x200+var_D8; CMatrix *
561D04:  VLDR            S28, [R5,#0x20]
561D08:  VLDR            S30, [R5,#0x24]
561D0C:  VLDR            S17, [R5,#0x28]
561D10:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
561D14:  VLDR            S0, =1000.0
561D18:  MOV             R1, R6; y
561D1A:  VMUL.F32        S0, S24, S0
561D1E:  VMUL.F32        S0, S24, S0
561D22:  VADD.F32        S0, S0, S16
561D26:  VDIV.F32        S0, S16, S0
561D2A:  VMUL.F32        S0, S20, S0
561D2E:  VMOV            R0, S0; x
561D32:  BLX             powf
561D36:  VMOV            S0, R0
561D3A:  VLDR            S6, [SP,#0x200+var_D8]
561D3E:  VLDR            S8, [SP,#0x200+var_D8+4]
561D42:  VMUL.F32        S0, S24, S0
561D46:  VLDR            S10, [SP,#0x200+var_D0]
561D4A:  VSUB.F32        S0, S0, S24
561D4E:  VMUL.F32        S2, S28, S0
561D52:  VMUL.F32        S4, S0, S30
561D56:  VMUL.F32        S0, S0, S17
561D5A:  VMUL.F32        S2, S2, S26
561D5E:  VMUL.F32        S4, S4, S26
561D62:  VMUL.F32        S0, S0, S26
561D66:  VMOV            R0, S2
561D6A:  VLDR            S2, [R5,#4]
561D6E:  VMOV            R2, S4
561D72:  VLDR            S4, [R5,#8]
561D76:  VMOV            R3, S0
561D7A:  VLDR            S0, [R5]
561D7E:  VADD.F32        S4, S4, S10
561D82:  VADD.F32        S0, S0, S6
561D86:  VADD.F32        S2, S2, S8
561D8A:  VSTR            S0, [SP,#0x200+var_200]
561D8E:  VSTR            S2, [SP,#0x200+var_1FC]
561D92:  VSTR            S4, [SP,#0x200+var_1F8]
561D96:  EOR.W           R1, R0, #0x80000000
561D9A:  MOV             R0, R11
561D9C:  EOR.W           R2, R2, #0x80000000
561DA0:  EOR.W           R3, R3, #0x80000000
561DA4:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
561DA8:  LDR.W           R5, [R11,#0x14]
561DAC:  ADD             R0, SP, #0x200+var_D8; CMatrix *
561DAE:  MOV             R2, R8
561DB0:  VLDR            S20, [R11,#0x94]
561DB4:  MOV             R1, R5; CVector *
561DB6:  VLDR            S24, [R5,#0x20]
561DBA:  VLDR            S26, [R5,#0x24]
561DBE:  VLDR            S28, [R5,#0x28]
561DC2:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
561DC6:  VMUL.F32        S0, S18, S22
561DCA:  MOV             R1, R6; y
561DCC:  VMOV            S2, R9
561DD0:  VMUL.F32        S0, S22, S0
561DD4:  VADD.F32        S0, S0, S16
561DD8:  VDIV.F32        S0, S16, S0
561DDC:  VMUL.F32        S0, S0, S2
561DE0:  VMOV            R0, S0; x
561DE4:  BLX             powf
561DE8:  VMOV            S0, R0
561DEC:  VLDR            S6, [SP,#0x200+var_D8]
561DF0:  VLDR            S8, [SP,#0x200+var_D8+4]
561DF4:  MOV             R0, R11
561DF6:  VMUL.F32        S0, S22, S0
561DFA:  VLDR            S10, [SP,#0x200+var_D0]
561DFE:  VSUB.F32        S0, S0, S22
561E02:  VMUL.F32        S2, S0, S24
561E06:  VMUL.F32        S4, S0, S26
561E0A:  VMUL.F32        S0, S0, S28
561E0E:  VMUL.F32        S2, S2, S20
561E12:  VMUL.F32        S4, S4, S20
561E16:  VMUL.F32        S0, S0, S20
561E1A:  VMOV            R1, S2
561E1E:  VLDR            S2, [R5,#0x14]
561E22:  VMOV            R2, S4
561E26:  VLDR            S4, [R5,#0x18]
561E2A:  VMOV            R3, S0
561E2E:  VLDR            S0, [R5,#0x10]
561E32:  VADD.F32        S4, S4, S10
561E36:  VADD.F32        S0, S0, S6
561E3A:  VADD.F32        S2, S2, S8
561E3E:  VSTR            S0, [SP,#0x200+var_200]
561E42:  VSTR            S2, [SP,#0x200+var_1FC]
561E46:  VSTR            S4, [SP,#0x200+var_1F8]
561E4A:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
561E4E:  LDRB.W          R0, [R11,#0x3A]
561E52:  CMP             R0, #8
561E54:  BCC             loc_561E68
561E56:  LDR.W           R1, [R11,#0x388]
561E5A:  VLDR            D16, [R1,#0x14]
561E5E:  LDR             R1, [R1,#0x1C]
561E60:  STR.W           R1, [R8,#8]
561E64:  VSTR            D16, [R8]
561E68:  MOV             R5, R11
561E6A:  MOV.W           R9, #0
561E6E:  LDR.W           R1, [R5,#0x1C]!
561E72:  TST.W           R1, #0x10
561E76:  ITT EQ
561E78:  ANDEQ.W         R1, R0, #0xF0
561E7C:  CMPEQ           R1, #0x20 ; ' '
561E7E:  BNE.W           loc_56204E
561E82:  LDRB.W          R1, [R11,#0x628]
561E86:  LSLS            R1, R1, #0x1C
561E88:  BMI.W           loc_561FD8
561E8C:  LDR             R1, [R4]
561E8E:  MOV.W           R8, #0
561E92:  VLDR            S0, [R11,#0x48]
561E96:  LSLS            R1, R1, #7
561E98:  BMI             loc_561EE4
561E9A:  VCMP.F32        S0, #0.0
561E9E:  VMRS            APSR_nzcv, FPSCR
561EA2:  BNE             loc_561EE4
561EA4:  VLDR            S4, [R11,#0x4C]
561EA8:  VCMP.F32        S4, #0.0
561EAC:  VMRS            APSR_nzcv, FPSCR
561EB0:  BNE             loc_561EE0
561EB2:  VLDR            S4, [R11,#0x50]
561EB6:  VCMP.F32        S4, #0.0
561EBA:  VMRS            APSR_nzcv, FPSCR
561EBE:  BNE             loc_561EE0
561EC0:  VMOV.F32        S4, #1.0
561EC4:  ADD.W           R1, R11, #0x740
561EC8:  VLDR            S6, [R1]
561ECC:  VCMP.F32        S6, S4
561ED0:  VMRS            APSR_nzcv, FPSCR
561ED4:  ITE NE
561ED6:  MOVNE.W         R8, #1
561EDA:  MOVEQ.W         R8, #0
561EDE:  B               loc_561EE4
561EE0:  MOV.W           R8, #0
561EE4:  ADD.W           R1, R11, #0x4C ; 'L'
561EE8:  VMOV.F32        S12, #0.5
561EEC:  VMOV.I32        Q9, #0x3F000000
561EF0:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x561F00)
561EF4:  VLDM            R1, {S1-S4}
561EF8:  ADD.W           R1, R11, #0x78 ; 'x'
561EFC:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
561EFE:  AND.W           R0, R0, #0xF8
561F02:  VLD1.32         {D16-D17}, [R1]
561F06:  ADR.W           R3, loc_562708
561F0A:  VADD.F32        Q8, Q8, Q0
561F0E:  CMP             R0, #0x28 ; '('
561F10:  VLDR            S8, [R11,#0x88]
561F14:  VLDR            S6, [R11,#0x5C]
561F18:  VLDR            S10, [R11,#0x8C]
561F1C:  VADD.F32        S2, S8, S4
561F20:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
561F22:  IT EQ
561F24:  ADDEQ           R3, #4
561F26:  VADD.F32        S10, S10, S6
561F2A:  VLDR            S14, [R3]
561F2E:  VMUL.F32        Q1, Q8, Q9
561F32:  CMP             R0, #0x28 ; '('
561F34:  VMUL.F32        S2, S2, S12
561F38:  VMUL.F32        S0, S10, S12
561F3C:  VST1.32         {D2-D3}, [R1]
561F40:  VMUL.F32        S10, S5, S5
561F44:  ADR.W           R1, loc_562710
561F48:  VMUL.F32        S12, S4, S4
561F4C:  VMUL.F32        S1, S6, S6
561F50:  VSTR            S2, [R11,#0x88]
561F54:  VSTR            S0, [R11,#0x8C]
561F58:  VLDR            S8, [R2]
561F5C:  IT EQ
561F5E:  ADDEQ           R1, #4
561F60:  VADD.F32        S10, S12, S10
561F64:  VMUL.F32        S12, S14, S8
561F68:  VADD.F32        S10, S10, S1
561F6C:  VMUL.F32        S12, S12, S12
561F70:  VCMPE.F32       S10, S12
561F74:  VMRS            APSR_nzcv, FPSCR
561F78:  BGT             loc_561FAE
561F7A:  VMUL.F32        S2, S2, S2
561F7E:  ADR.W           R2, loc_562718
561F82:  VMUL.F32        S4, S7, S7
561F86:  CMP             R0, #0x28 ; '('
561F88:  IT EQ
561F8A:  ADDEQ           R2, #4; float
561F8C:  VMUL.F32        S0, S0, S0
561F90:  VLDR            S6, [R2]
561F94:  VMUL.F32        S6, S6, S8
561F98:  VADD.F32        S2, S4, S2
561F9C:  VMUL.F32        S4, S6, S6
561FA0:  VADD.F32        S0, S2, S0
561FA4:  VCMPE.F32       S0, S4
561FA8:  VMRS            APSR_nzcv, FPSCR
561FAC:  BLE             loc_561FDE
561FAE:  CMP.W           R8, #1
561FB2:  BNE             loc_56201C
561FB4:  MOV             R6, R11
561FB6:  LDRB.W          R0, [R6,#0xBC]!
561FBA:  ADDS            R0, #1
561FBC:  STRB            R0, [R6]
561FBE:  LDR.W           R0, [R11,#0x14]
561FC2:  ADD.W           R1, R0, #0x30 ; '0'
561FC6:  CMP             R0, #0
561FC8:  IT EQ
561FCA:  ADDEQ.W         R1, R11, #4
561FCE:  LDRD.W          R0, R1, [R1]; float
561FD2:  BLX             j__ZN8CCarCtrl22MapCouldMoveInThisAreaEff; CCarCtrl::MapCouldMoveInThisArea(float,float)
561FD6:  CBZ             R0, loc_562026
561FD8:  MOV.W           R9, #0
561FDC:  B               loc_56204E
561FDE:  VLDR            S0, [R1]
561FE2:  MOVS            R0, #0
561FE4:  VLDR            S2, [R11,#0xD8]
561FE8:  MOV.W           R9, #0
561FEC:  VCMPE.F32       S2, S0
561FF0:  VMRS            APSR_nzcv, FPSCR
561FF4:  IT LT
561FF6:  MOVLT           R0, #1
561FF8:  ORRS.W          R0, R0, R8
561FFC:  BEQ             loc_56201C
561FFE:  MOV             R6, R11
562000:  LDRB.W          R0, [R6,#0xBC]!
562004:  ADDS            R0, #1
562006:  STRB            R0, [R6]
562008:  UXTB            R0, R0
56200A:  CMP             R0, #0xA
56200C:  MOV.W           R0, #0
562010:  IT HI
562012:  MOVHI           R0, #1
562014:  ORRS.W          R0, R0, R8
562018:  BNE             loc_561FBE
56201A:  B               loc_56204E
56201C:  MOV.W           R9, #0
562020:  STRB.W          R9, [R11,#0xBC]
562024:  B               loc_56204E
562026:  ADD.W           R0, R11, #0x4C ; 'L'
56202A:  CMP.W           R8, #1
56202E:  BNE             loc_562036
562030:  LDRB            R1, [R6]
562032:  CMP             R1, #0xB
562034:  BCC             loc_56203A
562036:  MOVS            R1, #0xA
562038:  STRB            R1, [R6]
56203A:  VMOV.I32        Q8, #0
56203E:  MOVS            R1, #0
562040:  STR.W           R1, [R11,#0x48]
562044:  MOV.W           R9, #1
562048:  VST1.32         {D16-D17}, [R0]!
56204C:  STR             R1, [R0]
56204E:  LDR.W           R0, =(_ZN6CWorld20bForceProcessControlE_ptr - 0x56205A)
562052:  LDR.W           R1, [R11,#0x7D4]
562056:  ADD             R0, PC; _ZN6CWorld20bForceProcessControlE_ptr
562058:  CMP             R1, #0
56205A:  LDR             R0, [R0]; CWorld::bForceProcessControl ...
56205C:  LDRB            R0, [R0]; CWorld::bForceProcessControl
56205E:  BEQ             loc_562072
562060:  LDR             R2, [R4,#4]
562062:  CMP             R0, #0
562064:  ORR.W           R2, R2, #2
562068:  STR             R2, [R4,#4]
56206A:  BEQ             loc_562072
56206C:  LDRB            R1, [R1,#0x1C]
56206E:  LSLS            R1, R1, #0x1A
562070:  BMI             loc_562168
562072:  LDR.W           R1, [R11,#0x7D8]
562076:  CBZ             R1, loc_56208A
562078:  LDR             R2, [R4,#4]
56207A:  CMP             R0, #0
56207C:  ORR.W           R2, R2, #2
562080:  STR             R2, [R4,#4]
562082:  BEQ             loc_56208A
562084:  LDRB            R1, [R1,#0x1C]
562086:  LSLS            R1, R1, #0x1A
562088:  BMI             loc_562168
56208A:  LDR.W           R1, [R11,#0x7DC]
56208E:  CBZ             R1, loc_5620A2
562090:  LDR             R2, [R4,#4]
562092:  CMP             R0, #0
562094:  ORR.W           R2, R2, #2
562098:  STR             R2, [R4,#4]
56209A:  BEQ             loc_5620A2
56209C:  LDRB            R1, [R1,#0x1C]
56209E:  LSLS            R1, R1, #0x1A
5620A0:  BMI             loc_562168
5620A2:  LDR.W           R2, [R11,#0x7E0]
5620A6:  LDR             R1, [R4,#4]
5620A8:  CBZ             R2, loc_5620BE
5620AA:  ORR.W           R1, R1, #2
5620AE:  LDR             R3, [R4]
5620B0:  CMP             R0, #0
5620B2:  STRD.W          R3, R1, [R4]
5620B6:  BEQ             loc_5620BE
5620B8:  LDRB            R0, [R2,#0x1C]
5620BA:  LSLS            R0, R0, #0x1A
5620BC:  BMI             loc_562168
5620BE:  LSLS            R0, R1, #0x1E
5620C0:  ITT MI
5620C2:  MOVMI.W         R9, #0
5620C6:  STRBMI.W        R9, [R11,#0xBC]
5620CA:  LDR.W           R0, [R11]
5620CE:  MOVS            R1, #0
5620D0:  MOVS            R2, #0
5620D2:  MOVS            R3, #0
5620D4:  LDR.W           R6, [R0,#0xE4]
5620D8:  MOVS            R0, #0x31 ; '1'
5620DA:  STRD.W          R1, R1, [SP,#0x200+var_200]
5620DE:  MOVS            R1, #0
5620E0:  STR             R0, [SP,#0x200+var_1F8]
5620E2:  MOV             R0, R11
5620E4:  BLX             R6
5620E6:  VLDR            S0, [R11,#0xDC]
5620EA:  VCMPE.F32       S0, #0.0
5620EE:  VMRS            APSR_nzcv, FPSCR
5620F2:  BLE             loc_562174
5620F4:  LDR.W           R0, [R11,#0x14]
5620F8:  VLDR            S0, [R11,#0xE4]
5620FC:  VLDR            S2, [R11,#0xE8]
562100:  VLDR            S6, [R0]
562104:  VLDR            S8, [R0,#4]
562108:  VMUL.F32        S0, S0, S6
56210C:  VLDR            S4, [R11,#0xEC]
562110:  VMUL.F32        S2, S2, S8
562114:  VLDR            S10, [R0,#8]
562118:  VMUL.F32        S4, S4, S10
56211C:  VADD.F32        S0, S0, S2
562120:  VMOV.F32        S2, #0.5
562124:  VADD.F32        S0, S0, S4
562128:  VABS.F32        S0, S0
56212C:  VCMPE.F32       S0, S2
562130:  VMRS            APSR_nzcv, FPSCR
562134:  BLE             loc_562174
562136:  VLDR            S0, [R11,#0x48]
56213A:  VLDR            S2, [R11,#0x4C]
56213E:  VMUL.F32        S0, S0, S0
562142:  VLDR            S4, [R11,#0x50]
562146:  VMUL.F32        S2, S2, S2
56214A:  VMUL.F32        S4, S4, S4
56214E:  VADD.F32        S0, S0, S2
562152:  VLDR            S2, =0.1
562156:  VADD.F32        S0, S0, S4
56215A:  VCMPE.F32       S0, S2
56215E:  VMRS            APSR_nzcv, FPSCR
562162:  BGE             loc_562174
562164:  MOVS            R6, #1
562166:  B               loc_56217C
562168:  LDR             R0, [R5]
56216A:  ORR.W           R0, R0, #0x40 ; '@'
56216E:  STR             R0, [R5]
562170:  B.W             loc_564960
562174:  LDRB.W          R0, [R11,#0x628]
562178:  UBFX.W          R6, R0, #3, #1
56217C:  CMP.W           R9, #1
562180:  STR.W           R11, [SP,#0x200+var_18C]
562184:  STRD.W          R9, R4, [SP,#0x200+var_1A4]
562188:  BNE             loc_562218
56218A:  MOV             R0, R11; this
56218C:  BLX             j__ZN9CPhysical11SkipPhysicsEv; CPhysical::SkipPhysics(void)
562190:  LDR             R0, [R4]
562192:  BIC.W           R0, R0, #0x21000000
562196:  STR             R0, [R4]
562198:  LDRB.W          R0, [R11,#0x628]
56219C:  LSLS            R0, R0, #0x1B
56219E:  BPL.W           loc_563E92
5621A2:  ADD.W           R0, R11, #0x658
5621A6:  VLDR            S2, =0.34907
5621AA:  VLDR            S0, [R0]
5621AE:  VCMPE.F32       S0, S2
5621B2:  VMRS            APSR_nzcv, FPSCR
5621B6:  BGE             loc_5621D4
5621B8:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5621C4)
5621BC:  VLDR            S2, =0.017453
5621C0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5621C2:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5621C4:  VLDR            S4, [R1]
5621C8:  VMUL.F32        S2, S4, S2
5621CC:  VADD.F32        S0, S0, S2
5621D0:  VSTR            S0, [R0]
5621D4:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5621DC)
5621D8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5621DA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5621DC:  LDR             R1, [R0]; y
5621DE:  MOV             R0, #0x3F7851EC; x
5621E6:  BLX             powf
5621EA:  VMOV.F32        S16, #1.0
5621EE:  LDR.W           R1, [R11,#0x14]
5621F2:  VMOV            S18, R0
5621F6:  VLDR            S0, [R1,#8]
5621FA:  VCMPE.F32       S0, S16
5621FE:  VMRS            APSR_nzcv, FPSCR
562202:  ITTT LE
562204:  VMOVLE.F32      S2, #-1.0
562208:  VCMPELE.F32     S0, S2
56220C:  VMRSLE          APSR_nzcv, FPSCR
562210:  BGE             loc_562270
562212:  VMOV.F32        S2, #-1.0
562216:  B               loc_562282
562218:  LDRB            R0, [R4,#3]
56221A:  LSLS            R0, R0, #0x1F
56221C:  BNE             loc_56222A
56221E:  LDR.W           R0, [R11]
562222:  MOVS            R1, #1
562224:  LDR             R2, [R0,#0x60]
562226:  MOV             R0, R11
562228:  BLX             R2
56222A:  LDRB.W          R0, [SP,#0x200+var_64]
56222E:  LSLS            R0, R0, #0x1E
562230:  BMI             loc_5622E8
562232:  LDRB.W          R0, [R11,#0x628]
562236:  TST.W           R0, #0x18
56223A:  BNE             loc_5622E8
56223C:  LDR.W           R1, [R11,#0x14]
562240:  ADD.W           R0, R11, #0x498
562244:  VLDR            S0, [R0]
562248:  VLDR            S2, [R1,#8]
56224C:  VCMPE.F32       S2, #0.0
562250:  VMRS            APSR_nzcv, FPSCR
562254:  BGE             loc_5622BE
562256:  VLDR            S2, =-0.43633
56225A:  VCMPE.F32       S0, S2
56225E:  VMRS            APSR_nzcv, FPSCR
562262:  BLE             loc_5622E8
562264:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x562270)
562268:  VLDR            S2, =-0.0087266
56226C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56226E:  B               loc_5622D6
562270:  VCMPE.F32       S0, S16
562274:  VMRS            APSR_nzcv, FPSCR
562278:  VMOV.F32        S2, S16
56227C:  IT LE
56227E:  VMOVLE.F32      S2, S0
562282:  VMOV            R0, S2; x
562286:  ADD.W           R4, R11, #0x660
56228A:  VLDR            S20, [R4]
56228E:  BLX             asinf
562292:  VMOV            S2, R0
562296:  VLDR            S0, =0.2618
56229A:  VSUB.F32        S4, S16, S18
56229E:  ADDW            R0, R11, #0x65C
5622A2:  VADD.F32        S0, S2, S0
5622A6:  VMUL.F32        S2, S18, S20
5622AA:  VMUL.F32        S0, S4, S0
5622AE:  VSUB.F32        S0, S2, S0
5622B2:  VSTR            S0, [R4]
5622B6:  VSTR            S0, [R0]
5622BA:  B.W             loc_563E92
5622BE:  VLDR            S2, =0.43633
5622C2:  VCMPE.F32       S0, S2
5622C6:  VMRS            APSR_nzcv, FPSCR
5622CA:  BGE             loc_5622E8
5622CC:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5622D8)
5622D0:  VLDR            S2, =0.0087266
5622D4:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5622D6:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5622D8:  VLDR            S4, [R1]
5622DC:  VMUL.F32        S2, S4, S2
5622E0:  VADD.F32        S0, S0, S2
5622E4:  VSTR            S0, [R0]
5622E8:  LDRB.W          R0, [R11,#0x3A]
5622EC:  LDR.W           R4, [R11,#0x9C]
5622F0:  CMP             R0, #7
5622F2:  BHI.W           loc_5623F8
5622F6:  LDR.W           R0, [R11,#0x464]
5622FA:  CMP             R0, #0
5622FC:  BEQ             loc_5623F8
5622FE:  LDR             R0, [R0,#0x18]
562300:  MOVS            R1, #0xC7
562302:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
562306:  CMP             R0, #0
562308:  BEQ             loc_5623F8
56230A:  VMOV.F32        S16, #0.5
56230E:  VLDR            S0, [R0,#0x18]
562312:  VCMPE.F32       S0, S16
562316:  VMRS            APSR_nzcv, FPSCR
56231A:  BLE             loc_5623F8
56231C:  VLDR            S2, =0.06
562320:  VLDR            S0, [R0,#0x20]
562324:  VCMPE.F32       S0, S2
562328:  VMRS            APSR_nzcv, FPSCR
56232C:  BLE             loc_5623F8
56232E:  VLDR            S2, =0.14
562332:  VCMPE.F32       S0, S2
562336:  VMRS            APSR_nzcv, FPSCR
56233A:  BGE             loc_5623F8
56233C:  BLX             j__ZN10CCullZones29DoExtraAirResistanceForPlayerEv; CCullZones::DoExtraAirResistanceForPlayer(void)
562340:  VLDR            S2, =0.85
562344:  CMP             R0, #0
562346:  VLDR            S0, =0.6
56234A:  ADD.W           R0, R11, #0x4A0
56234E:  IT NE
562350:  VMOVNE.F32      S0, S2
562354:  VLDR            S2, [R11,#0x9C]
562358:  VMUL.F32        S0, S2, S0
56235C:  VLDR            S2, [R0]
562360:  VCMPE.F32       S2, S16
562364:  VMRS            APSR_nzcv, FPSCR
562368:  VSTR            S0, [R11,#0x9C]
56236C:  BLE             loc_5623F8
56236E:  LDR.W           R0, [R11,#0x14]
562372:  VLDR            S6, [R11,#0x48]
562376:  VLDR            S8, [R11,#0x4C]
56237A:  VLDR            S0, [R0,#0x10]
56237E:  VLDR            S2, [R0,#0x14]
562382:  VMUL.F32        S6, S6, S0
562386:  VLDR            S10, [R11,#0x50]
56238A:  VMUL.F32        S8, S8, S2
56238E:  VLDR            S4, [R0,#0x18]
562392:  VMUL.F32        S10, S10, S4
562396:  VADD.F32        S6, S6, S8
56239A:  VMOV.F32        S8, #0.25
56239E:  VADD.F32        S6, S6, S10
5623A2:  VCMPE.F32       S6, S8
5623A6:  VMRS            APSR_nzcv, FPSCR
5623AA:  BLE             loc_5623F8
5623AC:  VLDR            S6, =0.2
5623B0:  VLDR            S8, [R11,#0x90]
5623B4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5623C2)
5623B6:  VMUL.F32        S6, S8, S6
5623BA:  VLDR            S8, =0.008
5623BE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5623C0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5623C2:  VMUL.F32        S6, S6, S8
5623C6:  VLDR            S8, [R0]
5623CA:  MOV             R0, R11
5623CC:  VMUL.F32        S6, S8, S6
5623D0:  VMUL.F32        S0, S0, S6
5623D4:  VMUL.F32        S2, S2, S6
5623D8:  VMUL.F32        S4, S4, S6
5623DC:  VMOV            R1, S0
5623E0:  VMOV            R2, S2
5623E4:  VMOV            R3, S4
5623E8:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5623EC:  LDRB.W          R0, [R11,#0x628]
5623F0:  ORR.W           R0, R0, #0x20 ; ' '
5623F4:  STRB.W          R0, [R11,#0x628]
5623F8:  ADDW            R0, R11, #0x7D4
5623FC:  STR             R0, [SP,#0x200+var_1B0]
5623FE:  MOV             R0, R11; this
562400:  LDR.W           R5, [R11,#0x44]
562404:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
562408:  MOV             R0, R11; this
56240A:  STR.W           R4, [R11,#0x9C]
56240E:  BLX             j__ZN5CBike15ProcessBuoyancyEv; CBike::ProcessBuoyancy(void)
562412:  TST.W           R5, #0x100
562416:  BNE             loc_562494
562418:  LDRB.W          R0, [R11,#0x45]
56241C:  LSLS            R0, R0, #0x1F
56241E:  BEQ             loc_562494
562420:  LDR.W           R0, [R11,#0x464]; this
562424:  CBZ             R0, loc_562468
562426:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
56242A:  CBZ             R0, loc_562468
56242C:  LDR.W           R0, [R11,#0x464]; this
562430:  BLX             j__ZN10CPlayerPed17ResetPlayerBreathEv; CPlayerPed::ResetPlayerBreath(void)
562434:  B               loc_562494
562436:  ALIGN 4
562438:  DCFS 0.1
56243C:  DCFS 0.34907
562440:  DCFS 0.017453
562444:  DCFS -0.43633
562448:  DCFS -0.0087266
56244C:  DCFS 0.2618
562450:  DCFS 0.43633
562454:  DCFS 0.0087266
562458:  DCFS 0.06
56245C:  DCFS 0.14
562460:  DCFS 0.85
562464:  DCFS 0.6
562468:  LDRB.W          R0, [R11,#0x48C]
56246C:  CBZ             R0, loc_562494
56246E:  ADD.W           R4, R11, #0x468
562472:  MOVS            R5, #0
562474:  LDR.W           R0, [R4,R5,LSL#2]; this
562478:  CBZ             R0, loc_56248A
56247A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
56247E:  CMP             R0, #1
562480:  ITT EQ
562482:  LDREQ.W         R0, [R4,R5,LSL#2]; this
562486:  BLXEQ           j__ZN10CPlayerPed17ResetPlayerBreathEv; CPlayerPed::ResetPlayerBreath(void)
56248A:  LDRB.W          R0, [R11,#0x48C]
56248E:  ADDS            R5, #1
562490:  CMP             R5, R0
562492:  BLT             loc_562474
562494:  ADD             R0, SP, #0x200+var_108
562496:  MOV             R1, R11
562498:  STR.W           R10, [SP,#0x200+var_1C0]
56249C:  ADD.W           R10, R0, #4
5624A0:  ADD.W           R0, R1, #0x7A0
5624A4:  STR             R6, [SP,#0x200+var_1B8]
5624A6:  ADDW            R11, R1, #0x67C
5624AA:  ADD.W           R12, R1, #0x730
5624AE:  VLDR            S0, [R0]
5624B2:  ADD.W           R0, R1, #0x790
5624B6:  ADDW            R2, R1, #0x72C
5624BA:  ADD.W           R3, R1, #0x728
5624BE:  VLDR            S2, [R0]
5624C2:  ADDW            R0, R1, #0x79C
5624C6:  ADDW            R4, R1, #0x724
5624CA:  VMOV.F32        S22, #1.0
5624CE:  VLDR            S4, [R0]
5624D2:  ADD.W           R0, R1, #0x798
5624D6:  VDIV.F32        S0, S2, S0
5624DA:  ADD             R5, SP, #0x200+var_A4
5624DC:  ADD.W           R8, SP, #0x200+var_D8
5624E0:  ADD.W           R9, SP, #0x200+var_158
5624E4:  MOVS            R6, #0x18
5624E6:  VLDR            S6, [R0]
5624EA:  ADD.W           R0, R1, #0x788
5624EE:  VSUB.F32        S0, S22, S0
5624F2:  VLDR            S8, [R0]
5624F6:  ADDW            R0, R1, #0x794
5624FA:  VLDR            S10, [R0]
5624FE:  ADDW            R0, R1, #0x78C
562502:  ADDW            R1, R1, #0x784
562506:  STR             R1, [SP,#0x200+var_1CC]
562508:  VDIV.F32        S6, S8, S6
56250C:  VLDR            S12, [R1]
562510:  VSUB.F32        S6, S22, S6
562514:  STR             R0, [SP,#0x200+var_1C4]
562516:  VDIV.F32        S10, S12, S10
56251A:  VLDR            S14, [R0]
56251E:  VSUB.F32        S2, S22, S10
562522:  VLDR            S8, [R4]
562526:  VSUB.F32        S12, S22, S6
56252A:  VDIV.F32        S4, S14, S4
56252E:  VSUB.F32        S4, S22, S4
562532:  VLDR            S14, [R2]
562536:  VSUB.F32        S10, S22, S2
56253A:  VSUB.F32        S2, S8, S2
56253E:  VLDR            S8, [R3]
562542:  VSUB.F32        S6, S8, S6
562546:  VLDR            S8, [R12]
56254A:  STR             R4, [SP,#0x200+var_194]
56254C:  VSUB.F32        S8, S8, S0
562550:  VSUB.F32        S1, S22, S4
562554:  VSUB.F32        S4, S14, S4
562558:  VSUB.F32        S14, S22, S0
56255C:  VDIV.F32        S0, S2, S10
562560:  VDIV.F32        S2, S6, S12
562564:  VDIV.F32        S4, S4, S1
562568:  VDIV.F32        S6, S8, S14
56256C:  VSTR            S0, [R4]
562570:  MOV             R4, R3
562572:  VSTR            S2, [R3]
562576:  STR             R2, [SP,#0x200+var_1A8]
562578:  VSTR            S4, [R2]
56257C:  STR.W           R12, [SP,#0x200+var_1B4]
562580:  VSTR            S6, [R12]
562584:  STR             R3, [SP,#0x200+var_1AC]
562586:  B               loc_56259C
562588:  ADDS            R0, R4, #4
56258A:  VLDR            S0, [R4]
56258E:  ADD.W           R10, R10, #0xC
562592:  ADD.W           R11, R11, #0x2C ; ','
562596:  ADDS            R6, #0x20 ; ' '
562598:  ADDS            R5, #0xC
56259A:  MOV             R4, R0
56259C:  VCMPE.F32       S0, S22
5625A0:  VMRS            APSR_nzcv, FPSCR
5625A4:  BGE             loc_562634
5625A6:  LDR             R2, [SP,#0x200+var_18C]
5625A8:  VLDR            S0, [R11,#-8]
5625AC:  VLDR            S2, [R11,#-4]
5625B0:  LDR             R1, [R2,#0x14]; CVector *
5625B2:  VLDR            S4, [R11]
5625B6:  ADD.W           R0, R1, #0x30 ; '0'
5625BA:  CMP             R1, #0
5625BC:  IT EQ
5625BE:  ADDEQ           R0, R2, #4
5625C0:  MOV             R2, R9
5625C2:  VLDR            S6, [R0]
5625C6:  VLDR            S8, [R0,#4]
5625CA:  VLDR            S10, [R0,#8]
5625CE:  VSUB.F32        S0, S0, S6
5625D2:  VSUB.F32        S2, S2, S8
5625D6:  LDR             R0, [SP,#0x200+var_198]
5625D8:  VSUB.F32        S4, S4, S10
5625DC:  VSTR            S0, [R10,#-4]
5625E0:  VSTR            S2, [R10]
5625E4:  VSTR            S4, [R10,#4]
5625E8:  LDR             R0, [R0,#0x10]
5625EA:  ADD             R0, R6
5625EC:  VLDR            S0, [R0,#-8]
5625F0:  VLDR            S6, [R0,#-0x18]
5625F4:  VLDR            S2, [R0,#-4]
5625F8:  VLDR            S8, [R0,#-0x14]
5625FC:  VSUB.F32        S0, S0, S6
562600:  VLDR            S4, [R0]
562604:  VLDR            S10, [R0,#-0x10]
562608:  VSUB.F32        S2, S2, S8
56260C:  MOV             R0, R8; CMatrix *
56260E:  VSUB.F32        S4, S4, S10
562612:  VSTR            S2, [SP,#0x200+var_158+4]
562616:  VSTR            S0, [SP,#0x200+var_158]
56261A:  VSTR            S4, [SP,#0x200+var_150]
56261E:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
562622:  LDR             R0, [SP,#0x200+var_D0]
562624:  VLDR            D16, [SP,#0x200+var_D8]
562628:  STR             R0, [R5,#8]
56262A:  MOV             R0, R5; this
56262C:  VSTR            D16, [R5]
562630:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
562634:  CMP             R6, #0x78 ; 'x'
562636:  BNE             loc_562588
562638:  LDR             R0, [SP,#0x200+var_18C]
56263A:  MOVS            R2, #0
56263C:  MOVS            R1, #0
56263E:  ADD             R6, SP, #0x200+var_A4
562640:  ADD             R5, SP, #0x200+var_108
562642:  VLDR            S16, =0.35
562646:  STR.W           R2, [R0,#0x758]
56264A:  MOV.W           R8, #0x10
56264E:  STR.W           R2, [R0,#0x75C]
562652:  MOV             R9, #0xFFFFFF50
562656:  STRB.W          R2, [R0,#0x763]
56265A:  MOV.W           R10, #0
56265E:  STR             R1, [SP,#0x200+var_190]
562660:  MOV.W           R11, #0
562664:  STRB.W          R2, [R0,#0x762]
562668:  LDR             R0, =(g_surfaceInfos_ptr - 0x56266E)
56266A:  ADD             R0, PC; g_surfaceInfos_ptr
56266C:  LDR             R0, [R0]; g_surfaceInfos
56266E:  STR             R0, [SP,#0x200+var_19C]
562670:  LDR             R1, [SP,#0x200+var_194]
562672:  ADD.W           R0, R1, R10
562676:  VLDR            S0, [R0]
56267A:  VCMPE.F32       S0, S22
56267E:  VMRS            APSR_nzcv, FPSCR
562682:  BGE             loc_5626D6
562684:  LDR             R3, [SP,#0x200+var_18C]
562686:  ADD.W           R2, R1, R9
56268A:  LDR.W           R0, [R3,#0x388]
56268E:  VLDR            S4, [R0,#0xAC]
562692:  VLDR            S2, [R0,#0xC0]
562696:  ORR.W           R0, R11, #1
56269A:  VMOV            R1, S4; float
56269E:  CMP             R0, #3
5626A0:  VSUB.F32        S6, S22, S2
5626A4:  ADD             R0, SP, #0x200+var_74
5626A6:  ADD             R0, R10
5626A8:  IT EQ
5626AA:  VMOVEQ.F32      S2, S6
5626AE:  VLDR            S6, [R2,#0x18]
5626B2:  VCMPE.F32       S6, S16
5626B6:  VMRS            APSR_nzcv, FPSCR
5626BA:  BLE             loc_562750
5626BC:  ADDS            R2, #0x10
5626BE:  STRD.W          R2, R0, [SP,#0x200+var_1F8]; CVector *
5626C2:  MOV             R0, R3; this
5626C4:  MOV             R2, R6; CVector *
5626C6:  MOV             R3, R5; CVector *
5626C8:  VSTR            S0, [SP,#0x200+var_200]
5626CC:  VSTR            S2, [SP,#0x200+var_1FC]
5626D0:  BLX             j__ZN9CPhysical23ApplySpringCollisionAltEfR7CVectorS1_ffS1_Rf; CPhysical::ApplySpringCollisionAlt(float,CVector &,CVector &,float,float,CVector &,float &)
5626D4:  B               loc_562764
5626D6:  LDR             R0, [SP,#0x200+var_198]
5626D8:  LDR             R1, [SP,#0x200+var_18C]
5626DA:  LDR             R0, [R0,#0x10]
5626DC:  LDR             R1, [R1,#0x14]; CVector *
5626DE:  ADD.W           R2, R0, R8
5626E2:  ADD             R0, SP, #0x200+var_D8; CMatrix *
5626E4:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5626E8:  VLDR            D16, [SP,#0x200+var_D8]
5626EC:  LDR             R0, [SP,#0x200+var_D0]
5626EE:  STR             R0, [R5,#8]
5626F0:  VSTR            D16, [R5]
5626F4:  B               loc_56279A
5626F6:  ALIGN 4
5626F8:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x561A44
5626FC:  DCD vecTestResistance_ptr - 0x561B62
562700:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x561CF0
562704:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x561F00
562708:  LDR             R3, [SP,#0x200+arg_90]
56270A:  SUBS            R3, #0x44 ; 'D'
56270C:  LDR             R3, [SP,#0x200+arg_90]
56270E:  SUBS            R3, #0xC4
562710:  BVC             off_562728
562712:  SUBS            R3, #0xA3
562714:  STM             R2, {R0-R3,R7}
562716:  SUBS            R4, #0x75 ; 'u'
562718:  LDCL            p10, c3, [R11,#0x1AC]!
56271C:  LDR             R3, [SP,#0x200+arg_90]
56271E:  SUBS            R2, #0xC4
562720:  DCD _ZN6CWorld20bForceProcessControlE_ptr - 0x56205A
562724:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5621C4
562728:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5621DC
56272C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x562270
562730:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5622D8
562734:  DCFS 0.2
562738:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5623C2
56273C:  DCFS 0.008
562740:  DCFS 0.35
562744:  DCD g_surfaceInfos_ptr - 0x56266E
562748:  DCD _ZN6CCheat15m_aCheatsActiveE_ptr - 0x562B44
56274C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x562B8C
562750:  STR             R0, [SP,#0x200+var_1F8]; float *
562752:  MOV             R0, R3; this
562754:  MOV             R2, R6; CVector *
562756:  MOV             R3, R5; CVector *
562758:  VSTR            S0, [SP,#0x200+var_200]
56275C:  VSTR            S2, [SP,#0x200+var_1FC]
562760:  BLX             j__ZN9CPhysical20ApplySpringCollisionEfR7CVectorS1_ffRf; CPhysical::ApplySpringCollision(float,CVector &,CVector &,float,float,float &)
562764:  CMP.W           R11, #1
562768:  MOV.W           R4, #0
56276C:  IT GT
56276E:  MOVGT           R4, #1
562770:  LDRD.W          R0, R1, [SP,#0x200+var_194]
562774:  ADD.W           R0, R0, R1,LSL#2
562778:  LDRB.W          R1, [R0,#-0x8D]; unsigned int
56277C:  LDR             R0, [SP,#0x200+var_19C]; this
56277E:  BLX             j__ZN14SurfaceInfos_c15GetSkidmarkTypeEj; SurfaceInfos_c::GetSkidmarkType(uint)
562782:  LDR             R1, [SP,#0x200+var_18C]
562784:  CMP             R0, #2
562786:  ADD.W           R1, R1, R4,LSL#2
56278A:  STR.W           R0, [R1,#0x758]
56278E:  BNE             loc_56279A
562790:  LDR             R0, [SP,#0x200+var_18C]
562792:  MOVS            R1, #1
562794:  ADD             R0, R4
562796:  STRB.W          R1, [R0,#0x762]
56279A:  LDR             R0, [SP,#0x200+var_190]
56279C:  ADD.W           R8, R8, #0x20 ; ' '
5627A0:  ADD.W           R9, R9, #0x2C ; ','
5627A4:  ADD.W           R10, R10, #4
5627A8:  ADDS            R5, #0xC
5627AA:  ADDS            R6, #0xC
5627AC:  ADD.W           R11, R11, #1
5627B0:  CMP.W           R8, #0x90
5627B4:  ADD.W           R0, R0, #0xB
5627B8:  STR             R0, [SP,#0x200+var_190]
5627BA:  BNE.W           loc_562670
5627BE:  LDR.W           R10, [SP,#0x200+var_18C]
5627C2:  ADD.W           R8, SP, #0x200+var_158
5627C6:  LDR.W           R9, [SP,#0x200+var_1B0]
5627CA:  ADD.W           R11, SP, #0x200+var_108
5627CE:  MOVS            R4, #0
5627D0:  MOVS            R6, #0
5627D2:  LDR.W           R2, [R11,R6]
5627D6:  ADD.W           R0, R11, R6
5627DA:  LDRD.W          R3, R0, [R0,#4]
5627DE:  MOV             R1, R10
5627E0:  STR             R0, [SP,#0x200+var_200]
5627E2:  MOV             R0, R8
5627E4:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
5627E8:  ADD             R1, SP, #0x200+var_D8
5627EA:  VLDR            D16, [SP,#0x200+var_158]
5627EE:  ADDS            R5, R1, R6
5627F0:  LDR             R0, [SP,#0x200+var_150]
5627F2:  STR             R0, [R5,#8]
5627F4:  VSTR            D16, [R5]
5627F8:  LDR.W           R1, [R9,R4]
5627FC:  CBZ             R1, loc_562840
5627FE:  ADD.W           R0, R9, R6
562802:  LDRD.W          R2, R3, [R0,#0x10]
562806:  LDR             R0, [R0,#0x18]
562808:  STR             R0, [SP,#0x200+var_200]
56280A:  MOV             R0, R8
56280C:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
562810:  VLDR            S0, [R5]
562814:  VLDR            S6, [SP,#0x200+var_158]
562818:  VLDR            S2, [R5,#4]
56281C:  VSUB.F32        S0, S0, S6
562820:  VLDR            S6, [SP,#0x200+var_158+4]
562824:  VLDR            S4, [R5,#8]
562828:  VSUB.F32        S2, S2, S6
56282C:  VLDR            S6, [SP,#0x200+var_150]
562830:  VSUB.F32        S4, S4, S6
562834:  VSTR            S0, [R5]
562838:  VSTR            S2, [R5,#4]
56283C:  VSTR            S4, [R5,#8]
562840:  ADDS            R6, #0xC
562842:  ADDS            R4, #4
562844:  CMP             R6, #0x30 ; '0'
562846:  BNE             loc_5627D2
562848:  LDR             R0, [SP,#0x200+var_194]
56284A:  ADD             R5, SP, #0x200+var_A4
56284C:  LDR             R4, [SP,#0x200+var_1B4]
56284E:  VLDR            S0, [R0]
562852:  VCMPE.F32       S0, S22
562856:  VMRS            APSR_nzcv, FPSCR
56285A:  BLT             loc_56286C
56285C:  LDR             R0, [SP,#0x200+var_1AC]
56285E:  VLDR            S2, [R0]
562862:  VCMPE.F32       S2, S22
562866:  VMRS            APSR_nzcv, FPSCR
56286A:  BGE             loc_562916
56286C:  VMOV.F32        S4, #1.0
562870:  MOVS            R2, #0
562872:  MOVS            R1, #0x2C ; ','
562874:  MOVS            R0, #0
562876:  VCMPE.F32       S0, S4
56287A:  VMRS            APSR_nzcv, FPSCR
56287E:  IT GE
562880:  MOVGE           R2, #1
562882:  SMLABB.W        R2, R2, R1, R10
562886:  ADDW            R3, R2, #0x68C
56288A:  VLDR            S2, [R3]
56288E:  VCMPE.F32       S2, S16
562892:  VMRS            APSR_nzcv, FPSCR
562896:  BLE             loc_5628C0
562898:  ADD.W           R3, R2, #0x688
56289C:  ADDW            R2, R2, #0x684
5628A0:  VNEG.F32        S2, S2
5628A4:  VLDR            S6, [R3]
5628A8:  VLDR            S8, [R2]
5628AC:  VNEG.F32        S6, S6
5628B0:  VNEG.F32        S8, S8
5628B4:  VSTR            S2, [SP,#0x200+var_9C]
5628B8:  VSTR            S6, [SP,#0x200+var_A0]
5628BC:  VSTR            S8, [SP,#0x200+var_A4]
5628C0:  LDR             R2, [SP,#0x200+var_1AC]
5628C2:  VLDR            S2, [R2]
5628C6:  VCMPE.F32       S2, S4
5628CA:  VMRS            APSR_nzcv, FPSCR
5628CE:  IT LT
5628D0:  MOVLT           R0, #1
5628D2:  SMLABB.W        R1, R0, R1, R10
5628D6:  ADDW            R1, R1, #0x68C
5628DA:  VLDR            S4, [R1]
5628DE:  VCMPE.F32       S4, S16
5628E2:  VMRS            APSR_nzcv, FPSCR
5628E6:  BLE             loc_562916
5628E8:  MOVS            R1, #0x2C ; ','
5628EA:  VNEG.F32        S4, S4
5628EE:  SMLABB.W        R0, R0, R1, R10
5628F2:  ADD.W           R1, R0, #0x688
5628F6:  ADDW            R0, R0, #0x684
5628FA:  VLDR            S6, [R1]
5628FE:  VLDR            S8, [R0]
562902:  VNEG.F32        S6, S6
562906:  VSTR            S4, [SP,#0x200+var_90]
56290A:  VNEG.F32        S8, S8
56290E:  VSTR            S6, [SP,#0x200+var_94]
562912:  VSTR            S8, [SP,#0x200+var_98]
562916:  LDR             R0, [SP,#0x200+var_1A8]
562918:  VLDR            S6, [R0]
56291C:  VCMPE.F32       S6, S22
562920:  VMRS            APSR_nzcv, FPSCR
562924:  BLT             loc_562934
562926:  VLDR            S4, [R4]
56292A:  VCMPE.F32       S4, S22
56292E:  VMRS            APSR_nzcv, FPSCR
562932:  BGE             loc_5629DC
562934:  VMOV.F32        S4, #1.0
562938:  MOVS            R1, #3
56293A:  MOVS            R0, #0x2C ; ','
56293C:  VCMPE.F32       S6, S4
562940:  VMRS            APSR_nzcv, FPSCR
562944:  IT LT
562946:  MOVLT           R1, #2
562948:  SMLABB.W        R1, R1, R0, R10
56294C:  ADDW            R2, R1, #0x68C
562950:  VLDR            S6, [R2]
562954:  VCMPE.F32       S6, S16
562958:  VMRS            APSR_nzcv, FPSCR
56295C:  BLE             loc_562986
56295E:  ADD.W           R2, R1, #0x688
562962:  ADDW            R1, R1, #0x684
562966:  VNEG.F32        S6, S6
56296A:  VLDR            S8, [R2]
56296E:  VLDR            S10, [R1]
562972:  VNEG.F32        S8, S8
562976:  VNEG.F32        S10, S10
56297A:  VSTR            S6, [SP,#0x200+var_84]
56297E:  VSTR            S8, [SP,#0x200+var_88]
562982:  VSTR            S10, [SP,#0x200+var_8C]
562986:  VLDR            S6, [R4]
56298A:  MOVS            R1, #2
56298C:  VCMPE.F32       S6, S4
562990:  VMRS            APSR_nzcv, FPSCR
562994:  IT LT
562996:  MOVLT           R1, #3
562998:  SMLABB.W        R0, R1, R0, R10
56299C:  ADDW            R0, R0, #0x68C
5629A0:  VLDR            S4, [R0]
5629A4:  VCMPE.F32       S4, S16
5629A8:  VMRS            APSR_nzcv, FPSCR
5629AC:  BLE             loc_5629DC
5629AE:  MOVS            R0, #0x2C ; ','
5629B0:  VNEG.F32        S4, S4
5629B4:  SMLABB.W        R0, R1, R0, R10
5629B8:  ADD.W           R1, R0, #0x688
5629BC:  ADDW            R0, R0, #0x684
5629C0:  VLDR            S6, [R1]
5629C4:  VLDR            S8, [R0]
5629C8:  VNEG.F32        S6, S6
5629CC:  VSTR            S4, [SP,#0x200+var_78]
5629D0:  VNEG.F32        S8, S8
5629D4:  VSTR            S6, [SP,#0x200+var_7C]
5629D8:  VSTR            S8, [SP,#0x200+var_80]
5629DC:  VCMPE.F32       S0, S22
5629E0:  VMRS            APSR_nzcv, FPSCR
5629E4:  BGE             loc_562A06
5629E6:  LDR.W           R0, [R10,#0x388]
5629EA:  ADD             R3, SP, #0x200+var_A4; CVector *
5629EC:  LDR             R2, [SP,#0x200+var_74]; float
5629EE:  LDR.W           R1, [R0,#0xB0]; float
5629F2:  ADD             R0, SP, #0x200+var_D8
5629F4:  STR.W           R11, [SP,#0x200+var_200]; CVector *
5629F8:  STR             R0, [SP,#0x200+var_1FC]; int
5629FA:  MOV             R0, R10; this
5629FC:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
562A00:  LDR             R0, [SP,#0x200+var_1AC]
562A02:  VLDR            S2, [R0]
562A06:  VCMPE.F32       S2, S22
562A0A:  VMRS            APSR_nzcv, FPSCR
562A0E:  BGE             loc_562A30
562A10:  LDR.W           R0, [R10,#0x388]
562A14:  ADD.W           R3, R11, #0xC
562A18:  LDR             R2, [SP,#0x200+var_70]; float
562A1A:  LDR.W           R1, [R0,#0xB0]; float
562A1E:  ADD             R0, SP, #0x200+var_D8
562A20:  ADDS            R0, #0xC
562A22:  STRD.W          R3, R0, [SP,#0x200+var_200]; CVector *
562A26:  ADD.W           R3, R5, #0xC; CVector *
562A2A:  MOV             R0, R10; this
562A2C:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
562A30:  LDR             R0, [SP,#0x200+var_1A8]
562A32:  VLDR            S0, [R0]
562A36:  VCMPE.F32       S0, S22
562A3A:  VMRS            APSR_nzcv, FPSCR
562A3E:  BGE             loc_562A60
562A40:  LDR.W           R0, [R10,#0x388]
562A44:  ADD.W           R3, R11, #0x18
562A48:  LDR             R2, [SP,#0x200+var_6C]; float
562A4A:  LDR.W           R1, [R0,#0xB0]; float
562A4E:  ADD             R0, SP, #0x200+var_D8
562A50:  ADDS            R0, #0x18
562A52:  STRD.W          R3, R0, [SP,#0x200+var_200]; CVector *
562A56:  ADD.W           R3, R5, #0x18; CVector *
562A5A:  MOV             R0, R10; this
562A5C:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
562A60:  VLDR            S0, [R4]
562A64:  VCMPE.F32       S0, S22
562A68:  VMRS            APSR_nzcv, FPSCR
562A6C:  BGE             loc_562A8E
562A6E:  LDR.W           R0, [R10,#0x388]
562A72:  ADD.W           R3, R11, #0x24 ; '$'
562A76:  LDR             R2, [SP,#0x200+var_68]; float
562A78:  LDR.W           R1, [R0,#0xB0]; float
562A7C:  ADD             R0, SP, #0x200+var_D8
562A7E:  ADDS            R0, #0x24 ; '$'
562A80:  STRD.W          R3, R0, [SP,#0x200+var_200]; CVector *
562A84:  ADD.W           R3, R5, #0x24 ; '$'; CVector *
562A88:  MOV             R0, R10; this
562A8A:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
562A8E:  ADD.W           R8, SP, #0x200+var_158
562A92:  MOVS            R4, #0
562A94:  MOVS            R6, #0
562A96:  LDR.W           R2, [R11,R6]
562A9A:  ADD.W           R0, R11, R6
562A9E:  LDRD.W          R3, R0, [R0,#4]
562AA2:  MOV             R1, R10
562AA4:  STR             R0, [SP,#0x200+var_200]
562AA6:  MOV             R0, R8
562AA8:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
562AAC:  ADD             R1, SP, #0x200+var_D8
562AAE:  VLDR            D16, [SP,#0x200+var_158]
562AB2:  ADDS            R5, R1, R6
562AB4:  LDR             R0, [SP,#0x200+var_150]
562AB6:  STR             R0, [R5,#8]
562AB8:  VSTR            D16, [R5]
562ABC:  LDR.W           R1, [R9,R4]
562AC0:  CBZ             R1, loc_562B04
562AC2:  ADD.W           R0, R9, R6
562AC6:  LDRD.W          R2, R3, [R0,#0x10]
562ACA:  LDR             R0, [R0,#0x18]
562ACC:  STR             R0, [SP,#0x200+var_200]
562ACE:  MOV             R0, R8
562AD0:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
562AD4:  VLDR            S0, [R5]
562AD8:  VLDR            S6, [SP,#0x200+var_158]
562ADC:  VLDR            S2, [R5,#4]
562AE0:  VSUB.F32        S0, S0, S6
562AE4:  VLDR            S6, [SP,#0x200+var_158+4]
562AE8:  VLDR            S4, [R5,#8]
562AEC:  VSUB.F32        S2, S2, S6
562AF0:  VLDR            S6, [SP,#0x200+var_150]
562AF4:  VSUB.F32        S4, S4, S6
562AF8:  VSTR            S0, [R5]
562AFC:  VSTR            S2, [R5,#4]
562B00:  VSTR            S4, [R5,#8]
562B04:  ADDS            R6, #0xC
562B06:  ADDS            R4, #4
562B08:  CMP             R6, #0x30 ; '0'
562B0A:  BNE             loc_562A96
562B0C:  LDR.W           R0, [R10,#0x14]
562B10:  MOVS            R3, #0
562B12:  VLDR            S0, [R10,#0x48]
562B16:  ADD             R6, SP, #0x200+var_10C
562B18:  VLDR            S2, [R10,#0x4C]
562B1C:  ADD.W           R1, R10, #0x4A0; float *
562B20:  VLDR            S6, [R0,#0x10]
562B24:  VLDR            S8, [R0,#0x14]
562B28:  VMUL.F32        S0, S0, S6
562B2C:  VLDR            S10, [R0,#0x18]
562B30:  VMUL.F32        S2, S2, S8
562B34:  VLDR            S4, [R10,#0x50]
562B38:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x562B44)
562B3C:  VMUL.F32        S4, S4, S10
562B40:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
562B42:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
562B44:  VADD.F32        S0, S0, S2
562B48:  LDRB.W          R0, [R0,#(byte_796817 - 0x7967F4)]
562B4C:  VADD.F32        S0, S0, S4
562B50:  VSTR            S0, [SP,#0x200+var_10C]
562B54:  LDRB.W          R2, [R10,#0x819]
562B58:  LDR.W           R5, [R10,#0x388]
562B5C:  STRD.W          R6, R3, [SP,#0x200+var_200]; float *
562B60:  STRD.W          R3, R2, [SP,#0x200+var_1F8]; float
562B64:  ADD.W           R2, R10, #0x4C0; unsigned __int8 *
562B68:  STR             R0, [SP,#0x200+var_1F0]; float
562B6A:  ADDW            R3, R10, #0x4C4; float *
562B6E:  ADD.W           R0, R5, #0x2C ; ','; this
562B72:  STR             R1, [SP,#0x200+var_1BC]
562B74:  BLX             j__ZN13cTransmission26CalculateDriveAccelerationERKfRhRfS1_PfS4_hh; cTransmission::CalculateDriveAcceleration(float const&,uchar &,float &,float const&,float *,float *,uchar,uchar)
562B78:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x562B8C)
562B7C:  VMOV            S2, R0
562B80:  LDR.W           R0, [R10,#0x388]
562B84:  ADDW            R2, R10, #0x4A4
562B88:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
562B8A:  VLDR            S4, [R10,#0x98]
562B8E:  VLDR            S0, [R2]
562B92:  MOVS            R2, #8
562B94:  VLDR            S6, [R0,#0x94]
562B98:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
562B9A:  VMUL.F32        S6, S0, S6
562B9E:  VLDR            S0, [R1]
562BA2:  LDRB.W          R1, [R10,#0x3A]
562BA6:  ORR.W           R1, R2, R1,LSR#3
562BAA:  CMP             R1, #8
562BAC:  BEQ             loc_562BB8
562BAE:  LDRB.W          R1, [R0,#0xD0]
562BB2:  LSLS            R1, R1, #0x1C
562BB4:  BMI.W           loc_563050
562BB8:  VMOV.F32        S8, #1.0
562BBC:  VLDR            S10, [R0,#0x98]
562BC0:  VLDR            S12, [R0,#0xA8]
562BC4:  MOVS            R0, #0
562BC6:  VADD.F32        S18, S10, S10
562BCA:  STR             R0, [SP,#0x200+var_1C8]
562BCC:  VADD.F32        S16, S12, S12
562BD0:  VSUB.F32        S8, S8, S10
562BD4:  VADD.F32        S30, S8, S8
562BD8:  VDIV.F32        S19, S2, S4
562BDC:  LDRB.W          R0, [R10,#0x819]
562BE0:  MOV.W           LR, #0
562BE4:  ADDW            R4, R10, #0x744
562BE8:  STRB.W          LR, [R10,#0x818]
562BEC:  ADDW            R2, R10, #0x684
562BF0:  STRB.W          LR, [R10,#0x819]
562BF4:  ADD.W           R9, R10, #0x688
562BF8:  STRB.W          R0, [R10,#0x81A]
562BFC:  ADDW            R0, R10, #0x634
562C00:  LDR.W           R12, [SP,#0x200+var_18C]
562C04:  ADD.W           R3, R10, #0x630
562C08:  ADDW            R8, R10, #0x62C
562C0C:  STR             R0, [SP,#0x200+var_190]
562C0E:  MOVW            R11, #0xFFFE
562C12:  MOV.W           R10, #1
562C16:  MOVS            R0, #0
562C18:  MOVS            R1, #0
562C1A:  STR             R4, [SP,#0x200+var_19C]
562C1C:  VMOV.F32        S2, #2.0
562C20:  VMUL.F32        S20, S6, S0
562C24:  VSUB.F32        S17, S2, S16
562C28:  VMOV.F32        S2, #4.0
562C2C:  VLDR            S4, [R4,#-0x20]
562C30:  VCMPE.F32       S4, S22
562C34:  VMOV.F32        S4, S2
562C38:  VMRS            APSR_nzcv, FPSCR
562C3C:  BLT             loc_562C50
562C3E:  VLDR            S4, [R4]
562C42:  VSUB.F32        S4, S4, S0
562C46:  VCMPE.F32       S4, #0.0
562C4A:  VMRS            APSR_nzcv, FPSCR
562C4E:  BLE             loc_562CBA
562C50:  VSTR            S4, [R4]
562C54:  LDRB.W          R5, [R12,#0x818]
562C58:  ADDS            R6, R5, #1
562C5A:  STRB.W          R6, [R12,#0x818]
562C5E:  AND.W           R6, R1, R11
562C62:  CMP             R6, #2
562C64:  ITT EQ
562C66:  LDREQ           R6, [SP,#0x200+var_18C]
562C68:  STRBEQ.W        R10, [R6,#0x819]
562C6C:  CBZ             R5, loc_562CA8
562C6E:  ADDS            R5, R2, R0
562C70:  VLDR            S4, [R8]
562C74:  ADD.W           R6, R9, R0
562C78:  VLDR            S6, [R5]
562C7C:  VADD.F32        S4, S6, S4
562C80:  VSTR            S4, [R8]
562C84:  VLDR            S4, [R6]
562C88:  VLDR            S6, [R3]
562C8C:  VADD.F32        S4, S4, S6
562C90:  VSTR            S4, [R3]
562C94:  LDR             R6, [SP,#0x200+var_190]
562C96:  VLDR            S4, [R5,#8]
562C9A:  VLDR            S6, [R6]
562C9E:  VADD.F32        S4, S4, S6
562CA2:  VSTR            S4, [R6]
562CA6:  B               loc_562CBE
562CA8:  ADDS            R5, R2, R0
562CAA:  VLDR            D16, [R5]
562CAE:  LDR             R5, [R5,#8]
562CB0:  STR.W           R5, [R8,#8]
562CB4:  VSTR            D16, [R8]
562CB8:  B               loc_562CBE
562CBA:  STR.W           LR, [R4]
562CBE:  ADDS            R0, #0x2C ; ','
562CC0:  ADDS            R4, #4
562CC2:  ADDS            R1, #1
562CC4:  CMP             R0, #0xB0
562CC6:  BNE             loc_562C2C
562CC8:  VMOV.F32        S21, #1.0
562CCC:  LDR             R0, [SP,#0x200+var_1C8]
562CCE:  CMP             R0, #0
562CD0:  IT NE
562CD2:  VMOVNE.F32      S17, S21
562CD6:  LDR.W           R11, [SP,#0x200+var_18C]
562CDA:  LDRB.W          R0, [R11,#0x818]
562CDE:  STR             R3, [SP,#0x200+var_1D0]
562CE0:  CBZ             R0, loc_562D60
562CE2:  VMOV            S0, R0
562CE6:  VCVT.F32.U32    S0, S0
562CEA:  LDR             R0, [SP,#0x200+var_190]
562CEC:  VLDR            S2, [R3]
562CF0:  VLDR            S6, [R0]
562CF4:  VDIV.F32        S4, S21, S0
562CF8:  VLDR            S0, [R8]
562CFC:  VMUL.F32        S2, S4, S2
562D00:  VMUL.F32        S0, S4, S0
562D04:  VMUL.F32        S4, S4, S6
562D08:  VSTR            S0, [R8]
562D0C:  VSTR            S2, [R3]
562D10:  VSTR            S4, [R0]
562D14:  LDR.W           R1, [R11,#0x14]
562D18:  VLDR            S6, [R1,#0x20]
562D1C:  VLDR            S8, [R1,#0x24]
562D20:  VMUL.F32        S6, S0, S6
562D24:  VLDR            S10, [R1,#0x28]
562D28:  VMUL.F32        S8, S2, S8
562D2C:  VMUL.F32        S10, S4, S10
562D30:  VADD.F32        S6, S6, S8
562D34:  VMOV.F32        S8, #-0.5
562D38:  VADD.F32        S6, S6, S10
562D3C:  VCMPE.F32       S6, S8
562D40:  VMRS            APSR_nzcv, FPSCR
562D44:  BGE             loc_562D74
562D46:  VNEG.F32        S0, S0
562D4A:  VNEG.F32        S2, S2
562D4E:  VNEG.F32        S4, S4
562D52:  VSTR            S0, [R8]
562D56:  VSTR            S2, [R3]
562D5A:  VSTR            S4, [R0]
562D5E:  B               loc_562D74
562D60:  MOVS            R0, #0
562D62:  STR.W           R0, [R11,#0x62C]
562D66:  STR             R0, [R3]
562D68:  MOV.W           R0, #0x3F800000
562D6C:  LDR             R1, [SP,#0x200+var_190]
562D6E:  STR             R0, [R1]
562D70:  LDR.W           R1, [R11,#0x14]; CVector *
562D74:  LDR.W           R10, [SP,#0x200+var_194]
562D78:  MOV.W           R9, #0
562D7C:  LDR             R0, [SP,#0x200+var_1AC]
562D7E:  VMOV.F32        S22, #0.5
562D82:  LDR             R5, [SP,#0x200+var_198]
562D84:  ADD             R4, SP, #0x200+var_128
562D86:  VLDR            S2, [R10]
562D8A:  VLDR            S0, [R0]
562D8E:  STR.W           R9, [SP,#0x200+var_128]
562D92:  VCMPE.F32       S2, S0
562D96:  LDR             R0, [R5,#0x10]
562D98:  VMRS            APSR_nzcv, FPSCR
562D9C:  LDR             R6, [SP,#0x200+var_1CC]
562D9E:  LDR             R2, [R0,#4]
562DA0:  STR             R2, [SP,#0x200+var_128+4]
562DA2:  MOV.W           R2, #0
562DA6:  IT GE
562DA8:  MOVGE           R2, #1
562DAA:  STR             R2, [SP,#0x200+var_194]
562DAC:  ADD.W           R2, R10, R2,LSL#2
562DB0:  VLDR            S2, [R6]
562DB4:  VLDR            S0, [R2]
562DB8:  MOV             R2, R4
562DBA:  LDR             R6, [SP,#0x200+var_1C0]
562DBC:  VMUL.F32        S0, S0, S2
562DC0:  VLDR            S4, [R0,#8]
562DC4:  ADD             R0, SP, #0x200+var_158; CMatrix *
562DC6:  VLDR            S2, [R6,#0x58]
562DCA:  VMUL.F32        S2, S2, S22
562DCE:  VSUB.F32        S0, S4, S0
562DD2:  VSUB.F32        S0, S0, S2
562DD6:  VSTR            S0, [SP,#0x200+var_120]
562DDA:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
562DDE:  LDR             R0, [SP,#0x200+var_150]
562DE0:  ADDS            R4, #0xC
562DE2:  STR             R0, [SP,#0x200+var_120]
562DE4:  VLDR            D16, [SP,#0x200+var_158]
562DE8:  MOV             R2, R4
562DEA:  LDR             R0, [SP,#0x200+var_1B4]
562DEC:  VSTR            D16, [SP,#0x200+var_128]
562DF0:  VLDR            S0, [R0]
562DF4:  LDR             R0, [SP,#0x200+var_1A8]
562DF6:  VLDR            S2, [R0]
562DFA:  STR.W           R9, [SP,#0x200+var_11C]
562DFE:  VCMPE.F32       S2, S0
562E02:  LDR             R0, [R5,#0x10]
562E04:  VMRS            APSR_nzcv, FPSCR
562E08:  LDR             R0, [R0,#0x64]
562E0A:  STR             R0, [SP,#0x200+var_11C+4]
562E0C:  MOV.W           R0, #3
562E10:  IT LT
562E12:  MOVLT           R0, #2
562E14:  MOV             R9, R0
562E16:  ADD.W           R0, R10, R0,LSL#2
562E1A:  VLDR            S0, [R0]
562E1E:  LDR             R0, [SP,#0x200+var_1C4]
562E20:  VLDR            S2, [R0]
562E24:  LDR             R0, [R5,#0x10]
562E26:  VMUL.F32        S0, S0, S2
562E2A:  VLDR            S2, [R6,#0x5C]
562E2E:  VLDR            S4, [R0,#0x48]
562E32:  VMUL.F32        S2, S2, S22
562E36:  ADD             R0, SP, #0x200+var_158; CMatrix *
562E38:  VSUB.F32        S0, S4, S0
562E3C:  VSUB.F32        S0, S0, S2
562E40:  VSTR            S0, [SP,#0x200+var_114]
562E44:  LDR.W           R1, [R11,#0x14]; CVector *
562E48:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
562E4C:  LDR             R0, [SP,#0x200+var_150]
562E4E:  VMOV.F32        S4, #0.25
562E52:  VLDR            D16, [SP,#0x200+var_158]
562E56:  STR             R0, [SP,#0x200+var_114]
562E58:  ADD.W           R0, R11, #0x7A8
562E5C:  VSTR            D16, [SP,#0x200+var_11C]
562E60:  VLDR            S2, [R0]
562E64:  VLDR            S0, =0.004
562E68:  LDR.W           R5, [R11,#0x388]
562E6C:  VMUL.F32        S0, S2, S0
562E70:  LDRB.W          R0, [R11,#0x3A]
562E74:  VLDR            S2, [R5,#0x28]
562E78:  CMP             R0, #8
562E7A:  STR             R4, [SP,#0x200+var_1A8]
562E7C:  VMUL.F32        S0, S0, S2
562E80:  VMUL.F32        S28, S0, S4
562E84:  BCC             loc_562ECA
562E86:  LDRB.W          R1, [R11,#0x628]
562E8A:  AND.W           R1, R1, #0x18
562E8E:  CMP             R1, #0x10
562E90:  BNE             loc_562ECA
562E92:  ADD.W           R0, R11, #0x658
562E96:  VLDR            S2, =0.34907
562E9A:  VLDR            S0, [R0]
562E9E:  VCMPE.F32       S0, S2
562EA2:  VMRS            APSR_nzcv, FPSCR
562EA6:  BGE.W           loc_563062
562EAA:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x562EB4)
562EAC:  VLDR            S2, =0.02618
562EB0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
562EB2:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
562EB4:  VLDR            S4, [R1]
562EB8:  VMUL.F32        S2, S4, S2
562EBC:  VADD.F32        S0, S0, S2
562EC0:  VSTR            S0, [R0]
562EC4:  LDR.W           R10, [SP,#0x200+var_194]
562EC8:  B               loc_563108
562ECA:  VLDR            S0, [R11,#0x48]
562ECE:  VABS.F32        S2, S0
562ED2:  VLDR            S0, =0.01
562ED6:  VCMPE.F32       S2, S0
562EDA:  VMRS            APSR_nzcv, FPSCR
562EDE:  BGE             loc_562F32
562EE0:  VLDR            S2, [R11,#0x4C]
562EE4:  VABS.F32        S2, S2
562EE8:  VCMPE.F32       S2, S0
562EEC:  VMRS            APSR_nzcv, FPSCR
562EF0:  BGE             loc_562F32
562EF2:  ADD.W           R1, R11, #0x498
562EF6:  VLDR            S2, [R1]
562EFA:  VCMP.F32        S2, #0.0
562EFE:  VMRS            APSR_nzcv, FPSCR
562F02:  BNE             loc_562F32
562F04:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x562F0A)
562F06:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
562F08:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
562F0A:  LDR             R1, [R0]; y
562F0C:  MOV             R0, #0x3F75C28F; x
562F14:  BLX             powf
562F18:  ADD.W           R1, R11, #0x658
562F1C:  VMOV            S2, R0
562F20:  VLDR            S0, [R1]
562F24:  VMUL.F32        S0, S2, S0
562F28:  VSTR            S0, [R1]
562F2C:  LDR.W           R10, [SP,#0x200+var_194]
562F30:  B               loc_563108
562F32:  VMOV.F32        S22, #1.0
562F36:  VLDR            S2, [SP,#0x200+var_10C]
562F3A:  VCMPE.F32       S2, S0
562F3E:  VMRS            APSR_nzcv, FPSCR
562F42:  BLE.W           loc_563046
562F46:  LDR             R1, [SP,#0x200+var_19C]
562F48:  VLDR            S0, [R1]
562F4C:  VCMPE.F32       S0, #0.0
562F50:  VMRS            APSR_nzcv, FPSCR
562F54:  BGT             loc_562F68
562F56:  ADD.W           R1, R11, #0x748
562F5A:  VLDR            S0, [R1]
562F5E:  VCMPE.F32       S0, #0.0
562F62:  VMRS            APSR_nzcv, FPSCR
562F66:  BLE             loc_563046
562F68:  VMOV.F64        D0, D11
562F6C:  LDR.W           R10, [SP,#0x200+var_194]
562F70:  CMP             R0, #7
562F72:  BHI.W           loc_5630EC
562F76:  MOVS            R0, #1
562F78:  VMOV.F32        S0, #4.0
562F7C:  STRB.W          R0, [SP,#0x200+var_135]
562F80:  MOVS            R0, #0x3C ; '<'
562F82:  STRB.W          R0, [SP,#0x200+var_138]
562F86:  ADD             R1, SP, #0x200+var_158
562F88:  LDR.W           R0, [R11,#0x650]
562F8C:  MOVS            R2, #0x2C ; ','
562F8E:  SMLABB.W        R4, R9, R2, R11
562F92:  VLDR            S2, [R0,#0x20]
562F96:  LDR             R0, =(g_surfaceInfos_ptr - 0x562FA0)
562F98:  VMUL.F32        S0, S2, S0
562F9C:  ADD             R0, PC; g_surfaceInfos_ptr
562F9E:  LDR             R5, [R0]; g_surfaceInfos
562FA0:  MOV             R0, R5
562FA2:  VMUL.F32        S24, S28, S0
562FA6:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
562FAA:  LDRB.W          R1, [R4,#0x697]; unsigned int
562FAE:  VMOV            S0, R0
562FB2:  MOV             R0, R5; this
562FB4:  VMUL.F32        S24, S0, S24
562FB8:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
562FBC:  CMP             R0, #3
562FBE:  BEQ             loc_562FD4
562FC0:  LDR             R2, =(g_surfaceInfos_ptr - 0x562FCA)
562FC2:  ADDW            R0, R4, #0x697
562FC6:  ADD             R2, PC; g_surfaceInfos_ptr
562FC8:  LDRB            R1, [R0]; unsigned int
562FCA:  LDR             R0, [R2]; g_surfaceInfos ; this
562FCC:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
562FD0:  CMP             R0, #4
562FD2:  BNE             loc_562FE0
562FD4:  LDR.W           R0, [R11,#0x650]
562FD8:  VLDR            S0, [R0,#0x24]
562FDC:  VMUL.F32        S24, S24, S0
562FE0:  VLDR            S0, [SP,#0x200+var_10C]
562FE4:  VMUL.F32        S0, S0, S0
562FE8:  VDIV.F32        S0, S24, S0
562FEC:  VMOV.F32        S24, #1.0
562FF0:  VMIN.F32        D0, D0, D12
562FF4:  VMOV            R0, S0; x
562FF8:  BLX             asinf
562FFC:  LDR.W           R5, [R11,#0x388]
563000:  VLDR            S0, =3.1416
563004:  VLDR            S2, [R5,#0xA0]
563008:  VMUL.F32        S0, S2, S0
56300C:  VLDR            S2, =180.0
563010:  VDIV.F32        S0, S0, S2
563014:  VMOV            S2, R0
563018:  ADD.W           R0, R11, #0x498
56301C:  VDIV.F32        S0, S2, S0
563020:  VLDR            S2, [R0]
563024:  VCMPE.F32       S2, #0.0
563028:  VMRS            APSR_nzcv, FPSCR
56302C:  BGE             loc_5630C4
56302E:  ADDW            R0, R11, #0x65C
563032:  VLDR            S4, [R0]
563036:  VCMPE.F32       S4, #0.0
56303A:  VMRS            APSR_nzcv, FPSCR
56303E:  BGE             loc_5630C4
563040:  VADD.F32        S0, S0, S0
563044:  B               loc_5630E4
563046:  VMOV.F64        D0, D11
56304A:  LDR.W           R10, [SP,#0x200+var_194]
56304E:  B               loc_5630EC
563050:  MOVS            R0, #1
563052:  VMOV.F32        S30, S22
563056:  STR             R0, [SP,#0x200+var_1C8]
563058:  VMOV.F32        S18, S22
56305C:  VMOV.F32        S16, S22
563060:  B               loc_562BD8
563062:  LDR.W           R10, [SP,#0x200+var_194]
563066:  B               loc_563108
563068:  DCFS 0.004
56306C:  DCFS 0.34907
563070:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x562EB4
563074:  DCFS 0.02618
563078:  DCFS 0.01
56307C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x562F0A
563080:  DCD g_surfaceInfos_ptr - 0x562FA0
563084:  DCD g_surfaceInfos_ptr - 0x562FCA
563088:  DCFS 3.1416
56308C:  DCFS 180.0
563090:  DCD dword_A01FA4 - 0x56321E
563094:  DCD g_surfaceInfos_ptr - 0x563226
563098:  DCD g_surfaceInfos_ptr - 0x56325C
56309C:  DCFS 0.7
5630A0:  DCD g_surfaceInfos_ptr - 0x563292
5630A4:  DCD dword_A01FA8 - 0x5632AE
5630A8:  DCFS 0.4
5630AC:  DCD dword_A01FA4 - 0x563348
5630B0:  DCD dword_A01FA8 - 0x56334E
5630B4:  DCD dword_A01FA8 - 0x563394
5630B8:  DCD dword_A01FA8 - 0x5633A4
5630BC:  DCFS 0.95
5630C0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5634CC
5630C4:  VCMPE.F32       S2, #0.0
5630C8:  VMRS            APSR_nzcv, FPSCR
5630CC:  BLE             loc_5630E4
5630CE:  ADDW            R0, R11, #0x65C
5630D2:  VLDR            S2, [R0]
5630D6:  VCMPE.F32       S2, #0.0
5630DA:  VMRS            APSR_nzcv, FPSCR
5630DE:  IT GT
5630E0:  VADDGT.F32      S0, S0, S0
5630E4:  VMIN.F32        D0, D0, D12
5630E8:  LDRB.W          R0, [R11,#0x3A]
5630EC:  CMP             R0, #8
5630EE:  ADD.W           R0, R11, #0x498
5630F2:  IT CC
5630F4:  VMOVCC.F32      S22, S0
5630F8:  VLDR            S0, [R0]
5630FC:  ADD.W           R0, R11, #0x658
563100:  VMUL.F32        S0, S0, S22
563104:  VSTR            S0, [R0]
563108:  LDR.W           R0, [R5,#0xD0]
56310C:  MOV             R5, R9
56310E:  VLDR            S22, [R11,#0x48]
563112:  VLDR            S24, [R11,#0x4C]
563116:  ANDS.W          R0, R0, #0x800000
56311A:  VLDR            S26, [R11,#0x50]
56311E:  STR             R0, [SP,#0x200+var_198]
563120:  BNE.W           loc_5633CA
563124:  LDR             R0, [SP,#0x200+var_19C]
563126:  VLDR            S2, [R0]
56312A:  VCMPE.F32       S2, #0.0
56312E:  VMRS            APSR_nzcv, FPSCR
563132:  BGT             loc_563148
563134:  ADD.W           R0, R11, #0x748
563138:  VLDR            S2, [R0]
56313C:  VCMPE.F32       S2, #0.0
563140:  VMRS            APSR_nzcv, FPSCR
563144:  BLE.W           loc_5633A6
563148:  VMOV            R5, S0
56314C:  MOV             R6, R10
56314E:  MOV.W           R10, #0
563152:  LDR.W           R4, [R11,#0x14]
563156:  STR.W           R10, [SP,#0x200+var_170]
56315A:  MOV             R0, R5; x
56315C:  BLX             cosf
563160:  STR             R0, [SP,#0x200+var_178+4]
563162:  MOV             R0, R5; x
563164:  BLX             sinf
563168:  EOR.W           R0, R0, #0x80000000
56316C:  STR             R0, [SP,#0x200+var_178]
56316E:  ADD             R0, SP, #0x200+var_158; CMatrix *
563170:  ADD             R2, SP, #0x200+var_178
563172:  MOV             R1, R4; CVector *
563174:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
563178:  MOVS            R0, #0x2C ; ','
56317A:  VLDR            D16, [SP,#0x200+var_158]
56317E:  SMLABB.W        R6, R6, R0, R11
563182:  LDR             R0, [SP,#0x200+var_150]
563184:  STR             R0, [SP,#0x200+var_160]
563186:  ADD             R4, SP, #0x200+var_168
563188:  VSTR            D16, [SP,#0x200+var_168]
56318C:  VLDR            S0, [SP,#0x200+var_168]
563190:  ADD.W           R0, R6, #0x688
563194:  ADDW            R5, R6, #0x684
563198:  VLDR            S2, [SP,#0x200+var_168+4]
56319C:  VLDR            S6, [R0]
5631A0:  ADDW            R0, R6, #0x68C
5631A4:  VLDR            S8, [R5]
5631A8:  VMUL.F32        S10, S2, S6
5631AC:  VLDR            S14, [R0]
5631B0:  VMUL.F32        S12, S0, S8
5631B4:  VLDR            S4, [SP,#0x200+var_160]
5631B8:  MOV             R0, R4; this
5631BA:  VMUL.F32        S1, S4, S14
5631BE:  VADD.F32        S10, S12, S10
5631C2:  VADD.F32        S10, S10, S1
5631C6:  VMUL.F32        S8, S8, S10
5631CA:  VMUL.F32        S6, S6, S10
5631CE:  VMUL.F32        S10, S14, S10
5631D2:  VSUB.F32        S0, S0, S8
5631D6:  VSUB.F32        S2, S2, S6
5631DA:  VSUB.F32        S4, S4, S10
5631DE:  VSTR            S0, [SP,#0x200+var_168]
5631E2:  VSTR            S2, [SP,#0x200+var_168+4]
5631E6:  VSTR            S4, [SP,#0x200+var_160]
5631EA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5631EE:  ADD             R0, SP, #0x200+var_158; CVector *
5631F0:  MOV             R1, R4; CVector *
5631F2:  MOV             R2, R5
5631F4:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5631F8:  LDR             R0, [SP,#0x200+var_150]
5631FA:  STR             R0, [SP,#0x200+var_170]
5631FC:  ADD             R0, SP, #0x200+var_178; this
5631FE:  VLDR            D16, [SP,#0x200+var_158]
563202:  VSTR            D16, [SP,#0x200+var_178]
563206:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
56320A:  LDR             R0, [SP,#0x200+var_1B8]
56320C:  ADDW            R1, R6, #0x674
563210:  LDR.W           R2, =(dword_A01FA4 - 0x56321E)
563214:  CMP             R0, #1
563216:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x563226)
56321A:  ADD             R2, PC; dword_A01FA4
56321C:  IT EQ
56321E:  STREQ.W         R10, [SP,#0x200+var_170]
563222:  ADD             R0, PC; g_surfaceInfos_ptr
563224:  STR.W           R10, [R2]
563228:  MOVS            R2, #0x3C ; '<'
56322A:  LDR             R0, [R0]; g_surfaceInfos
56322C:  STRB.W          R2, [R6,#0x694]
563230:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
563234:  VMOV            S23, R0
563238:  ADDW            R0, R11, #0x7C4
56323C:  LDR.W           R10, [SP,#0x200+var_194]
563240:  VLDR            S0, [R0]
563244:  VCMPE.F32       S0, #0.0
563248:  VMRS            APSR_nzcv, FPSCR
56324C:  BLE             loc_563276
56324E:  MOVS            R0, #0x2C ; ','
563250:  LDR.W           R2, =(g_surfaceInfos_ptr - 0x56325C)
563254:  SMLABB.W        R0, R10, R0, R11
563258:  ADD             R2, PC; g_surfaceInfos_ptr
56325A:  LDRB.W          R1, [R0,#0x697]; unsigned int
56325E:  LDR             R0, [R2]; g_surfaceInfos ; this
563260:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
563264:  SUBS            R0, #1
563266:  VLDR            S0, =0.7
56326A:  VMOV.F32        S21, #1.0
56326E:  CMP             R0, #3
563270:  IT CC
563272:  VMOVCC.F32      S21, S0
563276:  VMUL.F32        S23, S28, S23
56327A:  LDRB.W          R0, [R11,#0x3A]
56327E:  MOV             R5, R9
563280:  CMP             R0, #7
563282:  BHI             loc_5632A2
563284:  MOVS            R0, #0x2C ; ','
563286:  LDR.W           R2, =(g_surfaceInfos_ptr - 0x563292)
56328A:  SMLABB.W        R0, R10, R0, R11
56328E:  ADD             R2, PC; g_surfaceInfos_ptr
563290:  LDRB.W          R1, [R0,#0x697]; unsigned int
563294:  LDR             R0, [R2]; g_surfaceInfos ; this
563296:  BLX             j__ZN14SurfaceInfos_c16GetWetMultiplierEj; SurfaceInfos_c::GetWetMultiplier(uint)
56329A:  VMOV            S0, R0
56329E:  VMUL.F32        S23, S23, S0
5632A2:  LDR.W           R0, =(dword_A01FA8 - 0x5632AE)
5632A6:  LDR.W           R1, [R11,#0x820]
5632AA:  ADD             R0, PC; dword_A01FA8
5632AC:  LDRB.W          R4, [R11,#0x670]
5632B0:  STR             R1, [R0]
5632B2:  MOV             R1, R11
5632B4:  LDRD.W          R2, R3, [SP,#0x200+var_128]
5632B8:  LDR             R0, [SP,#0x200+var_120]
5632BA:  STR             R0, [SP,#0x200+var_200]
5632BC:  ADD             R0, SP, #0x200+var_188
5632BE:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
5632C2:  VLDR            S0, =0.4
5632C6:  CMP             R4, #1
5632C8:  VLDR            D16, [SP,#0x200+var_188]
5632CC:  VMUL.F32        S0, S23, S0
5632D0:  LDR             R0, [SP,#0x200+var_180]
5632D2:  IT EQ
5632D4:  VMOVEQ.F32      S23, S0
5632D8:  STR             R0, [SP,#0x200+var_150]
5632DA:  ADD.W           R0, R11, R10,LSL#2
5632DE:  VSTR            D16, [SP,#0x200+var_158]
5632E2:  LDR.W           R1, [R0,#0x7D4]
5632E6:  CBZ             R1, loc_563334
5632E8:  ADD.W           R0, R10, R10,LSL#1
5632EC:  ADD.W           R0, R11, R0,LSL#2
5632F0:  LDR.W           R2, [R0,#0x7E4]
5632F4:  LDR.W           R3, [R0,#0x7E8]
5632F8:  LDR.W           R0, [R0,#0x7EC]
5632FC:  STR             R0, [SP,#0x200+var_200]
5632FE:  ADD             R0, SP, #0x200+var_188
563300:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
563304:  VLDR            S0, [SP,#0x200+var_188]
563308:  VLDR            S6, [SP,#0x200+var_158]
56330C:  VLDR            S2, [SP,#0x200+var_188+4]
563310:  VLDR            S8, [SP,#0x200+var_158+4]
563314:  VSUB.F32        S0, S6, S0
563318:  VLDR            S10, [SP,#0x200+var_150]
56331C:  VLDR            S4, [SP,#0x200+var_180]
563320:  VSUB.F32        S2, S8, S2
563324:  VSUB.F32        S4, S10, S4
563328:  VSTR            S0, [SP,#0x200+var_158]
56332C:  VSTR            S2, [SP,#0x200+var_158+4]
563330:  VSTR            S4, [SP,#0x200+var_150]
563334:  LDR.W           R0, =(dword_A01FA4 - 0x563348)
563338:  VMUL.F32        S0, S20, S18
56333C:  VMUL.F32        S4, S16, S23
563340:  LDR.W           R1, =(dword_A01FA8 - 0x56334E)
563344:  ADD             R0, PC; dword_A01FA4
563346:  ADDW            R3, R11, #0x76C
56334A:  ADD             R1, PC; dword_A01FA8
56334C:  LDRB.W          R2, [R11,#0x670]
563350:  VLDR            S2, [R0]
563354:  MOVS            R0, #0
563356:  STRD.W          R0, R3, [SP,#0x200+var_1E8]; int
56335A:  ADD             R3, SP, #0x200+var_158; int
56335C:  STRD.W          R1, R0, [SP,#0x200+var_1E0]; int
563360:  MOVS            R0, #2
563362:  ADD             R1, SP, #0x200+var_128
563364:  STR             R2, [SP,#0x200+var_1D8]; int
563366:  VSTR            S21, [SP,#0x200+var_1EC]
56336A:  ADD             R2, SP, #0x200+var_178; int
56336C:  VSTR            S2, [SP,#0x200+var_1F8]
563370:  STRD.W          R1, R0, [SP,#0x200+var_200]; int
563374:  ADD             R1, SP, #0x200+var_168; int
563376:  MOV             R0, R11; int
563378:  VSTR            S4, [SP,#0x200+var_1F0]
56337C:  VSTR            S0, [SP,#0x200+var_1F4]
563380:  BLX             j__ZN8CVehicle16ProcessBikeWheelER7CVectorS1_S1_S1_iffffcPfP11tWheelState17eBikeWheelSpecialt; CVehicle::ProcessBikeWheel(CVector &,CVector &,CVector &,CVector &,int,float,float,float,float,char,float *,tWheelState *,eBikeWheelSpecial,ushort)
563384:  LDRB.W          R0, [SP,#0x200+var_64]
563388:  LSLS            R0, R0, #0x1D
56338A:  BPL             loc_5633CA
56338C:  LDR.W           R0, =(dword_A01FA8 - 0x563394)
563390:  ADD             R0, PC; dword_A01FA8
563392:  LDR             R0, [R0]
563394:  SUBS            R0, #1
563396:  CMP             R0, #1
563398:  BHI             loc_5633CA
56339A:  LDR.W           R0, =(dword_A01FA8 - 0x5633A4)
56339E:  MOVS            R1, #0
5633A0:  ADD             R0, PC; dword_A01FA8
5633A2:  STR             R1, [R0]
5633A4:  B               loc_5633CA
5633A6:  ADDW            R0, R11, #0x76C
5633AA:  VLDR            S0, =0.95
5633AE:  ADDW            R1, R11, #0x764
5633B2:  VLDR            S2, [R0]
5633B6:  VMUL.F32        S0, S2, S0
5633BA:  VLDR            S2, [R1]
5633BE:  VADD.F32        S2, S0, S2
5633C2:  VSTR            S0, [R0]
5633C6:  VSTR            S2, [R1]
5633CA:  ADDW            R0, R11, #0x74C
5633CE:  VLDR            S0, [R0]
5633D2:  VCMPE.F32       S0, #0.0
5633D6:  VMRS            APSR_nzcv, FPSCR
5633DA:  BGT             loc_5633F0
5633DC:  ADD.W           R0, R11, #0x750
5633E0:  VLDR            S0, [R0]
5633E4:  VCMPE.F32       S0, #0.0
5633E8:  VMRS            APSR_nzcv, FPSCR
5633EC:  BLE.W           loc_5636DC
5633F0:  LDR.W           R0, [R11,#0x14]
5633F4:  MOVS            R1, #0x2C ; ','
5633F6:  SMLABB.W        R4, R5, R1, R11
5633FA:  ADD             R6, SP, #0x200+var_168
5633FC:  VLDR            D16, [R0,#0x10]
563400:  LDR             R2, [R0,#0x18]
563402:  STR             R2, [SP,#0x200+var_160]
563404:  ADDW            R5, R4, #0x684
563408:  VSTR            D16, [SP,#0x200+var_168]
56340C:  VLDR            D16, [R0]
563410:  LDR             R0, [R0,#8]
563412:  STR             R0, [SP,#0x200+var_170]
563414:  ADD.W           R0, R4, #0x688
563418:  VSTR            D16, [SP,#0x200+var_178]
56341C:  VLDR            S4, [R0]
563420:  ADDW            R0, R4, #0x68C
563424:  VLDR            S2, [SP,#0x200+var_168+4]
563428:  VLDR            S0, [SP,#0x200+var_168]
56342C:  VLDR            S6, [R5]
563430:  VMUL.F32        S8, S2, S4
563434:  VLDR            S14, [R0]
563438:  MOV             R0, R6; this
56343A:  VMUL.F32        S10, S0, S6
56343E:  VLDR            S12, [SP,#0x200+var_160]
563442:  VMUL.F32        S1, S12, S14
563446:  VADD.F32        S8, S10, S8
56344A:  VADD.F32        S8, S8, S1
56344E:  VMUL.F32        S4, S4, S8
563452:  VMUL.F32        S6, S6, S8
563456:  VMUL.F32        S10, S14, S8
56345A:  VSUB.F32        S2, S2, S4
56345E:  VSUB.F32        S0, S0, S6
563462:  VSUB.F32        S8, S12, S10
563466:  VSTR            S8, [SP,#0x200+var_160]
56346A:  VSTR            S2, [SP,#0x200+var_168+4]
56346E:  VSTR            S0, [SP,#0x200+var_168]
563472:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
563476:  ADD             R0, SP, #0x200+var_188; CVector *
563478:  MOV             R1, R6; CVector *
56347A:  MOV             R2, R5
56347C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
563480:  LDR             R0, [SP,#0x200+var_180]
563482:  STR             R0, [SP,#0x200+var_170]
563484:  ADD             R0, SP, #0x200+var_178; this
563486:  VLDR            D16, [SP,#0x200+var_188]
56348A:  VSTR            D16, [SP,#0x200+var_178]
56348E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
563492:  LDR             R6, [SP,#0x200+var_1B8]
563494:  ADDW            R5, R4, #0x674
563498:  CMP             R6, #1
56349A:  ITT EQ
56349C:  MOVEQ           R0, #0
56349E:  STREQ           R0, [SP,#0x200+var_170]
5634A0:  LDR             R0, [SP,#0x200+var_1A0]
5634A2:  LDRB            R0, [R0]
5634A4:  LSLS            R0, R0, #0x1A
5634A6:  BMI             loc_56351E
5634A8:  LDRH.W          R0, [R11,#0x7BC]
5634AC:  CMP             R0, #0
5634AE:  BEQ.W           loc_56371C
5634B2:  ADD.W           R0, R11, #0x498
5634B6:  VLDR            S0, [R11,#0x94]
5634BA:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5634CC)
5634BE:  ADD             R3, SP, #0x200+var_F0
5634C0:  VLDR            S2, [R0]
5634C4:  LDR.W           R0, [R11,#0x14]
5634C8:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5634CA:  VMUL.F32        S0, S2, S0
5634CE:  VLDR            S2, =-0.0007
5634D2:  VLDR            S4, [R0,#4]
5634D6:  VLDR            S6, [R0,#8]
5634DA:  VMUL.F32        S0, S0, S2
5634DE:  VLDR            S2, [R0]
5634E2:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
5634E4:  VMUL.F32        S6, S0, S6
5634E8:  VMUL.F32        S4, S0, S4
5634EC:  VMUL.F32        S0, S2, S0
5634F0:  VLDR            S2, [R0]
5634F4:  LDM             R3, {R1-R3}
5634F6:  MOV             R0, R11
5634F8:  VMUL.F32        S6, S6, S2
5634FC:  VMUL.F32        S4, S4, S2
563500:  VMUL.F32        S0, S0, S2
563504:  VSTR            S0, [SP,#0x200+var_200]
563508:  VSTR            S4, [SP,#0x200+var_1FC]
56350C:  VSTR            S6, [SP,#0x200+var_1F8]
563510:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
563514:  VLDR            S21, =0.0
563518:  VMOV.F32        S23, S21
56351C:  B               loc_56352E
56351E:  MOV.W           R0, #0x3F800000
563522:  VLDR            S21, =20000.0
563526:  STR.W           R0, [R11,#0x7C0]
56352A:  VMOV.F32        S23, S28
56352E:  LDR             R0, =(dword_A01FA4 - 0x56353C)
563530:  MOVS            R2, #0x2C ; ','
563532:  LDR             R1, =(g_surfaceInfos_ptr - 0x563542)
563534:  SMLABB.W        R4, R9, R2, R11
563538:  ADD             R0, PC; dword_A01FA4
56353A:  VLDR            S2, =0.0
56353E:  ADD             R1, PC; g_surfaceInfos_ptr
563540:  MOVS            R2, #0x3C ; '<'
563542:  VLDR            S0, [R0]
563546:  VSTR            S19, [R0]
56354A:  VMOV.F32        S19, S20
56354E:  VCMPE.F32       S0, #0.0
563552:  LDR             R0, [R1]; g_surfaceInfos
563554:  VMRS            APSR_nzcv, FPSCR
563558:  MOV             R1, R5
56355A:  IT GT
56355C:  VMOVGT.F32      S19, S2
563560:  STRB.W          R2, [R4,#0x694]
563564:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
563568:  VCMPE.F32       S20, #0.0
56356C:  VMRS            APSR_nzcv, FPSCR
563570:  VMOV            S25, R0
563574:  ADDW            R0, R11, #0x7C4
563578:  IT GT
56357A:  VMOVGT.F32      S20, S19
56357E:  VLDR            S0, [R0]
563582:  VCMPE.F32       S0, #0.0
563586:  VMRS            APSR_nzcv, FPSCR
56358A:  BLE             loc_5635AE
56358C:  LDR             R0, =(g_surfaceInfos_ptr - 0x563596)
56358E:  LDRB.W          R1, [R4,#0x697]; unsigned int
563592:  ADD             R0, PC; g_surfaceInfos_ptr
563594:  LDR             R0, [R0]; g_surfaceInfos ; this
563596:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
56359A:  SUBS            R0, #1
56359C:  VLDR            S0, =0.7
5635A0:  VMOV.F32        S19, #1.0
5635A4:  CMP             R0, #3
5635A6:  IT CC
5635A8:  VMOVCC.F32      S19, S0
5635AC:  B               loc_5635B2
5635AE:  VMOV.F32        S19, #1.0
5635B2:  VMUL.F32        S23, S23, S25
5635B6:  LDRB.W          R0, [R11,#0x3A]
5635BA:  LDR             R5, [SP,#0x200+var_198]
5635BC:  CMP             R0, #7
5635BE:  BHI             loc_5635DC
5635C0:  MOVS            R0, #0x2C ; ','
5635C2:  LDR             R2, =(g_surfaceInfos_ptr - 0x5635CC)
5635C4:  SMLABB.W        R0, R9, R0, R11
5635C8:  ADD             R2, PC; g_surfaceInfos_ptr
5635CA:  LDRB.W          R1, [R0,#0x697]; unsigned int
5635CE:  LDR             R0, [R2]; g_surfaceInfos ; this
5635D0:  BLX             j__ZN14SurfaceInfos_c16GetWetMultiplierEj; SurfaceInfos_c::GetWetMultiplier(uint)
5635D4:  VMOV            S0, R0
5635D8:  VMUL.F32        S23, S23, S0
5635DC:  LDR             R0, =(dword_A01FA8 - 0x5635E6)
5635DE:  LDR.W           R1, [R11,#0x824]
5635E2:  ADD             R0, PC; dword_A01FA8
5635E4:  LDRB.W          R4, [R11,#0x671]
5635E8:  STR             R1, [R0,#(dword_A01FAC - 0xA01FA8)]
5635EA:  MOV             R1, R11
5635EC:  LDRD.W          R2, R3, [SP,#0x200+var_11C]
5635F0:  LDR             R0, [SP,#0x200+var_114]
5635F2:  STR             R0, [SP,#0x200+var_200]
5635F4:  ADD             R0, SP, #0x200+var_188
5635F6:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
5635FA:  VLDR            S0, =0.4
5635FE:  CMP             R4, #1
563600:  VLDR            D16, [SP,#0x200+var_188]
563604:  VMUL.F32        S0, S23, S0
563608:  LDR             R0, [SP,#0x200+var_180]
56360A:  IT EQ
56360C:  VMOVEQ.F32      S23, S0
563610:  STR             R0, [SP,#0x200+var_150]
563612:  ADD.W           R0, R11, R9,LSL#2
563616:  VSTR            D16, [SP,#0x200+var_158]
56361A:  LDR.W           R1, [R0,#0x7D4]
56361E:  CBZ             R1, loc_56366C
563620:  ADD.W           R0, R9, R9,LSL#1
563624:  ADD.W           R0, R11, R0,LSL#2
563628:  LDR.W           R2, [R0,#0x7E4]
56362C:  LDR.W           R3, [R0,#0x7E8]
563630:  LDR.W           R0, [R0,#0x7EC]
563634:  STR             R0, [SP,#0x200+var_200]
563636:  ADD             R0, SP, #0x200+var_188
563638:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
56363C:  VLDR            S0, [SP,#0x200+var_188]
563640:  VLDR            S6, [SP,#0x200+var_158]
563644:  VLDR            S2, [SP,#0x200+var_188+4]
563648:  VLDR            S8, [SP,#0x200+var_158+4]
56364C:  VSUB.F32        S0, S6, S0
563650:  VLDR            S10, [SP,#0x200+var_150]
563654:  VLDR            S4, [SP,#0x200+var_180]
563658:  VSUB.F32        S2, S8, S2
56365C:  VSUB.F32        S4, S10, S4
563660:  VSTR            S0, [SP,#0x200+var_158]
563664:  VSTR            S2, [SP,#0x200+var_158+4]
563668:  VSTR            S4, [SP,#0x200+var_150]
56366C:  LDR             R0, =(dword_A01FA4 - 0x56367C)
56366E:  VMUL.F32        S0, S30, S21
563672:  LDR             R1, =(dword_A01FA8 - 0x563682)
563674:  VMUL.F32        S4, S17, S23
563678:  ADD             R0, PC; dword_A01FA4
56367A:  ADD.W           R3, R11, #0x770
56367E:  ADD             R1, PC; dword_A01FA8
563680:  LDRB.W          R2, [R11,#0x671]
563684:  VLDR            S2, [R0]
563688:  MOVS            R0, #1
56368A:  STRD.W          R0, R3, [SP,#0x200+var_1E8]; int
56368E:  ADDS            R1, #4
563690:  STRD.W          R1, R0, [SP,#0x200+var_1E0]; int
563694:  MOVS            R0, #2
563696:  LDR             R1, [SP,#0x200+var_1A8]
563698:  ADD             R3, SP, #0x200+var_158; int
56369A:  STR             R2, [SP,#0x200+var_1D8]; int
56369C:  ADD             R2, SP, #0x200+var_178; int
56369E:  VSTR            S19, [SP,#0x200+var_1EC]
5636A2:  VSTR            S2, [SP,#0x200+var_1F8]
5636A6:  STRD.W          R1, R0, [SP,#0x200+var_200]; int
5636AA:  ADD             R1, SP, #0x200+var_168; int
5636AC:  MOV             R0, R11; int
5636AE:  VSTR            S4, [SP,#0x200+var_1F0]
5636B2:  VSTR            S0, [SP,#0x200+var_1F4]
5636B6:  BLX             j__ZN8CVehicle16ProcessBikeWheelER7CVectorS1_S1_S1_iffffcPfP11tWheelState17eBikeWheelSpecialt; CVehicle::ProcessBikeWheel(CVector &,CVector &,CVector &,CVector &,int,float,float,float,float,char,float *,tWheelState *,eBikeWheelSpecial,ushort)
5636BA:  LDRB.W          R0, [SP,#0x200+var_64]
5636BE:  LSLS            R0, R0, #0x1D
5636C0:  BPL.W           loc_5637FE
5636C4:  LDR             R0, =(dword_A01FA8 - 0x5636CA)
5636C6:  ADD             R0, PC; dword_A01FA8
5636C8:  LDR             R0, [R0,#(dword_A01FAC - 0xA01FA8)]
5636CA:  SUBS            R0, #1
5636CC:  CMP             R0, #1
5636CE:  BHI.W           loc_5637FE
5636D2:  LDR             R0, =(dword_A01FA8 - 0x5636DA)
5636D4:  MOVS            R1, #0
5636D6:  ADD             R0, PC; dword_A01FA8
5636D8:  STR             R1, [R0,#(dword_A01FAC - 0xA01FA8)]
5636DA:  B               loc_5637FE
5636DC:  LDR             R0, [SP,#0x200+var_1A0]
5636DE:  LDRB            R0, [R0]
5636E0:  LSLS            R0, R0, #0x1A
5636E2:  BMI             loc_5637CC
5636E4:  VCMP.F32        S19, #0.0
5636E8:  ADD.W           R0, R11, #0x770
5636EC:  VMRS            APSR_nzcv, FPSCR
5636F0:  BEQ             loc_5637D8
5636F2:  LDR             R5, [SP,#0x200+var_198]
5636F4:  VCMPE.F32       S19, #0.0
5636F8:  VLDR            S0, [R0]
5636FC:  VMRS            APSR_nzcv, FPSCR
563700:  BLE.W           loc_564596
563704:  VMOV.F32        S2, #1.0
563708:  LDR             R6, [SP,#0x200+var_1B8]
56370A:  VCMPE.F32       S0, S2
56370E:  VMRS            APSR_nzcv, FPSCR
563712:  BGE             loc_5637E0
563714:  VLDR            S2, =-0.1
563718:  B.W             loc_5645AC
56371C:  VMOV.F32        S0, #1.0
563720:  ADD.W           R0, R11, #0x7C0
563724:  VMOV.F32        S21, S20
563728:  VMOV.F32        S23, S28
56372C:  VLDR            S25, [R0]
563730:  VCMPE.F32       S25, S0
563734:  VMRS            APSR_nzcv, FPSCR
563738:  BGE.W           loc_56352E
56373C:  VMOV.F32        S2, #0.75
563740:  LDR             R0, [SP,#0x200+var_1BC]
563742:  VMOV.F32        S21, S20
563746:  VMOV.F32        S23, S28
56374A:  VLDR            S4, [R0]
56374E:  VCMPE.F32       S4, S2
563752:  VMRS            APSR_nzcv, FPSCR
563756:  BLE.W           loc_56352E
56375A:  VSUB.F32        S0, S0, S25
56375E:  ADD.W           R0, R11, #0x498
563762:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x563772)
563764:  ADD             R3, SP, #0x200+var_F0
563766:  VLDR            S2, [R0]
56376A:  LDR.W           R0, [R11,#0x14]
56376E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
563770:  VLDR            S4, [R0,#4]
563774:  VMUL.F32        S0, S0, S2
563778:  VLDR            S2, [R11,#0x94]
56377C:  VLDR            S6, [R0,#8]
563780:  VMUL.F32        S0, S0, S2
563784:  VLDR            S2, =-0.0007
563788:  VMUL.F32        S0, S0, S2
56378C:  VLDR            S2, [R0]
563790:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
563792:  VMUL.F32        S6, S0, S6
563796:  VMUL.F32        S4, S0, S4
56379A:  VMUL.F32        S0, S2, S0
56379E:  VLDR            S2, [R0]
5637A2:  LDM             R3, {R1-R3}
5637A4:  MOV             R0, R11
5637A6:  VMUL.F32        S6, S6, S2
5637AA:  VMUL.F32        S4, S4, S2
5637AE:  VMUL.F32        S0, S0, S2
5637B2:  VSTR            S0, [SP,#0x200+var_200]
5637B6:  VSTR            S4, [SP,#0x200+var_1FC]
5637BA:  VSTR            S6, [SP,#0x200+var_1F8]
5637BE:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5637C2:  VMUL.F32        S23, S28, S25
5637C6:  VMOV.F32        S21, S20
5637CA:  B               loc_56352E
5637CC:  MOVS            R0, #0
5637CE:  VLDR            S0, =0.0
5637D2:  STR.W           R0, [R11,#0x770]
5637D6:  B               loc_5637DC
5637D8:  VLDR            S0, [R0]
5637DC:  LDR             R6, [SP,#0x200+var_1B8]
5637DE:  LDR             R5, [SP,#0x200+var_198]
5637E0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5637E6)
5637E2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5637E4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5637E6:  VLDR            S2, [R0]
5637EA:  ADD.W           R0, R11, #0x768
5637EE:  VMUL.F32        S0, S0, S2
5637F2:  VLDR            S2, [R0]
5637F6:  VADD.F32        S0, S2, S0
5637FA:  VSTR            S0, [R0]
5637FE:  LDRH.W          R0, [R11,#0x7BC]
563802:  CMP             R0, #0
563804:  BEQ             loc_5638A0
563806:  LDR.W           R0, [R11,#0x824]
56380A:  CMP             R0, #1
56380C:  BNE             loc_5638A0
56380E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x563818)
563810:  VLDR            S0, =-0.002
563814:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
563816:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
563818:  VLDR            S2, [R0]
56381C:  ADD.W           R0, R11, #0x7C0
563820:  VMUL.F32        S0, S2, S0
563824:  VLDR            S2, [R0]
563828:  VADD.F32        S0, S2, S0
56382C:  VCMPE.F32       S0, #0.0
563830:  VSTR            S0, [R0]
563834:  VMRS            APSR_nzcv, FPSCR
563838:  ITT LT
56383A:  MOVLT           R1, #0
56383C:  STRLT           R1, [R0]
56383E:  CMP             R5, #0
563840:  BNE             loc_5638D8
563842:  B               loc_563B82
563844:  DCFS -0.0007
563848:  DCFS 0.0
56384C:  DCFS 20000.0
563850:  DCD dword_A01FA4 - 0x56353C
563854:  DCD g_surfaceInfos_ptr - 0x563542
563858:  DCD g_surfaceInfos_ptr - 0x563596
56385C:  DCFS 0.7
563860:  DCD g_surfaceInfos_ptr - 0x5635CC
563864:  DCD dword_A01FA8 - 0x5635E6
563868:  DCFS 0.4
56386C:  DCD dword_A01FA4 - 0x56367C
563870:  DCD dword_A01FA8 - 0x563682
563874:  DCD dword_A01FA8 - 0x5636CA
563878:  DCD dword_A01FA8 - 0x5636DA
56387C:  DCFS -0.1
563880:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x563772
563884:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5637E6
563888:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x563818
56388C:  DCFS -0.002
563890:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5638C2
563894:  DCFS 0.005
563898:  DCFS 0.95
56389C:  DCFS 0.17453
5638A0:  VMOV.F32        S2, #1.0
5638A4:  ADD.W           R0, R11, #0x7C0
5638A8:  VLDR            S0, [R0]
5638AC:  VCMPE.F32       S0, S2
5638B0:  VMRS            APSR_nzcv, FPSCR
5638B4:  BGE             loc_5638D2
5638B6:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5638C2)
5638BA:  VLDR            S2, =0.005
5638BE:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5638C0:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5638C2:  VLDR            S4, [R1]
5638C6:  VMUL.F32        S2, S4, S2
5638CA:  VADD.F32        S0, S0, S2
5638CE:  VSTR            S0, [R0]
5638D2:  CMP             R5, #0
5638D4:  BEQ.W           loc_563B82
5638D8:  LDR             R0, [SP,#0x200+var_19C]
5638DA:  VLDR            S0, [R0]
5638DE:  VCMPE.F32       S0, #0.0
5638E2:  VMRS            APSR_nzcv, FPSCR
5638E6:  BGT             loc_5638FC
5638E8:  ADD.W           R0, R11, #0x748
5638EC:  VLDR            S0, [R0]
5638F0:  VCMPE.F32       S0, #0.0
5638F4:  VMRS            APSR_nzcv, FPSCR
5638F8:  BLE.W           loc_563B4E
5638FC:  LDR.W           R5, [R11,#0x658]
563900:  MOV             R0, R5; x
563902:  BLX             cosf
563906:  LDR.W           R6, [R11,#0x14]
56390A:  STR             R0, [SP,#0x200+var_188+4]
56390C:  MOV             R0, R5; x
56390E:  BLX             sinf
563912:  EOR.W           R0, R0, #0x80000000
563916:  STR             R0, [SP,#0x200+var_188]
563918:  ADD             R0, SP, #0x200+var_178; CMatrix *
56391A:  ADD             R2, SP, #0x200+var_188
56391C:  MOV             R4, R10
56391E:  MOV.W           R10, #0
563922:  MOV             R1, R6; CVector *
563924:  STR.W           R10, [SP,#0x200+var_180]
563928:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
56392C:  MOVS            R0, #0x2C ; ','
56392E:  VLDR            D16, [SP,#0x200+var_178]
563932:  SMLABB.W        R4, R4, R0, R11
563936:  LDR             R0, [SP,#0x200+var_170]
563938:  STR             R0, [SP,#0x200+var_160]
56393A:  ADD             R6, SP, #0x200+var_168
56393C:  VSTR            D16, [SP,#0x200+var_168]
563940:  VLDR            S0, [SP,#0x200+var_168]
563944:  ADD.W           R0, R4, #0x688
563948:  ADDW            R5, R4, #0x684
56394C:  VLDR            S2, [SP,#0x200+var_168+4]
563950:  VLDR            S6, [R0]
563954:  ADDW            R0, R4, #0x68C
563958:  VLDR            S8, [R5]
56395C:  VMUL.F32        S10, S2, S6
563960:  VLDR            S14, [R0]
563964:  VMUL.F32        S12, S0, S8
563968:  VLDR            S4, [SP,#0x200+var_160]
56396C:  MOV             R0, R6; this
56396E:  VMUL.F32        S1, S4, S14
563972:  VADD.F32        S10, S12, S10
563976:  VADD.F32        S10, S10, S1
56397A:  VMUL.F32        S8, S8, S10
56397E:  VMUL.F32        S6, S6, S10
563982:  VMUL.F32        S10, S14, S10
563986:  VSUB.F32        S0, S0, S8
56398A:  VSUB.F32        S2, S2, S6
56398E:  VSUB.F32        S4, S4, S10
563992:  VSTR            S0, [SP,#0x200+var_168]
563996:  VSTR            S2, [SP,#0x200+var_168+4]
56399A:  VSTR            S4, [SP,#0x200+var_160]
56399E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5639A2:  ADD             R0, SP, #0x200+var_188; CVector *
5639A4:  MOV             R1, R6; CVector *
5639A6:  MOV             R2, R5
5639A8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5639AC:  LDR             R0, [SP,#0x200+var_180]
5639AE:  STR             R0, [SP,#0x200+var_170]
5639B0:  ADD             R0, SP, #0x200+var_178; this
5639B2:  VLDR            D16, [SP,#0x200+var_188]
5639B6:  VSTR            D16, [SP,#0x200+var_178]
5639BA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5639BE:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x5639CA)
5639C2:  LDR.W           R1, =(dword_A01FA4 - 0x5639CC)
5639C6:  ADD             R0, PC; g_surfaceInfos_ptr
5639C8:  ADD             R1, PC; dword_A01FA4
5639CA:  LDR             R0, [R0]; g_surfaceInfos
5639CC:  STR.W           R10, [R1]
5639D0:  MOVS            R1, #0x3C ; '<'
5639D2:  STRB.W          R1, [R4,#0x694]
5639D6:  ADDW            R1, R4, #0x674
5639DA:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
5639DE:  VMOV            S17, R0
5639E2:  ADDW            R0, R11, #0x7C4
5639E6:  VLDR            S0, [R0]
5639EA:  VCMPE.F32       S0, #0.0
5639EE:  VMRS            APSR_nzcv, FPSCR
5639F2:  BLE             loc_563A18
5639F4:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x563A00)
5639F8:  LDRB.W          R1, [R4,#0x697]; unsigned int
5639FC:  ADD             R0, PC; g_surfaceInfos_ptr
5639FE:  LDR             R0, [R0]; g_surfaceInfos ; this
563A00:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
563A04:  SUBS            R0, #1
563A06:  VLDR            S0, =0.7
563A0A:  VMOV.F32        S30, #1.0
563A0E:  CMP             R0, #3
563A10:  IT CC
563A12:  VMOVCC.F32      S30, S0
563A16:  B               loc_563A1C
563A18:  VMOV.F32        S30, #1.0
563A1C:  VMUL.F32        S28, S28, S17
563A20:  LDRB.W          R0, [R11,#0x3A]
563A24:  LDR             R6, [SP,#0x200+var_1B8]
563A26:  LDR             R5, [SP,#0x200+var_194]
563A28:  CMP             R0, #7
563A2A:  BHI             loc_563A4A
563A2C:  MOVS            R0, #0x2C ; ','
563A2E:  LDR.W           R2, =(g_surfaceInfos_ptr - 0x563A3A)
563A32:  SMLABB.W        R0, R5, R0, R11
563A36:  ADD             R2, PC; g_surfaceInfos_ptr
563A38:  LDRB.W          R1, [R0,#0x697]; unsigned int
563A3C:  LDR             R0, [R2]; g_surfaceInfos ; this
563A3E:  BLX             j__ZN14SurfaceInfos_c16GetWetMultiplierEj; SurfaceInfos_c::GetWetMultiplier(uint)
563A42:  VMOV            S0, R0
563A46:  VMUL.F32        S28, S28, S0
563A4A:  LDR.W           R0, =(dword_A01FA8 - 0x563A56)
563A4E:  LDR.W           R1, [R11,#0x820]
563A52:  ADD             R0, PC; dword_A01FA8
563A54:  LDRB.W          R4, [R11,#0x670]
563A58:  STR             R1, [R0]
563A5A:  MOV             R1, R11
563A5C:  LDRD.W          R2, R3, [SP,#0x200+var_128]
563A60:  LDR             R0, [SP,#0x200+var_120]
563A62:  STR             R0, [SP,#0x200+var_200]
563A64:  ADD             R0, SP, #0x200+var_188
563A66:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
563A6A:  VLDR            S0, =0.4
563A6E:  CMP             R4, #1
563A70:  VLDR            D16, [SP,#0x200+var_188]
563A74:  VMUL.F32        S0, S28, S0
563A78:  LDR             R0, [SP,#0x200+var_180]
563A7A:  IT EQ
563A7C:  VMOVEQ.F32      S28, S0
563A80:  STR             R0, [SP,#0x200+var_150]
563A82:  ADD.W           R0, R11, R5,LSL#2
563A86:  VSTR            D16, [SP,#0x200+var_158]
563A8A:  LDR.W           R1, [R0,#0x7D4]
563A8E:  CBZ             R1, loc_563ADC
563A90:  ADD.W           R0, R5, R5,LSL#1
563A94:  ADD.W           R0, R11, R0,LSL#2
563A98:  LDR.W           R2, [R0,#0x7E4]
563A9C:  LDR.W           R3, [R0,#0x7E8]
563AA0:  LDR.W           R0, [R0,#0x7EC]
563AA4:  STR             R0, [SP,#0x200+var_200]
563AA6:  ADD             R0, SP, #0x200+var_188
563AA8:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
563AAC:  VLDR            S0, [SP,#0x200+var_188]
563AB0:  VLDR            S6, [SP,#0x200+var_158]
563AB4:  VLDR            S2, [SP,#0x200+var_188+4]
563AB8:  VLDR            S8, [SP,#0x200+var_158+4]
563ABC:  VSUB.F32        S0, S6, S0
563AC0:  VLDR            S10, [SP,#0x200+var_150]
563AC4:  VLDR            S4, [SP,#0x200+var_180]
563AC8:  VSUB.F32        S2, S8, S2
563ACC:  VSUB.F32        S4, S10, S4
563AD0:  VSTR            S0, [SP,#0x200+var_158]
563AD4:  VSTR            S2, [SP,#0x200+var_158+4]
563AD8:  VSTR            S4, [SP,#0x200+var_150]
563ADC:  LDR.W           R0, =(dword_A01FA4 - 0x563AF0)
563AE0:  VMUL.F32        S0, S18, S20
563AE4:  VMUL.F32        S4, S16, S28
563AE8:  LDR.W           R1, =(dword_A01FA8 - 0x563AF6)
563AEC:  ADD             R0, PC; dword_A01FA4
563AEE:  ADDW            R3, R11, #0x76C
563AF2:  ADD             R1, PC; dword_A01FA8
563AF4:  LDRB.W          R2, [R11,#0x670]
563AF8:  VLDR            S2, [R0]
563AFC:  MOVS            R0, #0
563AFE:  STRD.W          R0, R3, [SP,#0x200+var_1E8]; int
563B02:  ADD             R3, SP, #0x200+var_158; int
563B04:  STRD.W          R1, R0, [SP,#0x200+var_1E0]; int
563B08:  MOVS            R0, #2
563B0A:  ADD             R1, SP, #0x200+var_128
563B0C:  STR             R2, [SP,#0x200+var_1D8]; int
563B0E:  VSTR            S30, [SP,#0x200+var_1EC]
563B12:  ADD             R2, SP, #0x200+var_178; int
563B14:  VSTR            S2, [SP,#0x200+var_1F8]
563B18:  STRD.W          R1, R0, [SP,#0x200+var_200]; int
563B1C:  ADD             R1, SP, #0x200+var_168; int
563B1E:  MOV             R0, R11; int
563B20:  VSTR            S4, [SP,#0x200+var_1F0]
563B24:  VSTR            S0, [SP,#0x200+var_1F4]
563B28:  BLX             j__ZN8CVehicle16ProcessBikeWheelER7CVectorS1_S1_S1_iffffcPfP11tWheelState17eBikeWheelSpecialt; CVehicle::ProcessBikeWheel(CVector &,CVector &,CVector &,CVector &,int,float,float,float,float,char,float *,tWheelState *,eBikeWheelSpecial,ushort)
563B2C:  LDRB.W          R0, [SP,#0x200+var_64]
563B30:  LSLS            R0, R0, #0x1D
563B32:  BPL             loc_563B82
563B34:  LDR.W           R0, =(dword_A01FA8 - 0x563B3C)
563B38:  ADD             R0, PC; dword_A01FA8
563B3A:  LDR             R0, [R0]
563B3C:  SUBS            R0, #1
563B3E:  CMP             R0, #1
563B40:  BHI             loc_563B82
563B42:  LDR.W           R0, =(dword_A01FA8 - 0x563B4C)
563B46:  MOVS            R1, #0
563B48:  ADD             R0, PC; dword_A01FA8
563B4A:  STR             R1, [R0]
563B4C:  B               loc_563B82
563B4E:  ADDW            R0, R11, #0x76C
563B52:  VLDR            S0, =0.95
563B56:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x563B62)
563B5A:  VLDR            S2, [R0]
563B5E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
563B60:  VMUL.F32        S0, S2, S0
563B64:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
563B66:  VSTR            S0, [R0]
563B6A:  ADDW            R0, R11, #0x764
563B6E:  VLDR            S2, [R1]
563B72:  VMUL.F32        S0, S0, S2
563B76:  VLDR            S2, [R0]
563B7A:  VADD.F32        S0, S2, S0
563B7E:  VSTR            S0, [R0]
563B82:  VMOV.I32        Q8, #0
563B86:  LDR             R0, [SP,#0x200+var_1B0]
563B88:  VLDR            S16, =0.0
563B8C:  VST1.32         {D16-D17}, [R0]
563B90:  LDR.W           R0, [R11,#0x464]
563B94:  CBZ             R0, loc_563BAE
563B96:  LDR             R0, [R0,#0x18]
563B98:  MOVS            R1, #0xC3
563B9A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
563B9E:  CMP             R0, #0
563BA0:  ITTT NE
563BA2:  VLDRNE          S0, =0.17453
563BA6:  VLDRNE          S2, [R0,#0x18]
563BAA:  VMULNE.F32      S16, S2, S0
563BAE:  CMP             R6, #1
563BB0:  BNE             loc_563C00
563BB2:  MOVS            R0, #0
563BB4:  ADD             R5, SP, #0x200+var_168
563BB6:  STR.W           R0, [R11,#0x62C]
563BBA:  MOV             R2, R8
563BBC:  LDR             R1, [SP,#0x200+var_1D0]
563BBE:  STR             R0, [R1]
563BC0:  MOV.W           R0, #0x3F800000
563BC4:  LDR             R1, [SP,#0x200+var_190]
563BC6:  STR             R0, [R1]
563BC8:  LDR.W           R0, [R11,#0x14]
563BCC:  ADD.W           R1, R0, #0x10; CVector *
563BD0:  MOV             R0, R5; CVector *
563BD2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
563BD6:  MOV             R0, R5; this
563BD8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
563BDC:  LDR.W           R0, [R11,#0x14]
563BE0:  MOV             R1, R5; CVector *
563BE2:  ADD.W           R2, R0, #0x10
563BE6:  ADD             R0, SP, #0x200+var_178; CVector *
563BE8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
563BEC:  VLDR            D16, [SP,#0x200+var_178]
563BF0:  LDR             R0, [SP,#0x200+var_170]
563BF2:  STR.W           R0, [R8,#8]
563BF6:  MOV             R0, R8; this
563BF8:  VSTR            D16, [R8]
563BFC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
563C00:  LDRB.W          R0, [SP,#0x200+var_64]
563C04:  LSLS            R0, R0, #0x1E
563C06:  BMI             loc_563C44
563C08:  LDRB.W          R0, [R11,#0x628]
563C0C:  TST.W           R0, #8
563C10:  BNE             loc_563C44
563C12:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x563C1C)
563C16:  LSLS            R0, R0, #0x1B
563C18:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
563C1A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
563C1C:  VLDR            S0, [R1]
563C20:  VMOV            R1, S0; y
563C24:  BMI             loc_563CA0
563C26:  MOV             R0, #0x3F733333; x
563C2E:  BLX             powf
563C32:  ADD.W           R4, R11, #0x660
563C36:  VMOV            S2, R0
563C3A:  VLDR            S0, [R4]
563C3E:  VMUL.F32        S0, S2, S0
563C42:  B               loc_563E36
563C44:  LDR.W           R0, [R11,#0x14]
563C48:  MOV             R2, R8
563C4A:  ADD.W           R1, R0, #0x10; CVector *
563C4E:  ADD             R0, SP, #0x200+var_168; CVector *
563C50:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
563C54:  ADD.W           R5, R11, #0x638
563C58:  VLDR            D16, [SP,#0x200+var_168]
563C5C:  LDR             R0, [SP,#0x200+var_160]
563C5E:  STR.W           R0, [R11,#0x640]
563C62:  MOV             R0, R5; this
563C64:  VSTR            D16, [R5]
563C68:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
563C6C:  LDR.W           R0, [R11,#0x100]
563C70:  CBZ             R0, loc_563C78
563C72:  VLDR            S2, =0.0
563C76:  B               loc_563D88
563C78:  LDRB.W          R0, [R11,#0x818]
563C7C:  CBZ             R0, loc_563CEA
563C7E:  LDRB.W          R0, [R11,#0x44]
563C82:  LSLS            R0, R0, #0x1D
563C84:  BMI             loc_563D30
563C86:  VLDR            S4, [R11,#0x48]
563C8A:  VLDR            S2, [R11,#0x4C]
563C8E:  VLDR            S0, [R11,#0x50]
563C92:  VSUB.F32        S4, S4, S22
563C96:  VSUB.F32        S2, S2, S24
563C9A:  VSUB.F32        S0, S0, S26
563C9E:  B               loc_563D60
563CA0:  MOV             R0, #0x3F7851EC; x
563CA8:  BLX             powf
563CAC:  MOV             R5, R0
563CAE:  LDR.W           R0, [R11,#0x14]
563CB2:  ADD.W           R4, R11, #0x660
563CB6:  LDR             R0, [R0,#8]; x
563CB8:  VLDR            S18, [R4]
563CBC:  BLX             asinf
563CC0:  VLDR            S0, =0.2618
563CC4:  VMOV            S2, R0
563CC8:  VMOV            S4, R5
563CCC:  VADD.F32        S0, S2, S0
563CD0:  VMOV.F32        S2, #1.0
563CD4:  VADD.F32        S0, S16, S0
563CD8:  VSUB.F32        S2, S2, S4
563CDC:  VMUL.F32        S4, S4, S18
563CE0:  VMUL.F32        S0, S2, S0
563CE4:  VSUB.F32        S0, S4, S0
563CE8:  B               loc_563E36
563CEA:  LDR.W           R0, [R11,#0x388]
563CEE:  VLDR            S0, =3.1416
563CF2:  VLDR            S2, [R0,#0xA0]
563CF6:  ADD.W           R0, R11, #0x498
563CFA:  VMUL.F32        S0, S2, S0
563CFE:  VLDR            S2, =180.0
563D02:  VDIV.F32        S0, S0, S2
563D06:  VLDR            S2, [R0]
563D0A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x563D16)
563D0E:  VDIV.F32        S0, S2, S0
563D12:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
563D14:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
563D16:  VMOV.F32        S2, #-0.5
563D1A:  VMUL.F32        S0, S0, S2
563D1E:  VLDR            S2, =0.008
563D22:  VMUL.F32        S2, S0, S2
563D26:  VLDR            S0, [R0]
563D2A:  VMUL.F32        S2, S0, S2
563D2E:  B               loc_563D94
563D30:  ADDW            R0, R11, #0x644
563D34:  ADDW            R1, R11, #0x64C
563D38:  ADD.W           R2, R11, #0x648
563D3C:  VLDR            S0, [R1]
563D40:  VLDR            S2, [R2]
563D44:  VLDR            S4, [R0]
563D48:  VSUB.F32        S0, S26, S0
563D4C:  VSTR            S26, [R1]
563D50:  VSUB.F32        S2, S24, S2
563D54:  VSTR            S22, [R0]
563D58:  VSUB.F32        S4, S22, S4
563D5C:  VSTR            S24, [R2]
563D60:  ADDW            R0, R11, #0x63C
563D64:  VLDR            S6, [R5]
563D68:  VLDR            S8, [R0]
563D6C:  VMUL.F32        S4, S4, S6
563D70:  ADD.W           R0, R11, #0x640
563D74:  VMUL.F32        S2, S2, S8
563D78:  VLDR            S6, [R0]
563D7C:  VMUL.F32        S0, S0, S6
563D80:  VADD.F32        S2, S4, S2
563D84:  VADD.F32        S2, S2, S0
563D88:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x563D90)
563D8C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
563D8E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
563D90:  VLDR            S0, [R0]
563D94:  VLDR            S6, =0.01
563D98:  VLDR            S4, =0.008
563D9C:  VMAX.F32        D3, D0, D3
563DA0:  LDR.W           R0, [R11,#0x650]
563DA4:  LDRB.W          R1, [R11,#0x670]
563DA8:  CMP             R1, #1
563DAA:  VMUL.F32        S4, S6, S4
563DAE:  VDIV.F32        S2, S2, S4
563DB2:  VLDR            S4, [R0,#0x14]
563DB6:  BNE             loc_563DD4
563DB8:  VLDR            S6, =0.4
563DBC:  VMUL.F32        S18, S4, S6
563DC0:  VCMPE.F32       S2, S18
563DC4:  VMRS            APSR_nzcv, FPSCR
563DC8:  BGT             loc_563DFA
563DCA:  VLDR            S6, =-0.4
563DCE:  VMUL.F32        S4, S4, S6
563DD2:  B               loc_563DE8
563DD4:  VCMPE.F32       S2, S4
563DD8:  VMRS            APSR_nzcv, FPSCR
563DDC:  BLE             loc_563DE4
563DDE:  VMOV.F32        S18, S4
563DE2:  B               loc_563DFA
563DE4:  VNEG.F32        S4, S4
563DE8:  VCMPE.F32       S2, S4
563DEC:  VMRS            APSR_nzcv, FPSCR
563DF0:  VMOV.F32        S18, S2
563DF4:  IT LT
563DF6:  VMOVLT.F32      S18, S4
563DFA:  VMOV            R1, S0; y
563DFE:  LDR             R0, [R0,#0x1C]; x
563E00:  BLX             powf
563E04:  MOV             R5, R0
563E06:  VMOV            R0, S18; x
563E0A:  ADD.W           R4, R11, #0x660
563E0E:  VLDR            S18, [R4]
563E12:  BLX             asinf
563E16:  VMOV.F32        S0, #1.0
563E1A:  VMOV            S2, R0
563E1E:  VMOV            S4, R5
563E22:  VSUB.F32        S2, S2, S16
563E26:  VSUB.F32        S0, S0, S4
563E2A:  VMUL.F32        S4, S4, S18
563E2E:  VMUL.F32        S0, S0, S2
563E32:  VADD.F32        S0, S4, S0
563E36:  LDR.W           R0, =(dword_A01FA8 - 0x563E46)
563E3A:  ADDW            R1, R11, #0x65C
563E3E:  VSTR            S0, [R4]
563E42:  ADD             R0, PC; dword_A01FA8
563E44:  VSTR            S0, [R1]
563E48:  LDRD.W          R1, R0, [R0]
563E4C:  CMP             R0, #1
563E4E:  LDRB.W          R2, [R11,#0x3A]
563E52:  STR.W           R1, [R11,#0x820]
563E56:  STR.W           R0, [R11,#0x824]
563E5A:  LDR             R1, [SP,#0x200+var_1BC]
563E5C:  VLDR            S0, [R1]
563E60:  MOV             R1, R0
563E62:  IT EQ
563E64:  MOVEQ           R1, #0
563E66:  VCMPE.F32       S0, #0.0
563E6A:  VMRS            APSR_nzcv, FPSCR
563E6E:  IT GE
563E70:  MOVGE           R1, R0
563E72:  CMP             R2, #7
563E74:  STR.W           R1, [R11,#0x824]
563E78:  BHI             loc_563E84
563E7A:  MOV             R0, R11; this
563E7C:  MOVS            R1, #1; bool
563E7E:  BLX             j__ZN8CVehicle19ProcessSirenAndHornEb; CVehicle::ProcessSirenAndHorn(bool)
563E82:  B               loc_563E92
563E84:  LDR.W           R0, [R11,#0x524]
563E88:  CMP             R0, #0
563E8A:  ITT NE
563E8C:  SUBNE           R0, #1
563E8E:  STRNE.W         R0, [R11,#0x524]
563E92:  ADDW            R0, R11, #0x4CC
563E96:  VLDR            S24, =250.0
563E9A:  VLDR            S0, [R0]
563E9E:  VCMPE.F32       S0, S24
563EA2:  VMRS            APSR_nzcv, FPSCR
563EA6:  BGE             loc_563EB4
563EA8:  LDRB.W          R0, [R11,#0x3A]
563EAC:  AND.W           R0, R0, #0xF8
563EB0:  CMP             R0, #0x28 ; '('
563EB2:  BNE             loc_563F30
563EB4:  LDR.W           R0, [R11,#0x58C]; this
563EB8:  MOVS            R4, #0
563EBA:  STR.W           R4, [R11,#0x7D0]
563EBE:  CMP             R0, #0
563EC0:  BEQ.W           loc_563FFC
563EC4:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
563EC8:  STR.W           R4, [R11,#0x58C]
563ECC:  B               loc_563FFC
563ECE:  ALIGN 0x10
563ED0:  DCFS 0.0
563ED4:  DCFS 0.2618
563ED8:  DCFS 3.1416
563EDC:  DCFS 180.0
563EE0:  DCFS 0.008
563EE4:  DCFS 0.01
563EE8:  DCFS 0.4
563EEC:  DCFS -0.4
563EF0:  DCFS 250.0
563EF4:  DCFS 50.0
563EF8:  DCFS 1000.0
563EFC:  DCFS 5000.0
563F00:  DCFS 0.04
563F04:  DCFS 0.3
563F08:  DCFS 0.1
563F0C:  DCFS 0.29
563F10:  DCFS 0.01
563F14:  DCFS 200.0
563F18:  DCFS 20000.0
563F1C:  DCFS 2000.0
563F20:  DCFS 100.0
563F24:  DCFS 150.0
563F28:  DCFS 40.0
563F2C:  DCFS 0.005
563F30:  LDR.W           R0, [R11,#0x5A4]
563F34:  CMP             R0, #0xA
563F36:  ITT NE
563F38:  LDRNE.W         R0, [R11,#0x18]
563F3C:  CMPNE           R0, #0
563F3E:  BEQ             loc_563FA8
563F40:  LDR.W           R1, [R11,#0x58C]
563F44:  CBNZ            R1, loc_563FA8
563F46:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x563F52)
563F4A:  LDRSH.W         R2, [R11,#0x26]
563F4E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
563F50:  LDR.W           R3, =(g_fxMan_ptr - 0x563F5A)
563F54:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
563F56:  ADD             R3, PC; g_fxMan_ptr
563F58:  LDR.W           R1, [R1,R2,LSL#2]
563F5C:  LDR             R2, [R0,#4]
563F5E:  LDR             R0, [R3]; g_fxMan ; int
563F60:  LDR             R1, [R1,#0x74]
563F62:  ADD.W           R3, R2, #0x10; int
563F66:  LDR             R2, [R1,#0x5C]
563F68:  VLDR            D16, [R1,#0x54]
563F6C:  ADR.W           R1, aFireBike_0; "fire_bike"
563F70:  STR             R2, [SP,#0x200+var_D0]
563F72:  MOVS            R2, #0
563F74:  STR             R2, [SP,#0x200+var_200]; int
563F76:  ADD             R2, SP, #0x200+var_D8; int
563F78:  VSTR            D16, [SP,#0x200+var_D8]
563F7C:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
563F80:  CMP             R0, #0
563F82:  STR.W           R0, [R11,#0x58C]
563F86:  BEQ             loc_563FA8
563F88:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
563F8C:  ADD             R5, SP, #0x200+var_A4
563F8E:  MOV             R1, R11; CVehicle *
563F90:  MOV             R0, R5; this
563F92:  BLX             j__ZN19CEventVehicleOnFireC2EP8CVehicle; CEventVehicleOnFire::CEventVehicleOnFire(CVehicle *)
563F96:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
563F9A:  MOV             R1, R5; CEvent *
563F9C:  MOVS            R2, #0; bool
563F9E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
563FA2:  MOV             R0, R5; this
563FA4:  BLX             j__ZN19CEventVehicleOnFireD2Ev; CEventVehicleOnFire::~CEventVehicleOnFire()
563FA8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x563FB4)
563FAC:  VLDR            S0, =50.0
563FB0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
563FB2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
563FB4:  VLDR            S2, [R0]
563FB8:  ADD.W           R0, R11, #0x7D0
563FBC:  VDIV.F32        S0, S2, S0
563FC0:  VLDR            S2, =1000.0
563FC4:  VMUL.F32        S0, S0, S2
563FC8:  VCVT.U32.F32    S0, S0
563FCC:  VCVT.F32.U32    S0, S0
563FD0:  VLDR            S2, [R0]
563FD4:  VADD.F32        S0, S2, S0
563FD8:  VLDR            S2, =5000.0
563FDC:  VCMPE.F32       S0, S2
563FE0:  VSTR            S0, [R0]
563FE4:  VMRS            APSR_nzcv, FPSCR
563FE8:  BLE             loc_563FFC
563FEA:  LDR.W           R0, [R11]
563FEE:  MOVS            R2, #0
563FF0:  LDR.W           R1, [R11,#0x814]
563FF4:  LDR.W           R3, [R0,#0xA8]
563FF8:  MOV             R0, R11
563FFA:  BLX             R3
563FFC:  MOV             R0, R11; this
563FFE:  BLX             j__ZN8CVehicle23ProcessDelayedExplosionEv; CVehicle::ProcessDelayedExplosion(void)
564002:  VLDR            S0, [R11,#0x48]
564006:  ADD.W           R0, R11, #0x48 ; 'H'
56400A:  VLDR            S2, [R11,#0x4C]
56400E:  VMOV.F32        S22, #1.0
564012:  VMUL.F32        S0, S0, S0
564016:  VLDR            S4, [R11,#0x50]
56401A:  VMUL.F32        S2, S2, S2
56401E:  VLDR            S26, =0.0
564022:  VMUL.F32        S4, S4, S4
564026:  STR             R0, [SP,#0x200+var_190]
564028:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x56403C)
56402C:  VMOV.F32        S28, S26
564030:  ADDW            R4, R11, #0x724
564034:  ADDW            R6, R11, #0x734
564038:  ADD             R0, PC; g_surfaceInfos_ptr
56403A:  VLDR            S30, =0.04
56403E:  VLDR            S18, =0.3
564042:  MOVS            R2, #0
564044:  LDR.W           R10, [R0]; g_surfaceInfos
564048:  MOV             R5, #0xFFFFFF50
56404C:  VADD.F32        S0, S0, S2
564050:  VLDR            S16, =0.1
564054:  MOV.W           R11, #0x3F800000
564058:  MOV.W           R9, #0
56405C:  VADD.F32        S20, S0, S4
564060:  ADD.W           R8, R4, R9
564064:  VCMPE.F32       S20, S30
564068:  VMRS            APSR_nzcv, FPSCR
56406C:  VLDR            S0, [R8]
564070:  BLE             loc_5640BA
564072:  CMP.W           R9, #0
564076:  BNE             loc_5640BA
564078:  ADD.W           R0, R6, R9
56407C:  VLDR            S2, [R0]
564080:  VSUB.F32        S2, S2, S0
564084:  VCMPE.F32       S2, S18
564088:  VMRS            APSR_nzcv, FPSCR
56408C:  BLE             loc_5640BA
56408E:  LDR             R0, [SP,#0x200+var_18C]
564090:  VCMPE.F32       S2, S28
564094:  LDRB.W          R0, [R0,#0x3A]
564098:  CMP.W           R2, R0,LSR#3
56409C:  BEQ             loc_5640B0
56409E:  VMRS            APSR_nzcv, FPSCR
5640A2:  BLE             loc_5640BA
5640A4:  LSRS            R0, R0, #3
5640A6:  CMP             R0, #3
5640A8:  IT EQ
5640AA:  VMOVEQ.F32      S28, S2
5640AE:  B               loc_5640BA
5640B0:  VMRS            APSR_nzcv, FPSCR
5640B4:  BLE             loc_5640BA
5640B6:  VMOV.F32        S28, S2
5640BA:  VMOV            R0, S0
5640BE:  VCMPE.F32       S0, S22
5640C2:  VMRS            APSR_nzcv, FPSCR
5640C6:  BGE             loc_5640F2
5640C8:  LDR             R1, [SP,#0x200+var_18C]
5640CA:  LDRB.W          R1, [R1,#0x3A]
5640CE:  CMP             R1, #7
5640D0:  BHI             loc_5640F2
5640D2:  ADDS            R0, R6, R5
5640D4:  LDRB            R1, [R0,#0x13]; unsigned int
5640D6:  MOV             R0, R10; this
5640D8:  BLX             j__ZN14SurfaceInfos_c12GetRoughnessEj; SurfaceInfos_c::GetRoughness(uint)
5640DC:  VMOV            S0, R0
5640E0:  MOVS            R2, #0
5640E2:  VCVT.F32.S32    S0, S0
5640E6:  LDR.W           R0, [R4,R9]
5640EA:  VMUL.F32        S0, S0, S16
5640EE:  VMAX.F32        D13, D13, D0
5640F2:  STR.W           R0, [R6,R9]
5640F6:  ADD.W           R9, R9, #4
5640FA:  ADDS            R5, #0x2C ; ','
5640FC:  CMP.W           R9, #0x10
564100:  STR.W           R11, [R8]
564104:  BNE             loc_564060
564106:  VLDR            S0, =0.29
56410A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56411E)
56410E:  VCMPE.F32       S26, S0
564112:  VLDR            S20, =0.0
564116:  VMRS            APSR_nzcv, FPSCR
56411A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56411C:  VMOV.F32        S0, S20
564120:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
564122:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
564124:  BFC.W           R0, #0xB, #0x15
564128:  IT LT
56412A:  VMOVLT.F32      S0, S28
56412E:  CMP.W           R0, #0x320
564132:  ITT HI
564134:  VMOVHI.F32      S28, S0
564138:  VMOVHI.F32      S26, S20
56413C:  LDR             R6, [SP,#0x200+var_18C]
56413E:  LDRD.W          R5, R4, [SP,#0x200+var_1A4]
564142:  VCMPE.F32       S28, #0.0
564146:  VMRS            APSR_nzcv, FPSCR
56414A:  ITT LE
56414C:  VCMPELE.F32     S26, #0.0
564150:  VMRSLE          APSR_nzcv, FPSCR
564154:  BLE             loc_564240
564156:  LDRB.W          R0, [R6,#0x3A]
56415A:  CMP             R0, #7
56415C:  BHI             loc_564240
56415E:  VLDR            S0, [R6,#0x48]
564162:  VLDR            S2, [R6,#0x4C]
564166:  VMUL.F32        S0, S0, S0
56416A:  VLDR            S4, [R6,#0x50]
56416E:  VMUL.F32        S2, S2, S2
564172:  VMUL.F32        S4, S4, S4
564176:  VADD.F32        S0, S0, S2
56417A:  VLDR            S2, =0.01
56417E:  VADD.F32        S0, S0, S4
564182:  VCMPE.F32       S0, S2
564186:  VMRS            APSR_nzcv, FPSCR
56418A:  BLE             loc_564240
56418C:  VSQRT.F32       S0, S0
564190:  VCMPE.F32       S28, #0.0
564194:  VLDR            S2, =200.0
564198:  VMRS            APSR_nzcv, FPSCR
56419C:  BLE             loc_5641D8
56419E:  VMUL.F32        S2, S28, S2
5641A2:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5641AE)
5641A6:  VLDR            S4, =20000.0
5641AA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5641AC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5641AE:  VMUL.F32        S0, S2, S0
5641B2:  VLDR            S2, =2000.0
5641B6:  VMUL.F32        S0, S0, S2
5641BA:  VLDR            S2, [R6,#0x90]
5641BE:  VDIV.F32        S0, S0, S2
5641C2:  VLDR            S2, =100.0
5641C6:  VADD.F32        S0, S0, S2
5641CA:  VLDR            S2, [R0]
5641CE:  VMUL.F32        S2, S2, S4
5641D2:  VMIN.F32        D0, D0, D12
5641D6:  B               loc_564214
5641D8:  VMUL.F32        S2, S26, S2
5641DC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5641E8)
5641E0:  VLDR            S4, =150.0
5641E4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5641E6:  VLDR            S6, =5000.0
5641EA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5641EC:  VMUL.F32        S0, S2, S0
5641F0:  VLDR            S2, =2000.0
5641F4:  VMUL.F32        S0, S0, S2
5641F8:  VLDR            S2, [R6,#0x90]
5641FC:  VDIV.F32        S0, S0, S2
564200:  VLDR            S2, =40.0
564204:  VADD.F32        S0, S0, S2
564208:  VLDR            S2, [R0]
56420C:  VMUL.F32        S2, S2, S6
564210:  VMIN.F32        D0, D0, D2
564214:  VCVT.U32.F32    S0, S0
564218:  VMOV            R8, S0
56421C:  VCVT.F32.U32    S0, S0
564220:  VDIV.F32        S0, S2, S0
564224:  VCVT.U32.F32    S0, S0
564228:  VMOV            R0, S0
56422C:  SXTH.W          R9, R0
564230:  MOVS            R0, #0; this
564232:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
564236:  MOV             R1, R9; __int16
564238:  MOV             R2, R8; unsigned __int8
56423A:  MOVS            R3, #0; unsigned int
56423C:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
564240:  LDR             R0, [R4]
564242:  TST.W           R0, #0x2000
564246:  BIC.W           R1, R0, #0x21000000; CVehicle *
56424A:  STR             R1, [R4]
56424C:  ITT EQ
56424E:  MOVEQ           R0, R6; this
564250:  BLXEQ           j__ZN8CCarCtrl16ScanForPedDangerEP8CVehicle; CCarCtrl::ScanForPedDanger(CVehicle *)
564254:  LDR             R0, [R6,#0x44]
564256:  AND.W           R0, R0, #0xC
56425A:  CMP             R0, #0xC
56425C:  BNE             loc_564276
56425E:  LDR             R1, [SP,#0x200+var_190]
564260:  VMOV.I32        Q8, #0
564264:  ADD.W           R0, R1, #0x20 ; ' '
564268:  VST1.32         {D16-D17}, [R0]
56426C:  VST1.32         {D16-D17}, [R1]!
564270:  VST1.32         {D16-D17}, [R1]
564274:  B               loc_5642FC
564276:  CMP             R5, #0
564278:  BNE             loc_5642FC
56427A:  ADD.W           R0, R6, #0x4A0
56427E:  VLDR            S0, [R0]
564282:  VCMP.F32        S0, #0.0
564286:  VMRS            APSR_nzcv, FPSCR
56428A:  BEQ             loc_564298
56428C:  LDRB.W          R0, [R6,#0x3A]
564290:  AND.W           R0, R0, #0xF8
564294:  CMP             R0, #0x28 ; '('
564296:  BNE             loc_5642FC
564298:  LDR             R0, [SP,#0x200+var_190]
56429A:  VLDR            S0, [R0]
56429E:  VABS.F32        S2, S0
5642A2:  VLDR            S0, =0.005
5642A6:  VCMPE.F32       S2, S0
5642AA:  VMRS            APSR_nzcv, FPSCR
5642AE:  BGE             loc_5642FC
5642B0:  VLDR            S2, [R6,#0x4C]
5642B4:  VABS.F32        S2, S2
5642B8:  VCMPE.F32       S2, S0
5642BC:  VMRS            APSR_nzcv, FPSCR
5642C0:  BGE             loc_5642FC
5642C2:  VLDR            S2, [R6,#0x50]
5642C6:  VABS.F32        S2, S2
5642CA:  VCMPE.F32       S2, S0
5642CE:  VMRS            APSR_nzcv, FPSCR
5642D2:  BGE             loc_5642FC
5642D4:  VLDR            S0, [R6,#0xDC]
5642D8:  VCMPE.F32       S0, #0.0
5642DC:  VMRS            APSR_nzcv, FPSCR
5642E0:  BLE             loc_5642F2
5642E2:  MOV.W           R0, #0xFFFFFFFF; int
5642E6:  LDR.W           R4, [R6,#0xE0]
5642EA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5642EE:  CMP             R4, R0
5642F0:  BEQ             loc_5642FC
5642F2:  MOVS            R0, #0
5642F4:  STRD.W          R0, R0, [R6,#0x48]
5642F8:  STR             R0, [R6,#0x50]
5642FA:  STR             R0, [R6,#0x5C]
5642FC:  LDRB.W          R0, [SP,#0x200+var_64]
564300:  LSLS            R0, R0, #0x1E
564302:  BMI             loc_564310
564304:  LDRB.W          R0, [R6,#0x628]
564308:  TST.W           R0, #0x18
56430C:  BEQ.W           loc_564960
564310:  ADD.W           R0, R6, #0x630
564314:  LDR             R1, [R6,#0x14]; CVector *
564316:  VLDR            S0, [R0]
56431A:  ADDW            R0, R6, #0x62C
56431E:  VLDR            S4, [R1,#4]
564322:  VLDR            S8, [R0]
564326:  ADDW            R0, R6, #0x634
56432A:  VLDR            S2, [R1]
56432E:  VMUL.F32        S0, S4, S0
564332:  VLDR            S6, [R1,#8]
564336:  VMUL.F32        S2, S2, S8
56433A:  VLDR            S4, [R0]
56433E:  VMUL.F32        S4, S6, S4
564342:  VADD.F32        S0, S2, S0
564346:  VADD.F32        S0, S0, S4
56434A:  VCMPE.F32       S0, S22
56434E:  VMRS            APSR_nzcv, FPSCR
564352:  BGT             loc_56436A
564354:  VMOV.F32        S2, #-1.0
564358:  VMOV.F32        S22, S0
56435C:  VCMPE.F32       S0, S2
564360:  VMRS            APSR_nzcv, FPSCR
564364:  IT LT
564366:  VMOVLT.F32      S22, S2
56436A:  ADD.W           R2, R6, #0xA8
56436E:  ADD             R0, SP, #0x200+var_A4; CMatrix *
564370:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
564374:  LDRB.W          R0, [SP,#0x200+var_64]
564378:  LSLS            R0, R0, #0x1E
56437A:  BMI             loc_564402
56437C:  VLDR            S0, =-0.1
564380:  VLDR            S2, [R6,#0x94]
564384:  VMUL.F32        S0, S22, S0
564388:  LDR             R0, [R6,#0x14]
56438A:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x564396)
56438E:  VLDR            S8, [R0,#0x20]
564392:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
564394:  VLDR            S10, [R0,#0x24]
564398:  VLDR            S12, [R0,#0x28]
56439C:  VLDR            S4, [R0,#4]
5643A0:  VMUL.F32        S0, S0, S2
5643A4:  VLDR            S2, [R0]
5643A8:  VLDR            S6, [R0,#8]
5643AC:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
5643AE:  VMUL.F32        S8, S0, S8
5643B2:  VMUL.F32        S10, S0, S10
5643B6:  VMUL.F32        S0, S0, S12
5643BA:  VLDR            S12, [R0]
5643BE:  MOV             R0, R6
5643C0:  VMUL.F32        S8, S8, S12
5643C4:  VMUL.F32        S10, S10, S12
5643C8:  VMUL.F32        S0, S0, S12
5643CC:  VMOV            R1, S8
5643D0:  VLDR            S8, [SP,#0x200+var_A0]
5643D4:  VMOV            R2, S10
5643D8:  VLDR            S10, [SP,#0x200+var_9C]
5643DC:  VMOV            R3, S0
5643E0:  VLDR            S0, [SP,#0x200+var_A4]
5643E4:  VADD.F32        S6, S10, S6
5643E8:  VADD.F32        S0, S0, S2
5643EC:  VADD.F32        S4, S8, S4
5643F0:  VSTR            S0, [SP,#0x200+var_200]
5643F4:  VSTR            S4, [SP,#0x200+var_1FC]
5643F8:  VSTR            S6, [SP,#0x200+var_1F8]
5643FC:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
564400:  B               loc_564492
564402:  VLDR            S0, =-0.07
564406:  VLDR            S2, [R6,#0x94]
56440A:  VMUL.F32        S0, S22, S0
56440E:  LDR             R0, [R6,#0x14]
564410:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56441C)
564414:  VLDR            S8, [R0,#0x20]
564418:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56441A:  VLDR            S10, [R0,#0x24]
56441E:  VLDR            S12, [R0,#0x28]
564422:  VLDR            S4, [R0,#4]
564426:  VMUL.F32        S0, S0, S2
56442A:  VLDR            S2, [R0]
56442E:  VLDR            S6, [R0,#8]
564432:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
564434:  VMUL.F32        S8, S0, S8
564438:  VMUL.F32        S10, S0, S10
56443C:  VMUL.F32        S0, S0, S12
564440:  VLDR            S12, [R0]
564444:  MOV             R0, R6
564446:  VMUL.F32        S8, S8, S12
56444A:  VMUL.F32        S10, S10, S12
56444E:  VMUL.F32        S0, S0, S12
564452:  VMOV            R1, S8
564456:  VLDR            S8, [SP,#0x200+var_A0]
56445A:  VMOV            R2, S10
56445E:  VLDR            S10, [SP,#0x200+var_9C]
564462:  VMOV            R3, S0
564466:  VLDR            S0, [SP,#0x200+var_A4]
56446A:  VADD.F32        S6, S10, S6
56446E:  VADD.F32        S0, S0, S2
564472:  VADD.F32        S4, S8, S4
564476:  VSTR            S0, [SP,#0x200+var_200]
56447A:  VSTR            S4, [SP,#0x200+var_1FC]
56447E:  VSTR            S6, [SP,#0x200+var_1F8]
564482:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
564486:  LDRB.W          R0, [R6,#0x628]
56448A:  AND.W           R0, R0, #0xEF
56448E:  STRB.W          R0, [R6,#0x628]
564492:  LDRB.W          R0, [R6,#0x3A]
564496:  CMP             R0, #7
564498:  BHI.W           loc_564960
56449C:  ADDW            R0, R6, #0x744
5644A0:  VLDR            S0, [R0]
5644A4:  VCMPE.F32       S0, #0.0
5644A8:  VMRS            APSR_nzcv, FPSCR
5644AC:  BGT             loc_564518
5644AE:  ADD.W           R0, R6, #0x748
5644B2:  VLDR            S2, [R0]
5644B6:  VCMPE.F32       S2, #0.0
5644BA:  VMRS            APSR_nzcv, FPSCR
5644BE:  BGT             loc_564518
5644C0:  LDR             R0, [R6,#0x14]
5644C2:  VLDR            S2, [R0,#0x18]
5644C6:  VCMPE.F32       S2, #0.0
5644CA:  VMRS            APSR_nzcv, FPSCR
5644CE:  BLE             loc_564518
5644D0:  ADDW            R0, R6, #0x74C
5644D4:  VLDR            S4, [R0]
5644D8:  VCMPE.F32       S4, #0.0
5644DC:  VMRS            APSR_nzcv, FPSCR
5644E0:  BGT             loc_5644F4
5644E2:  ADD.W           R0, R6, #0x750
5644E6:  VLDR            S4, [R0]
5644EA:  VCMPE.F32       S4, #0.0
5644EE:  VMRS            APSR_nzcv, FPSCR
5644F2:  BLE             loc_564518
5644F4:  LDR.W           R0, [R6,#0x650]
5644F8:  VLDR            S0, [R0,#0x2C]
5644FC:  VSUB.F32        S0, S0, S2
564500:  VLDR            S2, =0.15
564504:  VCMPE.F32       S0, S2
564508:  VMRS            APSR_nzcv, FPSCR
56450C:  BLE             loc_5645D0
56450E:  VSUB.F32        S0, S18, S0
564512:  VMAX.F32        D0, D0, D10
564516:  B               loc_5645EA
564518:  ADDW            R0, R6, #0x74C
56451C:  VLDR            S2, [R0]
564520:  VCMPE.F32       S2, #0.0
564524:  VMRS            APSR_nzcv, FPSCR
564528:  BGT.W           loc_564960
56452C:  ADD.W           R0, R6, #0x750
564530:  VLDR            S2, [R0]
564534:  VCMPE.F32       S2, #0.0
564538:  VMRS            APSR_nzcv, FPSCR
56453C:  BGT.W           loc_564960
564540:  LDR             R0, [R6,#0x14]
564542:  VLDR            S2, [R0,#0x18]
564546:  VCMPE.F32       S2, #0.0
56454A:  VMRS            APSR_nzcv, FPSCR
56454E:  BGE.W           loc_564960
564552:  VCMPE.F32       S0, #0.0
564556:  VMRS            APSR_nzcv, FPSCR
56455A:  BGT             loc_564570
56455C:  ADD.W           R0, R6, #0x748
564560:  VLDR            S0, [R0]
564564:  VCMPE.F32       S0, #0.0
564568:  VMRS            APSR_nzcv, FPSCR
56456C:  BLE.W           loc_564960
564570:  LDR.W           R0, [R6,#0x650]
564574:  VLDR            S0, [R0,#0x30]
564578:  VSUB.F32        S0, S0, S2
56457C:  VLDR            S2, =0.15
564580:  VCMPE.F32       S0, S2
564584:  VMRS            APSR_nzcv, FPSCR
564588:  BLE.W           loc_5647D8
56458C:  VSUB.F32        S0, S18, S0
564590:  VMAX.F32        D0, D0, D10
564594:  B               loc_5647F2
564596:  VMOV.F32        S2, #-1.0
56459A:  LDR             R6, [SP,#0x200+var_1B8]
56459C:  VCMPE.F32       S0, S2
5645A0:  VMRS            APSR_nzcv, FPSCR
5645A4:  BLE.W           loc_5637E0
5645A8:  VLDR            S2, =0.05
5645AC:  VADD.F32        S0, S0, S2
5645B0:  VSTR            S0, [R0]
5645B4:  B.W             loc_5637E0
5645B8:  DCFS -0.1
5645BC:  DCFS -0.07
5645C0:  DCFS 0.15
5645C4:  DCD g_surfaceInfos_ptr - 0x5639CA
5645C8:  DCD dword_A01FA4 - 0x5639CC
5645CC:  DCD g_surfaceInfos_ptr - 0x563A00
5645D0:  VLDR            S2, =-0.08
5645D4:  VCMPE.F32       S0, S2
5645D8:  VMRS            APSR_nzcv, FPSCR
5645DC:  ITTT LT
5645DE:  VLDRLT          S2, =-0.14
5645E2:  VSUBLT.F32      S0, S2, S0
5645E6:  VMINLT.F32      D0, D0, D10
5645EA:  VLDR            S2, [R6,#0x48]
5645EE:  VLDR            S4, [R6,#0x4C]
5645F2:  VMUL.F32        S2, S2, S2
5645F6:  VLDR            S6, [R6,#0x50]
5645FA:  VMUL.F32        S4, S4, S4
5645FE:  VMUL.F32        S6, S6, S6
564602:  VADD.F32        S2, S2, S4
564606:  VLDR            S4, [R0,#0x38]
56460A:  MOVS            R0, #0xC
56460C:  VADD.F32        S2, S2, S6
564610:  VSQRT.F32       S2, S2
564614:  VMIN.F32        D1, D1, D8
564618:  VMOV.F32        S16, #0.5
56461C:  VMUL.F32        S2, S4, S2
564620:  VMUL.F32        S18, S0, S2
564624:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
564628:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x564634)
56462A:  VMOV            S2, R0
56462E:  LDR             R0, [R6,#0x14]
564630:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
564632:  VMUL.F32        S2, S2, S18
564636:  LDR             R4, [R1]; CTimer::ms_fTimeStep ...
564638:  VLDR            S8, [R0,#0x20]
56463C:  VLDR            S10, [R0,#0x24]
564640:  VLDR            S0, [R4]
564644:  VLDR            S12, [R0,#0x28]
564648:  VMUL.F32        S0, S0, S16
56464C:  VLDR            S4, [R0,#0x14]
564650:  VLDR            S6, [R0,#0x18]
564654:  VMUL.F32        S0, S0, S2
564658:  VLDR            S2, [R6,#0x94]
56465C:  VMUL.F32        S0, S2, S0
564660:  VLDR            S2, [R0,#0x10]
564664:  MOV             R0, R6
564666:  VMUL.F32        S8, S8, S0
56466A:  VMUL.F32        S10, S10, S0
56466E:  VMUL.F32        S0, S12, S0
564672:  VMOV            R1, S8
564676:  VLDR            S8, [SP,#0x200+var_A0]
56467A:  VMOV            R2, S10
56467E:  VLDR            S10, [SP,#0x200+var_9C]
564682:  VMOV            R3, S0
564686:  VLDR            S0, [SP,#0x200+var_A4]
56468A:  VADD.F32        S6, S10, S6
56468E:  VADD.F32        S0, S0, S2
564692:  VADD.F32        S4, S8, S4
564696:  VSTR            S0, [SP,#0x200+var_200]
56469A:  VSTR            S4, [SP,#0x200+var_1FC]
56469E:  VSTR            S6, [SP,#0x200+var_1F8]
5646A2:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5646A6:  VLDR            S0, [R4]
5646AA:  ADD.W           R5, R6, #0x658
5646AE:  LDR.W           R0, [R6,#0x650]
5646B2:  VMUL.F32        S0, S0, S16
5646B6:  VLDR            S2, [R5]
5646BA:  VMUL.F32        S0, S0, S2
5646BE:  VLDR            S2, [R0,#0x34]
5646C2:  LDR             R0, [R6,#0x14]
5646C4:  VLDR            S4, [R0,#4]
5646C8:  VLDR            S6, [R0,#8]
5646CC:  VLDR            S8, [R0,#0x10]
5646D0:  VMUL.F32        S0, S0, S2
5646D4:  VLDR            S2, [R6,#0x94]
5646D8:  VLDR            S10, [R0,#0x14]
5646DC:  VLDR            S12, [R0,#0x18]
5646E0:  VMUL.F32        S0, S0, S2
5646E4:  VLDR            S2, [R0]
5646E8:  MOV             R0, R6
5646EA:  VMUL.F32        S2, S0, S2
5646EE:  VMUL.F32        S4, S0, S4
5646F2:  VMUL.F32        S0, S0, S6
5646F6:  VMOV            R1, S2
5646FA:  VLDR            S2, [SP,#0x200+var_A0]
5646FE:  VMOV            R2, S4
564702:  VLDR            S4, [SP,#0x200+var_9C]
564706:  VMOV            R3, S0
56470A:  VLDR            S0, [SP,#0x200+var_A4]
56470E:  VADD.F32        S4, S4, S12
564712:  VADD.F32        S0, S0, S8
564716:  VADD.F32        S2, S2, S10
56471A:  VSTR            S0, [SP,#0x200+var_200]
56471E:  VSTR            S2, [SP,#0x200+var_1FC]
564722:  VSTR            S4, [SP,#0x200+var_1F8]
564726:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
56472A:  VLDR            S0, [R6,#0x48]
56472E:  VLDR            S2, [R6,#0x4C]
564732:  VMUL.F32        S0, S0, S0
564736:  VLDR            S4, [R6,#0x50]
56473A:  VMUL.F32        S2, S2, S2
56473E:  LDR.W           R0, [R6,#0x650]
564742:  VMUL.F32        S4, S4, S4
564746:  VADD.F32        S0, S0, S2
56474A:  VLDR            S2, =0.01
56474E:  VADD.F32        S0, S0, S4
564752:  VLDR            S4, [R4]
564756:  VSQRT.F32       S0, S0
56475A:  VMUL.F32        S2, S0, S2
56475E:  VMUL.F32        S2, S4, S2
564762:  VLDR            S4, [R5]
564766:  VMUL.F32        S2, S4, S2
56476A:  VLDR            S4, [R0,#0x34]
56476E:  LDR             R0, [R6,#0x14]
564770:  VLDR            S6, [R0,#4]
564774:  VLDR            S8, [R0,#8]
564778:  VMUL.F32        S2, S4, S2
56477C:  VLDR            S4, [R6,#0x90]
564780:  VMUL.F32        S2, S4, S2
564784:  VLDR            S4, [R0]
564788:  MOV             R0, R6
56478A:  VMUL.F32        S4, S4, S2
56478E:  VMUL.F32        S6, S6, S2
564792:  VMUL.F32        S2, S2, S8
564796:  VMUL.F32        S4, S0, S4
56479A:  VMUL.F32        S6, S0, S6
56479E:  VMUL.F32        S0, S0, S2
5647A2:  VMOV            R1, S4
5647A6:  VMOV            R2, S6
5647AA:  VMOV            R3, S0
5647AE:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5647B2:  VLDR            S0, =-0.1
5647B6:  ADDW            R0, R6, #0x65C
5647BA:  VLDR            S2, [R4]
5647BE:  VMUL.F32        S0, S2, S0
5647C2:  VLDR            S2, [R5]
5647C6:  VMUL.F32        S0, S0, S2
5647CA:  VLDR            S2, [R0]
5647CE:  VADD.F32        S0, S2, S0
5647D2:  VSTR            S0, [R0]
5647D6:  B               loc_564960
5647D8:  VLDR            S2, =-0.15
5647DC:  VCMPE.F32       S0, S2
5647E0:  VMRS            APSR_nzcv, FPSCR
5647E4:  ITTT LT
5647E6:  VLDRLT          S2, =-0.3
5647EA:  VSUBLT.F32      S0, S2, S0
5647EE:  VMINLT.F32      D0, D0, D10
5647F2:  VLDR            S2, [R6,#0x48]
5647F6:  VLDR            S4, [R6,#0x4C]
5647FA:  VMUL.F32        S2, S2, S2
5647FE:  VLDR            S6, [R6,#0x50]
564802:  VMUL.F32        S4, S4, S4
564806:  VMUL.F32        S6, S6, S6
56480A:  VADD.F32        S2, S2, S4
56480E:  VLDR            S4, [R0,#0x3C]
564812:  MOVS            R0, #0xC
564814:  VADD.F32        S2, S2, S6
564818:  VSQRT.F32       S2, S2
56481C:  VMIN.F32        D1, D1, D8
564820:  VMOV.F32        S16, #0.5
564824:  VMUL.F32        S2, S4, S2
564828:  VMUL.F32        S18, S0, S2
56482C:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
564830:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56483C)
564832:  VMOV            S2, R0
564836:  LDR             R0, [R6,#0x14]
564838:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56483A:  VMUL.F32        S2, S2, S18
56483E:  LDR             R4, [R1]; CTimer::ms_fTimeStep ...
564840:  VLDR            S8, [R0,#0x20]
564844:  VLDR            S10, [R0,#0x24]
564848:  VLDR            S0, [R4]
56484C:  VLDR            S12, [R0,#0x28]
564850:  VMUL.F32        S0, S0, S16
564854:  VLDR            S4, [R0,#0x14]
564858:  VLDR            S6, [R0,#0x18]
56485C:  VMUL.F32        S0, S0, S2
564860:  VLDR            S2, [R6,#0x94]
564864:  VMUL.F32        S0, S2, S0
564868:  VLDR            S2, [R0,#0x10]
56486C:  MOV             R0, R6
56486E:  VMUL.F32        S8, S8, S0
564872:  VMUL.F32        S10, S10, S0
564876:  VMUL.F32        S0, S12, S0
56487A:  VMOV            R1, S8
56487E:  VLDR            S8, [SP,#0x200+var_A0]
564882:  VMOV            R2, S10
564886:  VLDR            S10, [SP,#0x200+var_9C]
56488A:  VMOV            R3, S0
56488E:  VLDR            S0, [SP,#0x200+var_A4]
564892:  VADD.F32        S6, S10, S6
564896:  VADD.F32        S0, S0, S2
56489A:  VADD.F32        S4, S8, S4
56489E:  VSTR            S0, [SP,#0x200+var_200]
5648A2:  VSTR            S4, [SP,#0x200+var_1FC]
5648A6:  VSTR            S6, [SP,#0x200+var_1F8]
5648AA:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5648AE:  LDR             R2, [R6,#0x14]
5648B0:  MOVS            R0, #0
5648B2:  ADD             R5, SP, #0x200+var_D8
5648B4:  VLDR            S16, [R6,#0x48]
5648B8:  VLDR            S18, [R6,#0x4C]
5648BC:  ADD             R1, SP, #0x200+var_108; CVector *
5648BE:  VLDR            S20, [R6,#0x50]
5648C2:  VLDR            S22, [R4]
5648C6:  VLDR            S24, [R6,#0x94]
5648CA:  VLDR            S26, [R2]
5648CE:  VLDR            S28, [R2,#4]
5648D2:  VLDR            S30, [R2,#8]
5648D6:  STRD.W          R0, R0, [SP,#0x200+var_108]
5648DA:  MOV.W           R0, #0x3F800000
5648DE:  STR             R0, [SP,#0x200+var_100]
5648E0:  MOV             R0, R5; CVector *
5648E2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5648E6:  MOV             R0, R5; this
5648E8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5648EC:  VMUL.F32        S0, S18, S28
5648F0:  VLDR            S4, =-0.05
5648F4:  VMUL.F32        S2, S16, S26
5648F8:  LDR             R0, [R6,#0x14]
5648FA:  VMUL.F32        S4, S24, S4
5648FE:  VMUL.F32        S6, S20, S30
564902:  VADD.F32        S0, S2, S0
564906:  VMUL.F32        S2, S4, S22
56490A:  VLDR            S4, [R0,#4]
56490E:  VADD.F32        S0, S0, S6
564912:  VLDR            S6, [R0,#8]
564916:  VMUL.F32        S0, S0, S2
56491A:  VLDR            S2, [R0]
56491E:  MOV             R0, R6
564920:  VMUL.F32        S2, S2, S0
564924:  VMUL.F32        S4, S4, S0
564928:  VMUL.F32        S0, S6, S0
56492C:  VMOV            R1, S2
564930:  VLDR            S2, [SP,#0x200+var_D8+4]
564934:  VMOV            R2, S4
564938:  VLDR            S4, [SP,#0x200+var_D0]
56493C:  VMOV            R3, S0
564940:  VLDR            S0, [SP,#0x200+var_D8]
564944:  VNEG.F32        S4, S4
564948:  VNEG.F32        S0, S0
56494C:  VNEG.F32        S2, S2
564950:  VSTR            S0, [SP,#0x200+var_200]
564954:  VSTR            S2, [SP,#0x200+var_1FC]
564958:  VSTR            S4, [SP,#0x200+var_1F8]
56495C:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
564960:  ADD             SP, SP, #0x1A0
564962:  VPOP            {D8-D15}
564966:  ADD             SP, SP, #4
564968:  POP.W           {R8-R11}
56496C:  POP             {R4-R7,PC}
