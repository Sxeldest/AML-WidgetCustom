; =========================================================
; Game Engine Function: _ZN11CRoadBlocks29CreateRoadBlockBetween2PointsE7CVectorS0_j
; Address            : 0x325A88 - 0x3266FC
; =========================================================

325A88:  PUSH            {R4-R7,LR}
325A8A:  ADD             R7, SP, #0xC
325A8C:  PUSH.W          {R8-R11}
325A90:  SUB             SP, SP, #4
325A92:  VPUSH           {D8-D15}
325A96:  SUB             SP, SP, #0xE0
325A98:  VMOV            S18, R0
325A9C:  VLDR            S30, [R7,#arg_4]
325AA0:  VMOV            S16, R2
325AA4:  VLDR            S17, [R7,#arg_0]
325AA8:  VMOV            S19, R3
325AAC:  ADD             R0, SP, #0x140+var_6C; this
325AAE:  VMOV            S20, R1
325AB2:  MOVS            R4, #0
325AB4:  VSUB.F32        S26, S19, S18
325AB8:  STR             R4, [SP,#0x140+var_7C]
325ABA:  VSUB.F32        S24, S17, S20
325ABE:  STR             R4, [SP,#0x140+var_80]
325AC0:  VSUB.F32        S28, S30, S16
325AC4:  VSTR            S24, [SP,#0x140+var_68]
325AC8:  VSTR            S26, [SP,#0x140+var_6C]
325ACC:  VSTR            S28, [SP,#0x140+var_64]
325AD0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
325AD4:  VLDR            S0, [SP,#0x140+var_6C]
325AD8:  LDR             R0, [SP,#0x140+var_68]
325ADA:  VNEG.F32        S0, S0
325ADE:  STR             R0, [SP,#0x140+var_78]
325AE0:  ADD             R0, SP, #0x140+var_78; this
325AE2:  STR             R4, [SP,#0x140+var_70]
325AE4:  VSTR            S0, [SP,#0x140+var_74]
325AE8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
325AEC:  ADD.W           R10, SP, #0x140+var_D8
325AF0:  MOV.W           R1, #0xFFFFFFFF
325AF4:  MOV             R0, R10; int
325AF6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
325AFA:  VMOV.F32        S22, #0.5
325AFE:  VLDR            S6, [SP,#0x140+var_D0]
325B02:  VADD.F32        S0, S20, S17
325B06:  LDR.W           R11, [R7,#arg_8]
325B0A:  VADD.F32        S2, S18, S19
325B0E:  VADD.F32        S4, S16, S30
325B12:  VMUL.F32        S30, S0, S22
325B16:  VLDR            S0, [SP,#0x140+var_D8]
325B1A:  VMUL.F32        S17, S2, S22
325B1E:  VLDR            S2, [SP,#0x140+var_D8+4]
325B22:  VMUL.F32        S19, S4, S22
325B26:  VLDR            S4, [SP,#0x140+var_74]
325B2A:  VSUB.F32        S8, S2, S30
325B2E:  VLDR            S2, [SP,#0x140+var_70]
325B32:  VSUB.F32        S10, S0, S17
325B36:  VLDR            S0, [SP,#0x140+var_78]
325B3A:  VSUB.F32        S6, S6, S19
325B3E:  VMUL.F32        S8, S8, S4
325B42:  VMUL.F32        S10, S10, S0
325B46:  VMUL.F32        S6, S6, S2
325B4A:  VADD.F32        S8, S10, S8
325B4E:  VADD.F32        S6, S8, S6
325B52:  VCMPE.F32       S6, #0.0
325B56:  VMRS            APSR_nzcv, FPSCR
325B5A:  BGE             loc_325B74
325B5C:  VNEG.F32        S4, S4
325B60:  VNEG.F32        S0, S0
325B64:  VNEG.F32        S2, S2
325B68:  VSTR            S4, [SP,#0x140+var_74]
325B6C:  VSTR            S0, [SP,#0x140+var_78]
325B70:  VSTR            S2, [SP,#0x140+var_70]
325B74:  CMP.W           R11, #0
325B78:  BEQ             loc_325B88
325B7A:  BLX             j__ZN11CPopulation20PickRiotRoadBlockCarEv; CPopulation::PickRiotRoadBlockCar(void)
325B7E:  MOV             R2, R0
325B80:  ADDS            R0, R2, #1
325B82:  BNE             loc_325BF4
325B84:  B.W             loc_3266E8
325B88:  MOV.W           R0, #0xFFFFFFFF; int
325B8C:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
325B90:  BLX             j__ZN7CWanted15AreArmyRequiredEv; CWanted::AreArmyRequired(void)
325B94:  CBZ             R0, loc_325B9C
325B96:  MOVW            R2, #0x1B1
325B9A:  B               loc_325BCC
325B9C:  MOV.W           R0, #0xFFFFFFFF; int
325BA0:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
325BA4:  BLX             j__ZN7CWanted14AreFbiRequiredEv; CWanted::AreFbiRequired(void)
325BA8:  CBZ             R0, loc_325BB0
325BAA:  MOV.W           R2, #0x1EA
325BAE:  B               loc_325BCC
325BB0:  MOV.W           R0, #0xFFFFFFFF; int
325BB4:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
325BB8:  BLX             j__ZN7CWanted15AreSwatRequiredEv; CWanted::AreSwatRequired(void)
325BBC:  CBZ             R0, loc_325BC4
325BBE:  MOVW            R2, #0x1AB
325BC2:  B               loc_325BCC
325BC4:  MOVS            R0, #0; this
325BC6:  BLX             j__ZN10CStreaming21GetDefaultCopCarModelEj; CStreaming::GetDefaultCopCarModel(uint)
325BCA:  MOV             R2, R0
325BCC:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x325BD8)
325BD0:  ADD.W           R1, R2, R2,LSL#2; unsigned int
325BD4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
325BD6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
325BD8:  ADD.W           R0, R0, R1,LSL#2
325BDC:  LDRB            R0, [R0,#0x10]
325BDE:  CMP             R0, #1
325BE0:  BEQ             loc_325BEA
325BE2:  MOVS            R0, #0; this
325BE4:  BLX             j__ZN10CStreaming21GetDefaultCopCarModelEj; CStreaming::GetDefaultCopCarModel(uint)
325BE8:  MOV             R2, R0
325BEA:  MOVW            R0, #0x20B
325BEE:  CMP             R2, R0
325BF0:  BEQ.W           loc_3266E8
325BF4:  VMUL.F32        S0, S24, S24
325BF8:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x325C08)
325BFC:  VMUL.F32        S2, S26, S26
325C00:  VSTR            S19, [SP,#0x140+var_12C]
325C04:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
325C06:  VMUL.F32        S4, S28, S28
325C0A:  VSTR            S17, [SP,#0x140+var_128]
325C0E:  VMOV.F32        S8, #2.0
325C12:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
325C14:  CMP.W           R11, #0
325C18:  VSTR            S30, [SP,#0x140+var_124]
325C1C:  VLDR            S6, =0.2
325C20:  LDR.W           R0, [R0,R2,LSL#2]
325C24:  VADD.F32        S0, S2, S0
325C28:  LDR             R0, [R0,#0x2C]
325C2A:  VLDR            D16, [R0]
325C2E:  LDR             R1, [R0,#8]
325C30:  VADD.F32        S0, S4, S0
325C34:  STR             R1, [SP,#0x140+var_D0]
325C36:  VSTR            D16, [SP,#0x140+var_D8]
325C3A:  MOVW            R1, #0x1B1
325C3E:  VLDR            D16, [R0,#0xC]
325C42:  VSTR            D16, [SP,#0x140+var_E8]
325C46:  VLDR            S2, [SP,#0x140+var_E8+4]
325C4A:  VLDR            S4, [SP,#0x140+var_E8]
325C4E:  VSQRT.F32       S24, S0
325C52:  LDR             R0, [R0,#0x14]
325C54:  STR             R0, [SP,#0x140+var_E0]
325C56:  MOV.W           R0, #0
325C5A:  VLDR            S0, [SP,#0x140+var_D8+4]
325C5E:  VSUB.F32        S0, S2, S0
325C62:  VLDR            S2, [SP,#0x140+var_D8]
325C66:  VSUB.F32        S2, S4, S2
325C6A:  VADD.F32        S19, S0, S6
325C6E:  VADD.F32        S21, S2, S8
325C72:  VADD.F32        S0, S19, S22
325C76:  IT NE
325C78:  VMOVNE.F32      S19, S0
325C7C:  CMP             R2, R1
325C7E:  MOV.W           R1, #0
325C82:  STR             R2, [SP,#0x140+var_104]
325C84:  IT EQ
325C86:  MOVEQ           R1, #1
325C88:  CMP.W           R11, #0
325C8C:  MOV             R2, R11
325C8E:  IT NE
325C90:  MOVNE           R2, #1
325C92:  VSTR            S24, [SP,#0x140+var_120]
325C96:  ORRS.W          R5, R2, R1
325C9A:  BEQ             loc_325CA2
325C9C:  STRB.W          R0, [R7,#var_C6]
325CA0:  B               loc_325CC8
325CA2:  BLX             rand
325CA6:  ANDS.W          R0, R0, #1
325CAA:  STRB.W          R0, [R7,#var_C6]
325CAE:  BEQ             loc_325CC8
325CB0:  VCMPE.F32       S24, S21
325CB4:  VMRS            APSR_nzcv, FPSCR
325CB8:  BLT.W           loc_3263D4
325CBC:  VLDR            S0, [SP,#0x140+var_120]
325CC0:  MOVS            R4, #1
325CC2:  VSUB.F32        S26, S0, S21
325CC6:  B               loc_325CE8
325CC8:  VCMPE.F32       S24, S19
325CCC:  VMRS            APSR_nzcv, FPSCR
325CD0:  BLT.W           loc_3263D4
325CD4:  VLDR            S0, [SP,#0x140+var_120]
325CD8:  MOVS            R4, #0
325CDA:  CMP             R5, #1
325CDC:  VSUB.F32        S26, S0, S19
325CE0:  BNE             loc_325CE8
325CE2:  STRB.W          R4, [R7,#var_C5]
325CE6:  B               loc_325D06
325CE8:  BLX             rand
325CEC:  ANDS.W          R0, R0, #1
325CF0:  STRB.W          R0, [R7,#var_C5]
325CF4:  BEQ             loc_325D06
325CF6:  VCMPE.F32       S26, S21
325CFA:  VMRS            APSR_nzcv, FPSCR
325CFE:  BLT             loc_325D10
325D00:  VSUB.F32        S26, S26, S21
325D04:  B               loc_325D24
325D06:  VCMPE.F32       S26, S19
325D0A:  VMRS            APSR_nzcv, FPSCR
325D0E:  BGE             loc_325D14
325D10:  MOVS            R0, #1
325D12:  B               loc_325DCE
325D14:  VSUB.F32        S26, S26, S19
325D18:  CMP             R5, #1
325D1A:  BNE             loc_325D24
325D1C:  MOVS            R0, #0
325D1E:  STRB.W          R0, [R7,#var_C4]
325D22:  B               loc_325D42
325D24:  BLX             rand
325D28:  ANDS.W          R0, R0, #1
325D2C:  STRB.W          R0, [R7,#var_C4]
325D30:  BEQ             loc_325D42
325D32:  VCMPE.F32       S26, S21
325D36:  VMRS            APSR_nzcv, FPSCR
325D3A:  BLT             loc_325D4C
325D3C:  VSUB.F32        S26, S26, S21
325D40:  B               loc_325D60
325D42:  VCMPE.F32       S26, S19
325D46:  VMRS            APSR_nzcv, FPSCR
325D4A:  BGE             loc_325D50
325D4C:  MOVS            R0, #2
325D4E:  B               loc_325DCE
325D50:  VSUB.F32        S26, S26, S19
325D54:  CMP             R5, #1
325D56:  BNE             loc_325D60
325D58:  MOVS            R0, #0
325D5A:  STRB.W          R0, [R7,#var_C3]
325D5E:  B               loc_325D7E
325D60:  BLX             rand
325D64:  ANDS.W          R0, R0, #1
325D68:  STRB.W          R0, [R7,#var_C3]
325D6C:  BEQ             loc_325D7E
325D6E:  VCMPE.F32       S26, S21
325D72:  VMRS            APSR_nzcv, FPSCR
325D76:  BLT             loc_325D88
325D78:  VSUB.F32        S26, S26, S21
325D7C:  B               loc_325D9C
325D7E:  VCMPE.F32       S26, S19
325D82:  VMRS            APSR_nzcv, FPSCR
325D86:  BGE             loc_325D8C
325D88:  MOVS            R0, #3
325D8A:  B               loc_325DCE
325D8C:  VSUB.F32        S26, S26, S19
325D90:  CMP             R5, #1
325D92:  BNE             loc_325D9C
325D94:  MOVS            R0, #0
325D96:  STRB.W          R0, [R7,#var_C2]
325D9A:  B               loc_325DBA
325D9C:  BLX             rand
325DA0:  ANDS.W          R0, R0, #1
325DA4:  STRB.W          R0, [R7,#var_C2]
325DA8:  BEQ             loc_325DBA
325DAA:  VCMPE.F32       S26, S21
325DAE:  VMRS            APSR_nzcv, FPSCR
325DB2:  BLT             loc_325DC4
325DB4:  VSUB.F32        S26, S26, S21
325DB8:  B               loc_325DCC
325DBA:  VCMPE.F32       S26, S19
325DBE:  VMRS            APSR_nzcv, FPSCR
325DC2:  BGE             loc_325DC8
325DC4:  MOVS            R0, #4
325DC6:  B               loc_325DCE
325DC8:  VSUB.F32        S26, S26, S19
325DCC:  MOVS            R0, #5
325DCE:  ADDS            R1, R0, #1
325DD0:  ADR.W           R6, dword_326704
325DD4:  CMP.W           R11, #0
325DD8:  ADR.W           R2, dword_32670C
325DDC:  VMOV            S0, R1
325DE0:  MOV.W           R3, #2
325DE4:  SUB.W           R1, R0, #1
325DE8:  VLDR            S31, =0.3
325DEC:  VCVT.F32.S32    S0, S0
325DF0:  IT NE
325DF2:  ADDNE           R6, #4
325DF4:  IT NE
325DF6:  ADDNE           R2, #4
325DF8:  CMP             R0, #3
325DFA:  IT HI
325DFC:  MOVHI           R3, #1
325DFE:  SUB.W           R0, R7, #-var_C6
325E02:  STR             R3, [SP,#0x140+var_118]
325E04:  ADDS            R3, R0, #1
325E06:  ADD             R0, SP, #0x140+var_F4
325E08:  VLDR            S25, [R2]
325E0C:  ADDS            R0, #4
325E0E:  STR             R0, [SP,#0x140+var_134]
325E10:  LDR.W           R0, =(MI_ROADBLOCKFUCKEDCAR1_ptr - 0x325E1C)
325E14:  VDIV.F32        S28, S26, S0
325E18:  ADD             R0, PC; MI_ROADBLOCKFUCKEDCAR1_ptr
325E1A:  LDR             R0, [R0]; MI_ROADBLOCKFUCKEDCAR1
325E1C:  STR             R0, [SP,#0x140+var_108]
325E1E:  LDR.W           R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x325E26)
325E22:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
325E24:  LDR             R0, [R0]; CObject::nNoTempObjects ...
325E26:  STR             R0, [SP,#0x140+var_10C]
325E28:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x325E30)
325E2C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
325E2E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
325E30:  STR             R0, [SP,#0x140+var_110]
325E32:  LDR.W           R0, =(gFireManager_ptr - 0x325E3A)
325E36:  ADD             R0, PC; gFireManager_ptr
325E38:  VMUL.F32        S0, S19, S22
325E3C:  LDR             R0, [R0]; gFireManager
325E3E:  STR             R0, [SP,#0x140+var_114]
325E40:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x325E48)
325E44:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
325E46:  VADD.F32        S23, S0, S28
325E4A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
325E4C:  STR             R0, [SP,#0x140+var_11C]
325E4E:  LDR.W           R0, =(gFireManager_ptr - 0x325E5C)
325E52:  VLDR            S0, [R6]
325E56:  ADD             R6, SP, #0x140+var_C0
325E58:  ADD             R0, PC; gFireManager_ptr
325E5A:  VSTR            S0, [SP,#0x140+var_100]
325E5E:  LDR             R0, [R0]; gFireManager
325E60:  STR             R0, [SP,#0x140+var_130]
325E62:  B               loc_325E72
325E64:  LDR             R3, [SP,#0x140+var_FC]
325E66:  VADD.F32        S28, S23, S28
325E6A:  SUBS            R1, #1
325E6C:  MOV             R6, R8
325E6E:  LDRB.W          R4, [R3],#1
325E72:  LSLS            R5, R4, #0x18
325E74:  STRD.W          R3, R1, [SP,#0x140+var_FC]
325E78:  BEQ             loc_325EC6
325E7A:  ADD             R2, SP, #0x140+var_78
325E7C:  MOV.W           R9, #0
325E80:  LDM             R2, {R0-R2}
325E82:  STRD.W          R0, R1, [SP,#0x140+var_B0]
325E86:  EOR.W           R0, R0, #0x80000000
325E8A:  STR.W           R9, [SP,#0x140+var_B8]
325E8E:  STR             R2, [SP,#0x140+var_A8]
325E90:  STR             R1, [SP,#0x140+var_C0]
325E92:  MOV.W           R1, #0x3F800000
325E96:  STRD.W          R9, R9, [SP,#0x140+var_A0]
325E9A:  STR             R1, [SP,#0x140+var_98]
325E9C:  STR             R0, [SP,#0x140+var_BC]
325E9E:  BLX             rand
325EA2:  MOV             R1, #0xFFFFFF80
325EA6:  UXTAB.W         R0, R1, R0
325EAA:  VMOV            S0, R0
325EAE:  MOV             R0, R6; this
325EB0:  VCVT.F32.S32    S0, S0
325EB4:  VMUL.F32        S0, S25, S0
325EB8:  VMOV            R1, S0; x
325EBC:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
325EC0:  VMOV.F32        S0, S21
325EC4:  B               loc_325FA2
325EC6:  CMP.W           R11, #0
325ECA:  BEQ             loc_325EE2
325ECC:  BLX             rand
325ED0:  AND.W           R0, R0, #0xC0
325ED4:  MOV.W           R9, #0
325ED8:  CMP             R0, #0x40 ; '@'
325EDA:  IT CC
325EDC:  MOVCC.W         R9, #1
325EE0:  B               loc_325EE6
325EE2:  MOV.W           R9, #0
325EE6:  LDRD.W          R1, R0, [SP,#0x140+var_6C]
325EEA:  CMP.W           R9, #0
325EEE:  LDR             R2, [SP,#0x140+var_64]
325EF0:  STR             R1, [SP,#0x140+var_B0]
325EF2:  VMOV            S0, R1
325EF6:  STRD.W          R0, R2, [SP,#0x140+var_AC]
325EFA:  BEQ             loc_325F16
325EFC:  EOR.W           R0, R0, #0x80000000
325F00:  MOVS            R1, #0
325F02:  STRD.W          R1, R1, [SP,#0x140+var_C0]
325F06:  VMOV            S2, R0
325F0A:  MOV.W           R0, #0x3F800000
325F0E:  STR             R0, [SP,#0x140+var_B8]
325F10:  VLDR            S4, =0.0
325F14:  B               loc_325F30
325F16:  VNEG.F32        S0, S0
325F1A:  STR             R0, [SP,#0x140+var_C0]
325F1C:  MOVS            R0, #0
325F1E:  VMOV.F32        S4, #1.0
325F22:  STR             R0, [SP,#0x140+var_B8]
325F24:  VSTR            S0, [SP,#0x140+var_BC]
325F28:  VLDR            S0, =0.0
325F2C:  VMOV.F32        S2, S0
325F30:  VSTR            S0, [SP,#0x140+var_9C]
325F34:  VSTR            S2, [SP,#0x140+var_A0]
325F38:  VSTR            S4, [SP,#0x140+var_98]
325F3C:  BLX             rand
325F40:  TST.W           R0, #1
325F44:  BEQ             loc_325F78
325F46:  MOVW            R1, #0xFDB
325F4A:  MOV             R0, R6; this
325F4C:  MOVT            R1, #0x4049; x
325F50:  CMP.W           R9, #1
325F54:  BNE             loc_325F74
325F56:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
325F5A:  B               loc_325F78
325F5C:  DCFS 0.2
325F60:  DCFS 0.3
325F64:  DCFS 0.0
325F68:  DCFS -0.6
325F6C:  DCFS 0.000015259
325F70:  DCFS 0.94
325F74:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
325F78:  BLX             rand
325F7C:  MOV             R1, #0xFFFFFF80
325F80:  UXTAB.W         R0, R1, R0
325F84:  VMOV            S0, R0
325F88:  MOV             R0, R6; this
325F8A:  VCVT.F32.S32    S0, S0
325F8E:  VLDR            S2, [SP,#0x140+var_100]
325F92:  VMUL.F32        S0, S2, S0
325F96:  VMOV            R1, S0; x
325F9A:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
325F9E:  VMOV.F32        S0, S19
325FA2:  VMUL.F32        S0, S0, S22
325FA6:  VLDR            S2, [SP,#0x140+var_68]
325FAA:  VLDR            S4, [SP,#0x140+var_64]
325FAE:  MOV             R0, R6; this
325FB0:  VADD.F32        S28, S28, S0
325FB4:  VLDR            S0, [SP,#0x140+var_6C]
325FB8:  VMUL.F32        S0, S0, S28
325FBC:  VMUL.F32        S2, S2, S28
325FC0:  VMUL.F32        S4, S28, S4
325FC4:  VADD.F32        S0, S0, S18
325FC8:  VADD.F32        S2, S2, S20
325FCC:  VADD.F32        S4, S4, S16
325FD0:  VMOV            R1, S0; float
325FD4:  VMOV            R2, S2; float
325FD8:  VMOV            R3, S4; float
325FDC:  BLX             j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
325FE0:  CMP.W           R9, #0
325FE4:  MOV             R0, R10
325FE6:  IT EQ
325FE8:  ADDEQ           R0, #8
325FEA:  VLDR            S2, [SP,#0x140+var_88]
325FEE:  VLDR            S0, [R0]
325FF2:  ADD             R4, SP, #0x140+var_F4
325FF4:  MOV             R1, R10; CMatrix *
325FF6:  MOV             R2, R6
325FF8:  VSUB.F32        S0, S31, S0
325FFC:  MOV             R0, R4; CVector *
325FFE:  VADD.F32        S0, S2, S0
326002:  VSTR            S0, [SP,#0x140+var_88]
326006:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
32600A:  ADD             R1, SP, #0x140+var_E8; CMatrix *
32600C:  MOV             R0, R4; CVector *
32600E:  MOV             R2, R6
326010:  VLDR            S30, [SP,#0x140+var_F4]
326014:  VLDR            S17, [SP,#0x140+var_F0]
326018:  MOV             R8, R6
32601A:  VLDR            S26, [SP,#0x140+var_EC]
32601E:  VLDR            S24, [SP,#0x140+var_90]
326022:  VLDR            S29, [SP,#0x140+var_8C]
326026:  VLDR            S27, [SP,#0x140+var_88]
32602A:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
32602E:  VLDR            S0, [SP,#0x140+var_F4]
326032:  VADD.F32        S6, S17, S29
326036:  VLDR            S10, [SP,#0x140+var_90]
32603A:  VADD.F32        S8, S30, S24
32603E:  VADD.F32        S1, S26, S27
326042:  VLDR            S2, [SP,#0x140+var_F0]
326046:  VADD.F32        S0, S0, S10
32604A:  VLDR            S12, [SP,#0x140+var_8C]
32604E:  VLDR            S4, [SP,#0x140+var_EC]
326052:  VLDR            S14, [SP,#0x140+var_88]
326056:  VADD.F32        S2, S2, S12
32605A:  VMOV            R1, S6
32605E:  VMOV            R0, S8
326062:  VMOV            R2, S1
326066:  VMOV            R3, S0
32606A:  VADD.F32        S0, S4, S14
32606E:  VSTR            S2, [SP,#0x140+var_140]
326072:  VSTR            S0, [SP,#0x140+var_13C]
326076:  BLX             j__ZN11CRoadBlocks28ClearSpaceForRoadBlockObjectE7CVectorS0_; CRoadBlocks::ClearSpaceForRoadBlockObject(CVector,CVector)
32607A:  CMP             R0, #1
32607C:  BNE.W           loc_3263CC
326080:  CMP.W           R11, #0
326084:  BEQ             loc_3260CE
326086:  CMP.W           R9, #0
32608A:  BNE             loc_326098
32608C:  BLX             rand
326090:  AND.W           R0, R0, #0xC0
326094:  CMP             R0, #0x3F ; '?'
326096:  BHI             loc_3260CE
326098:  MOV.W           R0, #(elf_hash_bucket+0x88); this
32609C:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
3260A0:  MOV             R4, R0
3260A2:  LDR             R0, [SP,#0x140+var_108]
3260A4:  MOVS            R2, #1; bool
3260A6:  LDRH            R1, [R0]; int
3260A8:  MOV             R0, R4; this
3260AA:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
3260AE:  LDR             R0, [R4,#0x14]
3260B0:  MOV             R1, R8
3260B2:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3260B6:  LDRD.W          R2, R1, [SP,#0x140+var_90]
3260BA:  LDR             R3, [R4,#0x14]
3260BC:  LDR             R0, [SP,#0x140+var_88]
3260BE:  CMP             R3, #0
3260C0:  BEQ             loc_326146
3260C2:  STR             R2, [R3,#0x30]
3260C4:  LDR             R2, [R4,#0x14]
3260C6:  STR             R1, [R2,#0x34]
3260C8:  LDR             R1, [R4,#0x14]
3260CA:  ADDS            R1, #0x38 ; '8'
3260CC:  B               loc_32614E
3260CE:  MOVW            R0, #(elf_hash_bucket+0x8A0); this
3260D2:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
3260D6:  LDR             R1, [SP,#0x140+var_104]; int
3260D8:  MOVS            R2, #1; unsigned __int8
3260DA:  MOVS            R3, #1; unsigned __int8
3260DC:  MOV             R9, R0
3260DE:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
3260E2:  LDR.W           R0, [R9]
3260E6:  MOVS            R2, #4
3260E8:  LDRB.W          R1, [R9,#0x3A]
3260EC:  BFI.W           R1, R2, #3, #0x1D
3260F0:  STRB.W          R1, [R9,#0x3A]
3260F4:  LDR.W           R1, [R0,#0xD8]
3260F8:  MOV             R0, R9
3260FA:  BLX             R1
3260FC:  VMOV            S0, R0
326100:  VLDR            S2, =-0.6
326104:  MOV             R1, R8
326106:  VADD.F32        S0, S0, S2
32610A:  VLDR            S2, [SP,#0x140+var_88]
32610E:  VADD.F32        S0, S2, S0
326112:  VSTR            S0, [SP,#0x140+var_88]
326116:  LDR.W           R0, [R9,#0x14]
32611A:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
32611E:  MOV             R0, R9; this
326120:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
326124:  LDR.W           R0, [R9]
326128:  MOVS            R1, #0
32612A:  LDR             R2, [R0,#0x14]
32612C:  MOV             R0, R9
32612E:  BLX             R2
326130:  LDR.W           R0, [R9,#0x18]
326134:  CBZ             R0, loc_3261AE
326136:  LDR             R1, [R0,#4]
326138:  LDR.W           R0, [R9,#0x14]
32613C:  ADDS            R1, #0x10
32613E:  CBZ             R0, loc_3261A6
326140:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
326144:  B               loc_3261AE
326146:  STRD.W          R2, R1, [R4,#4]
32614A:  ADD.W           R1, R4, #0xC
32614E:  STR             R0, [R1]
326150:  MOVS            R1, #0
326152:  LDR             R0, [R4]
326154:  LDR             R2, [R0,#0x14]
326156:  MOV             R0, R4
326158:  BLX             R2
32615A:  LDR             R1, [SP,#0x140+var_10C]
32615C:  LDRH            R0, [R1]
32615E:  ADDS            R0, #1
326160:  STRH            R0, [R1]
326162:  MOVS            R0, #3
326164:  MOVW            R1, #:lower16:(aZ16setandroidp+0x10); "usedi"
326168:  STRB.W          R0, [R4,#0x140]
32616C:  MOVT            R1, #:upper16:(aZ16setandroidp+0x10); CEntity *
326170:  LDR             R0, [SP,#0x140+var_110]
326172:  LDR             R0, [R0]
326174:  ADD             R0, R1
326176:  STR.W           R0, [R4,#0x154]
32617A:  MOV             R0, R4; this
32617C:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
326180:  MOVS            R0, #1
326182:  MOVW            R3, #0x3333
326186:  STR             R0, [SP,#0x140+var_140]; unsigned __int8
326188:  MOVW            R0, #0xEA60
32618C:  STR             R0, [SP,#0x140+var_13C]; unsigned int
32618E:  MOVS            R0, #2
326190:  STR             R0, [SP,#0x140+var_138]; signed __int8
326192:  MOV             R1, R4; CEntity *
326194:  LDR             R0, [SP,#0x140+var_114]; this
326196:  MOVS            R2, #0; CEntity *
326198:  MOVT            R3, #0x4033; float
32619C:  BLX             j__ZN12CFireManager9StartFireEP7CEntityS1_fhja; CFireManager::StartFire(CEntity *,CEntity *,float,uchar,uint,signed char)
3261A0:  LDR.W           R0, [R4,#0x168]
3261A4:  B               loc_3263C2
3261A6:  ADD.W           R0, R9, #4
3261AA:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3261AE:  MOVS            R0, #1
3261B0:  STR.W           R0, [R9,#0x508]
3261B4:  MOV             R0, R9; this
3261B6:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
3261BA:  LDR.W           R0, [R9,#0x42C]
3261BE:  MOVS            R2, #0
3261C0:  LDR.W           R1, [R9,#0x430]
3261C4:  ADDW            R11, R9, #0x42C
3261C8:  BIC.W           R0, R0, #0x18
3261CC:  STRH.W          R2, [R9,#0x3BE]
3261D0:  STRH.W          R2, [R9,#0x3BB]
3261D4:  ORR.W           R1, R1, #0x40 ; '@'
3261D8:  STR.W           R2, [R9,#0x3CC]
3261DC:  STRB.W          R2, [R9,#0x3D4]
3261E0:  STR.W           R0, [R9,#0x42C]
3261E4:  LDR             R0, [R7,#arg_8]
3261E6:  STR.W           R1, [R9,#0x430]
3261EA:  CBZ             R0, loc_326242
3261EC:  BLX             rand
3261F0:  UXTH            R0, R0
3261F2:  VLDR            S2, =0.000015259
3261F6:  VMOV            S0, R0
3261FA:  VCVT.F32.S32    S0, S0
3261FE:  VMUL.F32        S0, S0, S2
326202:  VMOV.F32        S2, #4.0
326206:  VMUL.F32        S0, S0, S2
32620A:  VCVT.S32.F32    S0, S0
32620E:  VMOV            R0, S0
326212:  CBZ             R0, loc_326262
326214:  LDR.W           R0, [R9]
326218:  MOV.W           R10, #1
32621C:  MOVS            R1, #1
32621E:  MOVS            R2, #1
326220:  MOVS            R3, #1
326222:  LDR.W           R4, [R0,#0xAC]
326226:  MOV             R0, R9
326228:  STR.W           R10, [SP,#0x140+var_140]
32622C:  BLX             R4
32622E:  LDR.W           R0, [R9,#0x4E8]
326232:  MOV             R1, #0xF4240
32623A:  ADD             R0, R1
32623C:  STR.W           R0, [R9,#0x4E8]
326240:  B               loc_32626E
326242:  MOV             R0, R9; this
326244:  BLX             j__ZNK8CVehicle9UsesSirenEv; CVehicle::UsesSiren(void)
326248:  CBZ             R0, loc_32626A
32624A:  BLX             rand
32624E:  TST.W           R0, #1
326252:  ITTT NE
326254:  LDRNE.W         R0, [R11,#4]
326258:  ORRNE.W         R0, R0, #0x8000
32625C:  STRNE.W         R0, [R11,#4]
326260:  B               loc_32626A
326262:  MOV             R0, R9; this
326264:  MOVS            R1, #1; bool
326266:  BLX             j__ZN11CAutomobile14SetTotalDamageEb; CAutomobile::SetTotalDamage(bool)
32626A:  MOV.W           R10, #0
32626E:  LDR.W           R0, [R9,#0x14]
326272:  VLDR            S2, =0.94
326276:  VLDR            S0, [R0,#0x28]
32627A:  VCMPE.F32       S0, S2
32627E:  VMRS            APSR_nzcv, FPSCR
326282:  BLE             loc_32631E
326284:  LDR.W           R0, [R9,#0x18]
326288:  MOVS            R1, #0
32628A:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
32628E:  MOV             R0, R9; this
326290:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
326294:  LDR.W           R0, [R11]
326298:  CMP             R5, #0
32629A:  ORR.W           R0, R0, #0x100000
32629E:  STR.W           R0, [R11]
3262A2:  LDR             R0, [SP,#0x140+var_11C]
3262A4:  LDR             R1, [SP,#0x140+var_118]
3262A6:  LDR             R0, [R0]
3262A8:  STRB.W          R1, [R9,#0x4B8]
3262AC:  MOVW            R1, #0x1B58
3262B0:  ADD             R0, R1
3262B2:  STR.W           R0, [R9,#0x4E0]
3262B6:  BEQ             loc_326332
3262B8:  MOVS            R0, #2
3262BA:  STRB.W          R0, [R9,#0x4B7]
3262BE:  MOVS            R0, #2
3262C0:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
3262C4:  ADDW            R4, R9, #0x65C
3262C8:  MOV             R2, R0
3262CA:  LDR.W           R0, [R4,R2,LSL#2]
3262CE:  CBZ             R0, loc_3262E8
3262D0:  LDR.W           R0, [R9]
3262D4:  MOVS            R1, #0
3262D6:  MOVS            R3, #2
3262D8:  LDR             R6, [R0,#0x70]
3262DA:  MOV.W           R0, #0x3F800000
3262DE:  STR             R0, [SP,#0x140+var_140]
3262E0:  MOVS            R0, #1
3262E2:  STR             R0, [SP,#0x140+var_13C]
3262E4:  MOV             R0, R9
3262E6:  BLX             R6
3262E8:  LDRB.W          R0, [R9,#0x4B8]
3262EC:  LDR.W           R11, [R7,#arg_8]
3262F0:  CMP             R0, #2
3262F2:  BCC             loc_326394
3262F4:  MOVS            R0, #3
3262F6:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
3262FA:  MOV             R2, R0
3262FC:  LDR.W           R0, [R4,R2,LSL#2]
326300:  CMP             R0, #0
326302:  BEQ             loc_326394
326304:  LDR.W           R0, [R9]
326308:  MOVS            R1, #0
32630A:  MOVS            R3, #3
32630C:  LDR             R6, [R0,#0x70]
32630E:  MOV.W           R0, #0x3F800000
326312:  STR             R0, [SP,#0x140+var_140]
326314:  MOVS            R0, #1
326316:  STR             R0, [SP,#0x140+var_13C]
326318:  MOV             R0, R9
32631A:  BLX             R6
32631C:  B               loc_326394
32631E:  LDR.W           R0, [R9]
326322:  LDR             R1, [R0,#4]
326324:  MOV             R0, R9
326326:  BLX             R1
326328:  LDR.W           R11, [R7,#arg_8]
32632C:  ADD.W           R10, SP, #0x140+var_D8
326330:  B               loc_3263CC
326332:  ADD             R0, SP, #0x140+var_F4; int
326334:  MOV.W           R1, #0xFFFFFFFF
326338:  LDR.W           R4, [R9,#0x14]
32633C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
326340:  ADD.W           R0, R4, #0x30 ; '0'
326344:  CMP             R4, #0
326346:  VLDR            S0, [SP,#0x140+var_F4]
32634A:  IT EQ
32634C:  ADDEQ.W         R0, R9, #4
326350:  VLDR            S2, [R0]
326354:  LDR             R1, [SP,#0x140+var_134]
326356:  VSUB.F32        S0, S2, S0
32635A:  VLDR            D17, [R0,#4]
32635E:  VLDR            S2, [R4]
326362:  MOVS            R0, #0
326364:  VLDR            D16, [R1]
326368:  VSUB.F32        D16, D17, D16
32636C:  VLDR            D17, [R4,#4]
326370:  LDR.W           R11, [R7,#arg_8]
326374:  VMUL.F32        S0, S0, S2
326378:  VMUL.F32        D1, D16, D17
32637C:  VADD.F32        S0, S0, S2
326380:  VADD.F32        S0, S0, S3
326384:  VCMPE.F32       S0, #0.0
326388:  VMRS            APSR_nzcv, FPSCR
32638C:  IT GE
32638E:  MOVGE           R0, #1
326390:  STRB.W          R0, [R9,#0x4B7]
326394:  CMP.W           R10, #1
326398:  ADD.W           R10, SP, #0x140+var_D8
32639C:  BNE             loc_3263CC
32639E:  MOVS            R0, #1
3263A0:  MOVW            R3, #0x3333
3263A4:  STR             R0, [SP,#0x140+var_140]; unsigned __int8
3263A6:  MOVW            R0, #(elf_hash_bucket+0xE964)
3263AA:  STR             R0, [SP,#0x140+var_13C]; CEntity **
3263AC:  MOVS            R0, #2
3263AE:  STR             R0, [SP,#0x140+var_138]; signed __int8
3263B0:  MOV             R1, R9; CEntity *
3263B2:  LDR             R0, [SP,#0x140+var_130]; this
3263B4:  MOVS            R2, #0; CEntity *
3263B6:  MOVT            R3, #0x4033; float
3263BA:  BLX             j__ZN12CFireManager9StartFireEP7CEntityS1_fhja; CFireManager::StartFire(CEntity *,CEntity *,float,uchar,uint,signed char)
3263BE:  LDR.W           R0, [R9,#0x494]
3263C2:  CMP             R0, #0
3263C4:  ITT NE
3263C6:  MOVNE           R1, #0x5C ; '\'
3263C8:  STRBNE.W        R1, [R0,#0x21]
3263CC:  LDR             R1, [SP,#0x140+var_F8]
3263CE:  CMP             R1, #0
3263D0:  BNE.W           loc_325E64
3263D4:  VMOV.F32        S31, #2.0
3263D8:  VLDR            S0, [SP,#0x140+var_124]
3263DC:  VLDR            S2, [SP,#0x140+var_128]
3263E0:  CMP.W           R11, #0
3263E4:  VLDR            S4, [SP,#0x140+var_12C]
3263E8:  BNE.W           loc_3266E8
3263EC:  VLDR            S28, [SP,#0x140+var_120]
3263F0:  VMOV            R1, S0
3263F4:  LDR             R3, =(MI_ROADWORKBARRIER1_ptr - 0x326404)
3263F6:  VMOV            R2, S4
3263FA:  VMUL.F32        S0, S28, S22
3263FE:  LDR             R6, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x32640A)
326400:  ADD             R3, PC; MI_ROADWORKBARRIER1_ptr
326402:  VMOV            R0, S2
326406:  ADD             R6, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
326408:  LDR             R3, [R3]; MI_ROADWORKBARRIER1
32640A:  LDR             R6, [R6]; CModelInfo::ms_modelInfoPtrs ...
32640C:  LDRH            R5, [R3]
32640E:  VMOV            R3, S0
326412:  STR             R5, [SP,#0x140+var_F8]
326414:  LDR.W           R6, [R6,R5,LSL#2]
326418:  LDR             R6, [R6,#0x2C]
32641A:  VLDR            D16, [R6]
32641E:  LDR             R5, [R6,#8]
326420:  STR             R5, [SP,#0x140+var_D0]
326422:  VSTR            D16, [SP,#0x140+var_D8]
326426:  VLDR            D16, [R6,#0xC]
32642A:  LDR             R6, [R6,#0x14]
32642C:  VSTR            D16, [SP,#0x140+var_E8]
326430:  VLDR            S26, [SP,#0x140+var_E8]
326434:  VLDR            S24, [SP,#0x140+var_D8]
326438:  STR             R6, [SP,#0x140+var_E0]
32643A:  BLX             j__ZN7CObject26DeleteAllTempObjectsInAreaE7CVectorf; CObject::DeleteAllTempObjectsInArea(CVector,float)
32643E:  VSUB.F32        S0, S26, S24
326442:  VADD.F32        S26, S0, S22
326446:  VDIV.F32        S0, S28, S26
32644A:  VCVT.S32.F32    S0, S0
32644E:  VMOV            R0, S0
326452:  CMP             R0, #8
326454:  MOV             R9, R0
326456:  IT GE
326458:  MOVGE.W         R9, #8
32645C:  CMP             R0, #1
32645E:  ADD.W           R1, R9, #1
326462:  VMOV            S0, R9
326466:  VMOV            S2, R1
32646A:  VCVT.F32.S32    S0, S0
32646E:  VCVT.F32.S32    S2, S2
326472:  BLT.W           loc_3266E8
326476:  VMUL.F32        S0, S26, S0
32647A:  VLDR            S4, [SP,#0x140+var_120]
32647E:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x32648E)
326480:  VMOV.F32        S17, #5.0
326484:  ADD             R5, SP, #0x140+var_C0
326486:  VLDR            S30, =0.003
32648A:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
32648C:  VLDR            S19, =0.05
326490:  ADD             R4, SP, #0x140+var_F4
326492:  MOV.W           R10, #0
326496:  LDR.W           R8, [R0]; CObject::nNoTempObjects ...
32649A:  MOV.W           R6, #0x3F800000
32649E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3264AC)
3264A0:  MOV.W           R11, #0
3264A4:  VSUB.F32        S0, S4, S0
3264A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3264AA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3264AC:  STR             R0, [SP,#0x140+var_FC]
3264AE:  VDIV.F32        S28, S0, S2
3264B2:  MOV             R0, R5; this
3264B4:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
3264B8:  MOV             R0, R5; this
3264BA:  MOVS            R1, #0; float
3264BC:  MOVS            R2, #0; float
3264BE:  MOVS            R3, #0; float
3264C0:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
3264C4:  VLDR            S0, [SP,#0x140+var_6C]
3264C8:  STR.W           R10, [SP,#0x140+var_A8]
3264CC:  VNEG.F32        S2, S0
3264D0:  STRD.W          R10, R10, [SP,#0x140+var_A0]
3264D4:  LDR             R0, [SP,#0x140+var_64]
3264D6:  LDR             R1, [SP,#0x140+var_68]
3264D8:  STR             R6, [SP,#0x140+var_98]
3264DA:  STR             R1, [SP,#0x140+var_B0]
3264DC:  STRD.W          R1, R0, [SP,#0x140+var_BC]
3264E0:  VSTR            S0, [SP,#0x140+var_C0]
3264E4:  VSTR            S2, [SP,#0x140+var_AC]
3264E8:  BLX             rand
3264EC:  MOV             R1, #0xFFFFFF80
3264F0:  UXTAB.W         R0, R1, R0
3264F4:  VMOV            S0, R0
3264F8:  MOV             R0, R5; this
3264FA:  VCVT.F32.S32    S0, S0
3264FE:  VMUL.F32        S0, S0, S30
326502:  VMOV            R1, S0; x
326506:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
32650A:  VMOV            S0, R11
32650E:  ADD.W           R11, R11, #1
326512:  MOV             R0, R5; this
326514:  VCVT.F32.S32    S0, S0
326518:  VMOV            S2, R11
32651C:  VCVT.F32.S32    S2, S2
326520:  VLDR            S4, [SP,#0x140+var_68]
326524:  VLDR            S6, [SP,#0x140+var_64]
326528:  VLDR            S8, [SP,#0x140+var_78]
32652C:  VLDR            S10, [SP,#0x140+var_74]
326530:  VADD.F32        S0, S0, S22
326534:  VLDR            S12, [SP,#0x140+var_70]
326538:  VMUL.F32        S2, S28, S2
32653C:  VMUL.F32        S0, S26, S0
326540:  VADD.F32        S0, S2, S0
326544:  VLDR            S2, [SP,#0x140+var_6C]
326548:  VMUL.F32        S2, S0, S2
32654C:  VMUL.F32        S4, S0, S4
326550:  VMUL.F32        S0, S0, S6
326554:  VMUL.F32        S6, S8, S17
326558:  VMUL.F32        S8, S10, S17
32655C:  VMUL.F32        S10, S12, S17
326560:  VADD.F32        S2, S2, S18
326564:  VADD.F32        S4, S4, S20
326568:  VADD.F32        S0, S0, S16
32656C:  VADD.F32        S2, S2, S6
326570:  VADD.F32        S4, S4, S8
326574:  VADD.F32        S0, S0, S10
326578:  VMOV            R1, S2; float
32657C:  VMOV            R2, S4; float
326580:  VMOV            R3, S0; float
326584:  BLX             j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
326588:  BLX             rand
32658C:  AND.W           R0, R0, #0xF
326590:  VMOV            S0, R0
326594:  VCVT.F32.S32    S0, S0
326598:  VLDR            S2, [SP,#0x140+var_90]
32659C:  VMUL.F32        S0, S0, S19
3265A0:  VADD.F32        S0, S2, S0
3265A4:  VSTR            S0, [SP,#0x140+var_90]
3265A8:  BLX             rand
3265AC:  AND.W           R0, R0, #0xF
3265B0:  SUB.W           R3, R7, #-var_C1; float
3265B4:  VMOV            S0, R0
3265B8:  VCVT.F32.S32    S0, S0
3265BC:  VLDR            S4, [SP,#0x140+var_88]
3265C0:  VLDR            S2, [SP,#0x140+var_8C]
3265C4:  VADD.F32        S4, S4, S31
3265C8:  LDR             R0, [SP,#0x140+var_90]; this
3265CA:  STR.W           R10, [SP,#0x140+var_140]; bool *
3265CE:  VMUL.F32        S0, S0, S19
3265D2:  VMOV            R2, S4; float
3265D6:  VADD.F32        S0, S2, S0
3265DA:  VMOV            R1, S0; float
3265DE:  VSTR            S0, [SP,#0x140+var_8C]
3265E2:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
3265E6:  LDRB.W          R1, [R7,#var_C1]
3265EA:  STR             R0, [SP,#0x140+var_88]
3265EC:  CMP             R1, #0
3265EE:  BEQ             loc_3266E2
3265F0:  VMOV            S0, R0
3265F4:  VLDR            S2, [SP,#0x140+var_D0]
3265F8:  ADD             R1, SP, #0x140+var_D8; CMatrix *
3265FA:  MOV             R0, R4; CVector *
3265FC:  VSUB.F32        S0, S0, S2
326600:  MOV             R2, R5
326602:  VSTR            S0, [SP,#0x140+var_88]
326606:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
32660A:  ADD             R1, SP, #0x140+var_E8; CMatrix *
32660C:  MOV             R0, R4; CVector *
32660E:  MOV             R2, R5
326610:  VLDR            S24, [SP,#0x140+var_F4]
326614:  VLDR            S21, [SP,#0x140+var_F0]
326618:  VLDR            S23, [SP,#0x140+var_EC]
32661C:  VLDR            S25, [SP,#0x140+var_90]
326620:  VLDR            S27, [SP,#0x140+var_8C]
326624:  VLDR            S29, [SP,#0x140+var_88]
326628:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
32662C:  VLDR            S0, [SP,#0x140+var_F4]
326630:  VADD.F32        S6, S21, S27
326634:  VLDR            S10, [SP,#0x140+var_90]
326638:  VADD.F32        S8, S24, S25
32663C:  VADD.F32        S1, S23, S29
326640:  VLDR            S2, [SP,#0x140+var_F0]
326644:  VADD.F32        S0, S0, S10
326648:  VLDR            S12, [SP,#0x140+var_8C]
32664C:  VLDR            S4, [SP,#0x140+var_EC]
326650:  VLDR            S14, [SP,#0x140+var_88]
326654:  VADD.F32        S2, S2, S12
326658:  VMOV            R1, S6
32665C:  VMOV            R0, S8
326660:  VMOV            R2, S1
326664:  VMOV            R3, S0
326668:  VADD.F32        S0, S4, S14
32666C:  VSTR            S2, [SP,#0x140+var_140]
326670:  VSTR            S0, [SP,#0x140+var_13C]
326674:  BLX             j__ZN11CRoadBlocks28ClearSpaceForRoadBlockObjectE7CVectorS0_; CRoadBlocks::ClearSpaceForRoadBlockObject(CVector,CVector)
326678:  CMP             R0, #1
32667A:  BNE             loc_3266E2
32667C:  MOV.W           R0, #(elf_hash_bucket+0x88); this
326680:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
326684:  LDR             R1, [SP,#0x140+var_F8]; int
326686:  MOVS            R2, #1; bool
326688:  MOV             R6, R0
32668A:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
32668E:  LDR             R0, [R6,#0x14]
326690:  MOV             R1, R5
326692:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
326696:  LDRD.W          R2, R1, [SP,#0x140+var_90]
32669A:  LDR             R3, [R6,#0x14]
32669C:  LDR             R0, [SP,#0x140+var_88]
32669E:  CBZ             R3, loc_3266AC
3266A0:  STR             R2, [R3,#0x30]
3266A2:  LDR             R2, [R6,#0x14]
3266A4:  STR             R1, [R2,#0x34]
3266A6:  LDR             R1, [R6,#0x14]
3266A8:  ADDS            R1, #0x38 ; '8'
3266AA:  B               loc_3266B4
3266AC:  STRD.W          R2, R1, [R6,#4]
3266B0:  ADD.W           R1, R6, #0xC
3266B4:  STR             R0, [R1]
3266B6:  MOVW            R1, #:lower16:(aZ16setandroidp+0x10); "usedi"
3266BA:  LDRH.W          R0, [R8]; CObject::nNoTempObjects
3266BE:  MOVT            R1, #:upper16:(aZ16setandroidp+0x10); CEntity *
3266C2:  ADDS            R0, #1
3266C4:  STRH.W          R0, [R8]; CObject::nNoTempObjects
3266C8:  MOVS            R0, #3
3266CA:  STRB.W          R0, [R6,#0x140]
3266CE:  LDR             R0, [SP,#0x140+var_FC]
3266D0:  LDR             R0, [R0]
3266D2:  ADD             R0, R1
3266D4:  STR.W           R0, [R6,#0x154]
3266D8:  MOV             R0, R6; this
3266DA:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
3266DE:  MOV.W           R6, #0x3F800000
3266E2:  CMP             R11, R9
3266E4:  BLT.W           loc_3264B2
3266E8:  ADD             R0, SP, #0x140+var_C0; this
3266EA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3266EE:  ADD             SP, SP, #0xE0
3266F0:  VPOP            {D8-D15}
3266F4:  ADD             SP, SP, #4
3266F6:  POP.W           {R8-R11}
3266FA:  POP             {R4-R7,PC}
