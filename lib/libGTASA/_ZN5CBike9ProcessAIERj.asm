; =========================================================
; Game Engine Function: _ZN5CBike9ProcessAIERj
; Address            : 0x5649F4 - 0x564FB8
; =========================================================

5649F4:  PUSH            {R4-R7,LR}
5649F6:  ADD             R7, SP, #0xC
5649F8:  PUSH.W          {R8}
5649FC:  VPUSH           {D8-D9}
564A00:  SUB             SP, SP, #0x10; float
564A02:  MOV             R4, R0
564A04:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x564A12)
564A08:  MOV             R5, R1
564A0A:  LDRSH.W         R1, [R4,#0x26]
564A0E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
564A10:  LDRH.W          R2, [R4,#0x3DF]
564A14:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
564A16:  LDR.W           R6, [R0,R1,LSL#2]
564A1A:  BIC.W           R1, R2, #3
564A1E:  LDRSB.W         R0, [R4,#0x428]
564A22:  STRH.W          R1, [R4,#0x3DF]
564A26:  CMP             R0, #0
564A28:  BLT             loc_564A38
564A2A:  LDR.W           R1, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x564A32)
564A2E:  ADD             R1, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
564A30:  LDR             R1, [R1]; CVehicleRecording::bUseCarAI ...
564A32:  LDRB            R0, [R1,R0]
564A34:  CMP             R0, #0
564A36:  BEQ             loc_564AAA
564A38:  LDRB.W          R0, [R4,#0x3A]
564A3C:  LSRS            R1, R0, #3; CVehicle *
564A3E:  MOVS            R0, #1
564A40:  CMP             R1, #0xC; switch 13 cases
564A42:  BHI.W           def_564A46; jumptable 00564A46 default case, cases 6-8,10,11
564A46:  TBH.W           [PC,R1,LSL#1]; switch jump
564A4A:  DCW 0x11A; jump table for switch statement
564A4C:  DCW 0x35
564A4E:  DCW 0x39
564A50:  DCW 0xD
564A52:  DCW 0xB7
564A54:  DCW 0xDE
564A56:  DCW 0x1E8
564A58:  DCW 0x1E8
564A5A:  DCW 0x1E8
564A5C:  DCW 0xF8
564A5E:  DCW 0x1E8
564A60:  DCW 0x1E8
564A62:  DCW 0xD
564A64:  MOV             R0, R4; jumptable 00564A46 cases 3,12
564A66:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
564A6A:  MOV             R0, R4; this
564A6C:  BLX             j__ZN8CCarCtrl21SteerAICarWithPhysicsEP8CVehicle; CCarCtrl::SteerAICarWithPhysics(CVehicle *)
564A70:  LDRB.W          R0, [R4,#0x3DF]
564A74:  LSLS            R0, R0, #0x1E
564A76:  BEQ             loc_564A82
564A78:  LDR             R0, [R4]
564A7A:  LDR.W           R1, [R0,#0xDC]
564A7E:  MOV             R0, R4
564A80:  BLX             R1
564A82:  LDR             R0, [R5]
564A84:  ADDS            R0, #2
564A86:  STR             R0, [R5]
564A88:  LDRB.W          R2, [R4,#0x628]
564A8C:  LDR.W           R1, [R4,#0x42C]
564A90:  LDR.W           R0, [R4,#0x430]
564A94:  AND.W           R3, R2, #0x7F
564A98:  TST.W           R1, #0x80000
564A9C:  STRB.W          R3, [R4,#0x628]
564AA0:  BNE.W           loc_564D90
564AA4:  AND.W           R0, R2, #0x77 ; 'w'
564AA8:  B               loc_564E14
564AAA:  LDR             R0, [R5]
564AAC:  ADDS            R0, #2
564AAE:  STR             R0, [R5]
564AB0:  MOVS            R0, #0
564AB2:  B               def_564A46; jumptable 00564A46 default case, cases 6-8,10,11
564AB4:  LDR             R0, [R5]; jumptable 00564A46 case 1
564AB6:  ADDS            R0, #2
564AB8:  STR             R0, [R5]
564ABA:  B               loc_564E18
564ABC:  MOV             R0, R4; jumptable 00564A46 case 2
564ABE:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
564AC2:  MOV             R0, R4; this
564AC4:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
564AC8:  MOV             R0, R4; this
564ACA:  BLX             j__ZN8CCarCtrl16UpdateCarOnRailsEP8CVehicle; CCarCtrl::UpdateCarOnRails(CVehicle *)
564ACE:  VLDR            S0, =50.0
564AD2:  MOVS            R3, #2
564AD4:  VLDR            S2, [R4,#0x3CC]
564AD8:  LDR.W           R0, [R4,#0x388]
564ADC:  VDIV.F32        S0, S2, S0
564AE0:  LDRB.W          R2, [R4,#0x819]
564AE4:  STRB.W          R3, [R4,#0x818]
564AE8:  ADDS            R0, #0x2C ; ','; this
564AEA:  STRB.W          R3, [R4,#0x819]
564AEE:  STRB.W          R2, [R4,#0x81A]
564AF2:  ADD.W           R2, R4, #0x4C0; unsigned __int8 *
564AF6:  VMOV            R1, S0; float
564AFA:  BLX             j__ZN13cTransmission25CalculateGearForSimpleCarEfRh; cTransmission::CalculateGearForSimpleCar(float,uchar &)
564AFE:  VMOV.F32        S16, #0.5
564B02:  VLDR            S0, [R6,#0x58]
564B06:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x564B14)
564B0A:  ADD.W           R8, R4, #0x48 ; 'H'
564B0E:  MOVS            R1, #0; int
564B10:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
564B12:  MOV             R3, R8; int
564B14:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
564B16:  LDR             R0, [R4,#0x14]
564B18:  VMUL.F32        S0, S0, S16
564B1C:  ADD.W           R2, R0, #0x10; int
564B20:  MOV             R0, R4; int
564B22:  VLDR            S18, [R5]
564B26:  VSTR            S0, [SP,#0x30+var_30]
564B2A:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
564B2E:  VMOV            S0, R0
564B32:  ADDW            R0, R4, #0x764
564B36:  MOVS            R1, #0; int
564B38:  MOV             R3, R8; int
564B3A:  VMUL.F32        S0, S18, S0
564B3E:  VLDR            S2, [R0]
564B42:  VADD.F32        S0, S2, S0
564B46:  VSTR            S0, [R0]
564B4A:  VLDR            S0, [R6,#0x5C]
564B4E:  LDR             R0, [R4,#0x14]
564B50:  VMUL.F32        S0, S0, S16
564B54:  VLDR            S16, [R5]
564B58:  ADD.W           R2, R0, #0x10; int
564B5C:  MOV             R0, R4; int
564B5E:  VSTR            S0, [SP,#0x30+var_30]
564B62:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
564B66:  VMOV            S0, R0
564B6A:  ADD.W           R0, R4, #0x768
564B6E:  LDRB.W          R1, [R4,#0x3DF]
564B72:  VMUL.F32        S0, S16, S0
564B76:  VLDR            S2, [R0]
564B7A:  VADD.F32        S0, S2, S0
564B7E:  VSTR            S0, [R0]
564B82:  LSLS            R0, R1, #0x1E
564B84:  BEQ             loc_564B90
564B86:  LDR             R0, [R4]
564B88:  LDR.W           R1, [R0,#0xDC]
564B8C:  MOV             R0, R4
564B8E:  BLX             R1
564B90:  LDR.W           R0, [R4,#0x524]
564B94:  CMP             R0, #0
564B96:  ITT NE
564B98:  SUBNE           R0, #1
564B9A:  STRNE.W         R0, [R4,#0x524]
564B9E:  LDRB.W          R0, [R4,#0x628]
564BA2:  LDR.W           R1, [R4,#0x42C]
564BA6:  AND.W           R0, R0, #0x7F
564BAA:  STRB.W          R0, [R4,#0x628]
564BAE:  BIC.W           R0, R1, #0x21000000
564BB2:  STR.W           R0, [R4,#0x42C]
564BB6:  B               loc_564E18
564BB8:  VLDR            S0, [R4,#0x48]; jumptable 00564A46 case 4
564BBC:  MOVS            R0, #0
564BBE:  VLDR            S2, [R4,#0x4C]
564BC2:  VMUL.F32        S0, S0, S0
564BC6:  VLDR            S4, [R4,#0x50]
564BCA:  VMUL.F32        S2, S2, S2
564BCE:  STR.W           R0, [R4,#0x4A4]
564BD2:  VMUL.F32        S4, S4, S4
564BD6:  VADD.F32        S0, S0, S2
564BDA:  VLDR            S2, =0.01
564BDE:  VADD.F32        S0, S0, S4
564BE2:  VCMPE.F32       S0, S2
564BE6:  VMRS            APSR_nzcv, FPSCR
564BEA:  BLT.W           loc_564DAC
564BEE:  LDRB.W          R0, [R4,#0x628]
564BF2:  LSLS            R0, R0, #0x1B
564BF4:  BMI.W           loc_564DAC
564BF8:  LDR.W           R1, [R4,#0x42C]
564BFC:  LDR.W           R0, [R4,#0x430]
564C00:  BIC.W           R1, R1, #0x20 ; ' '
564C04:  B               loc_564DB8
564C06:  MOVW            R0, #0xCCCD; jumptable 00564A46 case 5
564C0A:  MOVS            R2, #0
564C0C:  MOVT            R0, #0x3D4C
564C10:  LDR.W           R1, [R4,#0x42C]
564C14:  STR.W           R2, [R4,#0x498]
564C18:  STR.W           R2, [R4,#0x4A0]
564C1C:  ORR.W           R1, R1, #0x20 ; ' '
564C20:  STR.W           R0, [R4,#0x4A4]
564C24:  STR.W           R2, [R4,#0x524]
564C28:  LDRB.W          R0, [R4,#0x628]
564C2C:  STR.W           R2, [R4,#0x668]
564C30:  STR.W           R2, [R4,#0x66C]
564C34:  STR.W           R1, [R4,#0x42C]
564C38:  B               loc_564E10
564C3A:  VLDR            S0, [R4,#0x48]; jumptable 00564A46 case 9
564C3E:  ADDW            R0, R4, #0x4A4
564C42:  VLDR            S2, [R4,#0x4C]
564C46:  VMUL.F32        S0, S0, S0
564C4A:  VLDR            S4, [R4,#0x50]
564C4E:  VMUL.F32        S2, S2, S2
564C52:  VMUL.F32        S4, S4, S4
564C56:  VADD.F32        S0, S0, S2
564C5A:  VLDR            S2, =0.01
564C5E:  VADD.F32        S0, S0, S4
564C62:  VCMPE.F32       S0, S2
564C66:  VMRS            APSR_nzcv, FPSCR
564C6A:  BGE.W           loc_564DE8
564C6E:  MOV.W           R1, #0x3F800000
564C72:  STR             R1, [R0]
564C74:  LDR.W           R0, [R4,#0x42C]
564C78:  ORR.W           R0, R0, #0x20 ; ' '
564C7C:  B               loc_564DF4
564C7E:  LDR             R0, [R5]; jumptable 00564A46 case 0
564C80:  ADDS            R0, #2
564C82:  STR             R0, [R5]
564C84:  LDRB.W          R0, [R4,#0x628]
564C88:  AND.W           R0, R0, #0xF7
564C8C:  STRB.W          R0, [R4,#0x628]
564C90:  MOV.W           R0, #0xFFFFFFFF; int
564C94:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
564C98:  LDR.W           R0, [R0,#0x44C]
564C9C:  CMP             R0, #0x3D ; '='
564C9E:  BEQ.W           loc_564F8E
564CA2:  MOV.W           R0, #0xFFFFFFFF; int
564CA6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
564CAA:  LDR.W           R0, [R0,#0x44C]
564CAE:  CMP             R0, #0x3A ; ':'
564CB0:  BEQ.W           loc_564F8E
564CB4:  LDR.W           R0, [R4,#0x464]
564CB8:  CBZ             R0, loc_564CCC
564CBA:  LDR.W           R0, [R0,#0x59C]
564CBE:  CMP             R0, #1
564CC0:  NOP
564CC2:  LDR             R1, [R4]
564CC4:  LDR             R2, [R1,#0x64]
564CC6:  UXTB            R1, R0
564CC8:  MOV             R0, R4
564CCA:  BLX             R2
564CCC:  ADDW            R2, R4, #0x664
564CD0:  LDR.W           R1, [R4,#0x388]
564CD4:  LDR.W           R0, [R4,#0x650]
564CD8:  VLDR            S0, [R2]
564CDC:  VLDR            S2, [R1,#0x18]
564CE0:  VCMPE.F32       S0, #0.0
564CE4:  VMRS            APSR_nzcv, FPSCR
564CE8:  BGE.W           loc_564E74
564CEC:  VLDR            S4, [R0,#0xC]
564CF0:  ADDW            R1, R4, #0x4A4
564CF4:  VMUL.F32        S4, S0, S4
564CF8:  VADD.F32        S2, S2, S4
564CFC:  VLDR            S4, [R1]
564D00:  VCMP.F32        S4, #0.0
564D04:  VMRS            APSR_nzcv, FPSCR
564D08:  VSTR            S2, [R4,#0xAC]
564D0C:  BNE             loc_564D16
564D0E:  LDRB.W          R1, [R4,#0x42C]
564D12:  LSLS            R1, R1, #0x1A
564D14:  BPL             loc_564D20
564D16:  LDRB.W          R1, [R4,#0x818]
564D1A:  CMP             R1, #0
564D1C:  BNE.W           loc_564F72
564D20:  VLDR            S2, [R4,#0x48]
564D24:  VLDR            S4, [R4,#0x4C]
564D28:  VMUL.F32        S2, S2, S2
564D2C:  VLDR            S6, [R4,#0x50]
564D30:  VMUL.F32        S4, S4, S4
564D34:  VLDR            S8, [R4,#0x94]
564D38:  VMUL.F32        S6, S6, S6
564D3C:  VMUL.F32        S0, S0, S8
564D40:  VLDR            S8, [R0,#0x10]
564D44:  ADD.W           R0, R4, #0x4A0
564D48:  VLDR            S10, [R0]
564D4C:  MOVS            R0, #0xB
564D4E:  VADD.F32        S2, S2, S4
564D52:  VLDR            S4, =0.1
564D56:  VMUL.F32        S0, S0, S8
564D5A:  VADD.F32        S2, S2, S6
564D5E:  VMOV.F32        S6, #0.5
564D62:  VSQRT.F32       S2, S2
564D66:  VMIN.F32        D1, D1, D2
564D6A:  VMUL.F32        S8, S10, S6
564D6E:  VDIV.F32        S4, S2, S4
564D72:  VMAX.F32        D2, D2, D5
564D76:  VMUL.F32        S0, S0, S2
564D7A:  VMUL.F32        S4, S4, S6
564D7E:  VADD.F32        S2, S8, S4
564D82:  VMUL.F32        S16, S0, S2
564D86:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
564D8A:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x564D90)
564D8C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
564D8E:  B               loc_564F04
564D90:  ADDW            R2, R4, #0x42C
564D94:  MOVS            R6, #0
564D96:  MOV.W           R3, #0x3F800000
564D9A:  STR.W           R6, [R4,#0x4A0]
564D9E:  STR.W           R3, [R4,#0x4A4]
564DA2:  ORR.W           R1, R1, #0x20 ; ' '
564DA6:  STRD.W          R1, R0, [R2]
564DAA:  B               loc_564E18
564DAC:  LDR.W           R1, [R4,#0x42C]
564DB0:  LDR.W           R0, [R4,#0x430]
564DB4:  ORR.W           R1, R1, #0x20 ; ' '
564DB8:  MOVS            R2, #0
564DBA:  STR.W           R1, [R4,#0x42C]
564DBE:  STR.W           R2, [R4,#0x524]
564DC2:  STR.W           R2, [R4,#0x4A0]
564DC6:  LDR.W           R2, [R4,#0x464]
564DCA:  CBZ             R2, loc_564E26
564DCC:  LDRB.W          R3, [R4,#0x628]
564DD0:  ADD.W           R2, R4, #0x628
564DD4:  LSLS            R3, R3, #0x1B
564DD6:  BMI             loc_564E38
564DD8:  LDR             R0, [R5]
564DDA:  ADDS            R0, #2
564DDC:  STR             R0, [R5]
564DDE:  LDR.W           R1, [R4,#0x42C]
564DE2:  LDR.W           R0, [R4,#0x430]
564DE6:  B               loc_564E38
564DE8:  MOVS            R1, #0
564DEA:  STR             R1, [R0]
564DEC:  LDR.W           R0, [R4,#0x42C]
564DF0:  BIC.W           R0, R0, #0x20 ; ' '
564DF4:  STR.W           R0, [R4,#0x42C]
564DF8:  MOVS            R0, #0
564DFA:  STR.W           R0, [R4,#0x4A0]
564DFE:  STR.W           R0, [R4,#0x498]
564E02:  STR.W           R0, [R4,#0x524]
564E06:  LDR             R0, [R5]
564E08:  ADDS            R0, #2
564E0A:  STR             R0, [R5]
564E0C:  LDRB.W          R0, [R4,#0x628]
564E10:  AND.W           R0, R0, #0x7F
564E14:  STRB.W          R0, [R4,#0x628]
564E18:  MOVS            R0, #1
564E1A:  ADD             SP, SP, #0x10; jumptable 00564A46 default case, cases 6-8,10,11
564E1C:  VPOP            {D8-D9}
564E20:  POP.W           {R8}
564E24:  POP             {R4-R7,PC}
564E26:  LDR.W           R2, [R4,#0x468]
564E2A:  CMP             R2, #0
564E2C:  IT EQ
564E2E:  ANDSEQ.W        R2, R1, #0x80000
564E32:  BNE             loc_564DCC
564E34:  ADD.W           R2, R4, #0x628
564E38:  MOVS            R6, #0
564E3A:  ADDW            R3, R4, #0x42C
564E3E:  STR.W           R6, [R4,#0x668]
564E42:  STR.W           R6, [R4,#0x66C]
564E46:  LDRB            R5, [R2]
564E48:  AND.W           R5, R5, #0x7F
564E4C:  STRB            R5, [R2]
564E4E:  LSLS            R2, R1, #0xC
564E50:  BPL             loc_564E18
564E52:  ADD.W           R5, R4, #0x4A0
564E56:  ADDW            R2, R4, #0x4A4
564E5A:  ORR.W           R1, R1, #0x20 ; ' '
564E5E:  STR             R6, [R5]
564E60:  MOV.W           R6, #0x3F800000
564E64:  STR             R6, [R2]
564E66:  STRD.W          R1, R0, [R3]
564E6A:  B               loc_564E18
564E6C:  DCFS 50.0
564E70:  DCFS 0.01
564E74:  VLDR            S4, [R0,#4]
564E78:  ADDW            R1, R4, #0x4A4
564E7C:  VMUL.F32        S4, S0, S4
564E80:  VADD.F32        S4, S2, S4
564E84:  VLDR            S2, [R1]
564E88:  VCMPE.F32       S2, #0.0
564E8C:  VMRS            APSR_nzcv, FPSCR
564E90:  VSTR            S4, [R4,#0xAC]
564E94:  BLT             loc_564E9E
564E96:  LDRB.W          R1, [R4,#0x818]
564E9A:  CMP             R1, #0
564E9C:  BNE             loc_564F72
564E9E:  VLDR            S4, [R4,#0x48]
564EA2:  VLDR            S6, [R4,#0x4C]
564EA6:  VMUL.F32        S4, S4, S4
564EAA:  VLDR            S8, [R4,#0x50]
564EAE:  VMUL.F32        S6, S6, S6
564EB2:  VLDR            S10, [R4,#0x94]
564EB6:  VMUL.F32        S8, S8, S8
564EBA:  VMUL.F32        S0, S0, S10
564EBE:  VLDR            S10, [R0,#8]
564EC2:  MOVS            R0, #0xB
564EC4:  VADD.F32        S4, S4, S6
564EC8:  VLDR            S6, =0.1
564ECC:  VMUL.F32        S0, S0, S10
564ED0:  VADD.F32        S4, S4, S8
564ED4:  VMOV.F32        S8, #0.5
564ED8:  VSQRT.F32       S4, S4
564EDC:  VMIN.F32        D2, D2, D3
564EE0:  VDIV.F32        S6, S4, S6
564EE4:  VMAX.F32        D3, D3, D1
564EE8:  VMUL.F32        S2, S2, S8
564EEC:  VMUL.F32        S0, S0, S4
564EF0:  VMUL.F32        S6, S6, S8
564EF4:  VADD.F32        S2, S2, S6
564EF8:  VMUL.F32        S16, S0, S2
564EFC:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
564F00:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x564F06)
564F02:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
564F04:  VMOV            S0, R0
564F08:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
564F0A:  VMUL.F32        S0, S0, S16
564F0E:  VLDR            S2, [R0]
564F12:  LDR             R0, [R4,#0x14]
564F14:  VLDR            S8, [R0,#0x20]
564F18:  VLDR            S10, [R0,#0x24]
564F1C:  VMUL.F32        S0, S2, S0
564F20:  VLDR            S12, [R0,#0x28]
564F24:  VLDR            S2, [R0,#0x10]
564F28:  VLDR            S4, [R0,#0x14]
564F2C:  VLDR            S6, [R0,#0x18]
564F30:  MOV             R0, R4
564F32:  VNMUL.F32       S8, S0, S8
564F36:  VNMUL.F32       S10, S0, S10
564F3A:  VNMUL.F32       S0, S0, S12
564F3E:  VMOV            R1, S8
564F42:  VLDR            S8, [R4,#0xAC]
564F46:  VMOV            R2, S10
564F4A:  VLDR            S10, [R4,#0xB0]
564F4E:  VMOV            R3, S0
564F52:  VLDR            S0, [R4,#0xA8]
564F56:  VADD.F32        S6, S10, S6
564F5A:  VADD.F32        S0, S0, S2
564F5E:  VADD.F32        S4, S8, S4
564F62:  VSTR            S0, [SP,#0x30+var_30]
564F66:  VSTR            S4, [SP,#0x30+var_2C]
564F6A:  VSTR            S6, [SP,#0x30+var_28]
564F6E:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
564F72:  MOV             R0, R4; this
564F74:  BLX             j__ZN7CEntity15PruneReferencesEv; CEntity::PruneReferences(void)
564F78:  LDRB.W          R0, [R4,#0x3A]
564F7C:  CMP             R0, #7
564F7E:  ITT LS
564F80:  MOVLS           R0, R4; this
564F82:  BLXLS           j__ZN8CVehicle18DoDriveByShootingsEv; CVehicle::DoDriveByShootings(void)
564F86:  MOV             R0, R4; this
564F88:  MOV             R1, R5; unsigned int *
564F8A:  BLX             j__ZN5CBike22DoSoftGroundResistanceERj; CBike::DoSoftGroundResistance(uint &)
564F8E:  LDRB.W          R0, [R4,#0x4B2]
564F92:  AND.W           R0, R0, #7
564F96:  SUBS            R0, #1
564F98:  UXTB            R0, R0
564F9A:  CMP             R0, #1
564F9C:  BHI.W           loc_564E18
564FA0:  MOVS            R0, #0; this
564FA2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
564FA6:  BLX             j__ZN4CPad7UseBombEv; CPad::UseBomb(void)
564FAA:  CMP             R0, #1
564FAC:  BNE.W           loc_564E18
564FB0:  MOV             R0, R4; this
564FB2:  BLX             j__ZN8CVehicle12ActivateBombEv; CVehicle::ActivateBomb(void)
564FB6:  B               loc_564E18
