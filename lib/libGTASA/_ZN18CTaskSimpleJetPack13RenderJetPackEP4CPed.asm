; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack13RenderJetPackEP4CPed
; Address            : 0x531E94 - 0x532178
; =========================================================

531E94:  PUSH            {R4-R7,LR}
531E96:  ADD             R7, SP, #0xC
531E98:  PUSH.W          {R8-R11}
531E9C:  SUB             SP, SP, #4
531E9E:  VPUSH           {D8-D11}
531EA2:  SUB             SP, SP, #0x10
531EA4:  MOV             R4, R0
531EA6:  MOV             R5, R1
531EA8:  LDR             R0, [R4,#0x40]
531EAA:  CBZ             R0, loc_531EB0
531EAC:  LDRB            R0, [R4,#8]
531EAE:  CBZ             R0, loc_531ECE
531EB0:  LDR             R0, [R4,#0x64]; this
531EB2:  CBZ             R0, loc_531EBC
531EB4:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
531EB8:  MOVS            R0, #0
531EBA:  STR             R0, [R4,#0x64]
531EBC:  LDR             R0, [R4,#0x68]; this
531EBE:  CMP             R0, #0
531EC0:  BEQ.W           loc_532164
531EC4:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
531EC8:  MOVS            R0, #0
531ECA:  STR             R0, [R4,#0x68]
531ECC:  B               loc_532164
531ECE:  LDR             R0, [R5,#0x18]
531ED0:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
531ED4:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
531ED8:  ADD.W           R2, R0, #0xD0
531EDC:  ADD.W           R1, R0, #0xE0
531EE0:  VLD1.32         {D18-D19}, [R2]
531EE4:  ADD.W           R3, R0, #0xC0
531EE8:  ADDS            R0, #0xF0
531EEA:  LDR             R2, [R4,#0x40]
531EEC:  VLD1.32         {D16-D17}, [R1]
531EF0:  LDR.W           R9, [R2,#4]
531EF4:  MOVS            R2, #1
531EF6:  LDR             R1, =(JETPACK_POS_OFFSET_ptr - 0x531F04)
531EF8:  VLD1.32         {D22-D23}, [R0]
531EFC:  ADD.W           R0, R9, #0x40 ; '@'
531F00:  ADD             R1, PC; JETPACK_POS_OFFSET_ptr
531F02:  ADD.W           R6, R9, #0x10
531F06:  VLD1.32         {D20-D21}, [R3]
531F0A:  VST1.32         {D22-D23}, [R0]
531F0E:  ADD.W           R0, R9, #0x30 ; '0'
531F12:  VST1.32         {D16-D17}, [R0]
531F16:  ADD.W           R0, R9, #0x20 ; ' '
531F1A:  LDR             R1, [R1]; JETPACK_POS_OFFSET
531F1C:  VST1.32         {D18-D19}, [R0]
531F20:  MOV             R0, R6
531F22:  VST1.32         {D20-D21}, [R6]
531F26:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
531F2A:  LDR             R0, =(JETPACK_ROT_AXIS_ptr - 0x531F38)
531F2C:  MOVS            R2, #0x42B40000
531F32:  MOVS            R3, #1
531F34:  ADD             R0, PC; JETPACK_ROT_AXIS_ptr
531F36:  LDR             R1, [R0]; JETPACK_ROT_AXIS
531F38:  MOV             R0, R6
531F3A:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
531F3E:  VLDR            S16, =3.1416
531F42:  ADD.W           R0, R5, #0x560
531F46:  VLDR            S0, [R4,#0x3C]
531F4A:  VLDR            S2, [R0]
531F4E:  VADD.F32        S4, S0, S16
531F52:  VCMPE.F32       S2, S4
531F56:  VMRS            APSR_nzcv, FPSCR
531F5A:  BLE             loc_531F62
531F5C:  VLDR            S4, =-6.2832
531F60:  B               loc_531F78
531F62:  VLDR            S4, =-3.1416
531F66:  VADD.F32        S4, S0, S4
531F6A:  VCMPE.F32       S2, S4
531F6E:  VMRS            APSR_nzcv, FPSCR
531F72:  BGE             loc_531F7C
531F74:  VLDR            S4, =6.2832
531F78:  VADD.F32        S2, S2, S4
531F7C:  VSUB.F32        S2, S2, S0
531F80:  VLDR            S0, =0.2
531F84:  VCMPE.F32       S2, S0
531F88:  VMRS            APSR_nzcv, FPSCR
531F8C:  BGT             loc_531FA4
531F8E:  VLDR            S4, =-0.2
531F92:  VMOV.F32        S0, S2
531F96:  VCMPE.F32       S2, S4
531F9A:  VMRS            APSR_nzcv, FPSCR
531F9E:  IT LT
531FA0:  VMOVLT.F32      S0, S4
531FA4:  VLDR            S20, =180.0
531FA8:  VMOV.F32        S2, #10.0
531FAC:  LDR             R1, =(aJetball1 - 0x531FB8); "jetball1"
531FAE:  VMUL.F32        S0, S0, S20
531FB2:  LDR             R0, [R4,#0x40]
531FB4:  ADD             R1, PC; "jetball1"
531FB6:  VDIV.F32        S0, S0, S16
531FBA:  VMUL.F32        S18, S0, S2
531FBE:  BLX             j__ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc; CClumpModelInfo::GetFrameFromName(RpClump *,char const*)
531FC2:  CMP             R0, #0
531FC4:  BEQ             loc_532082
531FC6:  VLDR            D16, [R0,#0x40]
531FCA:  ADD.W           R11, R0, #0x40 ; '@'
531FCE:  LDR             R1, [R0,#0x48]
531FD0:  ADD.W           R8, R0, #0x10
531FD4:  STR             R1, [SP,#0x50+var_48]
531FD6:  VSTR            D16, [SP,#0x50+var_50]
531FDA:  LDRB            R1, [R4,#0xD]
531FDC:  CBZ             R1, loc_53201C
531FDE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x531FE8)
531FE0:  VLDR            S2, =79.577
531FE4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
531FE6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
531FE8:  VLDR            S0, [R0]
531FEC:  VCVT.F32.U32    S0, S0
531FF0:  VDIV.F32        S0, S0, S2
531FF4:  VMOV            R6, S0
531FF8:  MOV             R0, R6; x
531FFA:  BLX             sinf
531FFE:  MOV             R10, R0
532000:  MOV             R0, R6; x
532002:  BLX             cosf
532006:  VLDR            S0, =45.0
53200A:  VMOV            S2, R0
53200E:  VMOV            S4, R10
532012:  VMUL.F32        S22, S2, S0
532016:  VMUL.F32        S0, S4, S0
53201A:  B               loc_532050
53201C:  VLDR            S2, [R4,#0x14]
532020:  VLDR            S0, [R4,#0x10]
532024:  VMUL.F32        S2, S2, S20
532028:  VLDR            S4, =45.0
53202C:  VLDR            S6, =0.0
532030:  VMUL.F32        S0, S0, S4
532034:  VLDR            S4, =90.0
532038:  VDIV.F32        S2, S2, S16
53203C:  VADD.F32        S2, S18, S2
532040:  VMAX.F32        D11, D0, D3
532044:  VMIN.F32        D16, D1, D2
532048:  VLDR            S2, =-90.0
53204C:  VMAX.F32        D0, D16, D1
532050:  VMOV            R2, S0
532054:  LDR             R0, =(_ZN6CPedIK7XaxisIKE_ptr - 0x53205C)
532056:  MOVS            R3, #0
532058:  ADD             R0, PC; _ZN6CPedIK7XaxisIKE_ptr
53205A:  LDR             R1, [R0]; CPedIK::XaxisIK ...
53205C:  MOV             R0, R8
53205E:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
532062:  VMOV            R2, S22
532066:  LDR             R0, =(_ZN6CPedIK7YaxisIKE_ptr - 0x53206E)
532068:  MOVS            R3, #1
53206A:  ADD             R0, PC; _ZN6CPedIK7YaxisIKE_ptr
53206C:  LDR             R1, [R0]; CPedIK::YaxisIK ...
53206E:  MOV             R0, R8
532070:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
532074:  VLDR            D16, [SP,#0x50+var_50]
532078:  LDR             R0, [SP,#0x50+var_48]
53207A:  STR.W           R0, [R11,#8]
53207E:  VSTR            D16, [R11]
532082:  LDR             R1, =(aJetball2 - 0x53208A); "jetball2"
532084:  LDR             R0, [R4,#0x40]
532086:  ADD             R1, PC; "jetball2"
532088:  BLX             j__ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc; CClumpModelInfo::GetFrameFromName(RpClump *,char const*)
53208C:  CMP             R0, #0
53208E:  BEQ             loc_532150
532090:  VLDR            D16, [R0,#0x40]
532094:  ADD.W           R11, R0, #0x40 ; '@'
532098:  LDR             R1, [R0,#0x48]
53209A:  ADD.W           R8, R0, #0x10
53209E:  STR             R1, [SP,#0x50+var_48]
5320A0:  VSTR            D16, [SP,#0x50+var_50]
5320A4:  LDRB            R1, [R4,#0xD]
5320A6:  CBZ             R1, loc_5320EA
5320A8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5320B2)
5320AA:  VLDR            S2, =79.577
5320AE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5320B0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5320B2:  VLDR            S0, [R0]
5320B6:  VCVT.F32.U32    S0, S0
5320BA:  VDIV.F32        S0, S0, S2
5320BE:  VMOV            R6, S0
5320C2:  MOV             R0, R6; x
5320C4:  BLX             sinf
5320C8:  MOV             R10, R0
5320CA:  MOV             R0, R6; x
5320CC:  BLX             cosf
5320D0:  VLDR            S0, =45.0
5320D4:  VMOV            S2, R0
5320D8:  VLDR            S4, =-45.0
5320DC:  VMOV            S6, R10
5320E0:  VMUL.F32        S16, S2, S0
5320E4:  VMUL.F32        S0, S6, S4
5320E8:  B               loc_53211E
5320EA:  VLDR            S2, [R4,#0x14]
5320EE:  VLDR            S0, [R4,#0x10]
5320F2:  VMUL.F32        S2, S2, S20
5320F6:  VLDR            S4, =45.0
5320FA:  VLDR            S6, =0.0
5320FE:  VMUL.F32        S0, S0, S4
532102:  VLDR            S4, =90.0
532106:  VDIV.F32        S2, S2, S16
53210A:  VSUB.F32        S2, S2, S18
53210E:  VMIN.F32        D8, D0, D3
532112:  VMIN.F32        D16, D1, D2
532116:  VLDR            S2, =-90.0
53211A:  VMAX.F32        D0, D16, D1
53211E:  VMOV            R2, S0
532122:  LDR             R0, =(_ZN6CPedIK7XaxisIKE_ptr - 0x53212A)
532124:  MOVS            R3, #0
532126:  ADD             R0, PC; _ZN6CPedIK7XaxisIKE_ptr
532128:  LDR             R1, [R0]; CPedIK::XaxisIK ...
53212A:  MOV             R0, R8
53212C:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
532130:  VMOV            R2, S16
532134:  LDR             R0, =(_ZN6CPedIK7YaxisIKE_ptr - 0x53213C)
532136:  MOVS            R3, #1
532138:  ADD             R0, PC; _ZN6CPedIK7YaxisIKE_ptr
53213A:  LDR             R1, [R0]; CPedIK::YaxisIK ...
53213C:  MOV             R0, R8
53213E:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
532142:  VLDR            D16, [SP,#0x50+var_50]
532146:  LDR             R0, [SP,#0x50+var_48]
532148:  STR.W           R0, [R11,#8]
53214C:  VSTR            D16, [R11]
532150:  MOV             R0, R9
532152:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
532156:  LDR             R0, [R4,#0x40]
532158:  BLX             j__Z13RpClumpRenderP7RpClump; RpClumpRender(RpClump *)
53215C:  MOV             R0, R4; this
53215E:  MOV             R1, R5; CPed *
532160:  BLX             j__ZN18CTaskSimpleJetPack15DoJetPackEffectEP4CPed; CTaskSimpleJetPack::DoJetPackEffect(CPed *)
532164:  LDR.W           R0, [R5,#0x55C]
532168:  STR             R0, [R4,#0x3C]
53216A:  ADD             SP, SP, #0x10
53216C:  VPOP            {D8-D11}
532170:  ADD             SP, SP, #4
532172:  POP.W           {R8-R11}
532176:  POP             {R4-R7,PC}
