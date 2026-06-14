; =========================================================
; Game Engine Function: _ZN4CCam25Process_1rstPersonPedOnPCERK7CVectorfff
; Address            : 0x3CC030 - 0x3CC846
; =========================================================

3CC030:  PUSH            {R4-R7,LR}
3CC032:  ADD             R7, SP, #0xC
3CC034:  PUSH.W          {R8-R10}
3CC038:  VPUSH           {D8-D10}
3CC03C:  SUB             SP, SP, #0x48
3CC03E:  MOV             R4, R0
3CC040:  LDR.W           R0, =(byte_952E3C - 0x3CC04A)
3CC044:  MOV             R8, R2
3CC046:  ADD             R0, PC; byte_952E3C
3CC048:  LDRB            R0, [R0]
3CC04A:  DMB.W           ISH
3CC04E:  TST.W           R0, #1
3CC052:  BNE             loc_3CC06A
3CC054:  LDR.W           R0, =(byte_952E3C - 0x3CC05C)
3CC058:  ADD             R0, PC; byte_952E3C ; __guard *
3CC05A:  BLX             j___cxa_guard_acquire
3CC05E:  CBZ             R0, loc_3CC06A
3CC060:  LDR.W           R0, =(byte_952E3C - 0x3CC068)
3CC064:  ADD             R0, PC; byte_952E3C ; __guard *
3CC066:  BLX             j___cxa_guard_release
3CC06A:  LDRH            R0, [R4,#0xE]
3CC06C:  MOVS            R1, #0
3CC06E:  CMP             R0, #0x27 ; '''
3CC070:  ITTT NE
3CC072:  MOVNE           R0, #0
3CC074:  MOVTNE          R0, #0x428C
3CC078:  STRNE.W         R0, [R4,#0x8C]
3CC07C:  LDR.W           R0, =(TheCamera_ptr - 0x3CC084)
3CC080:  ADD             R0, PC; TheCamera_ptr
3CC082:  LDR             R0, [R0]; TheCamera
3CC084:  STRB.W          R1, [R0,#(byte_951FE4 - 0x951FA8)]
3CC088:  LDR.W           R1, [R4,#0x1F4]
3CC08C:  LDR             R0, [R1,#0x18]
3CC08E:  CMP             R0, #0
3CC090:  BEQ.W           loc_3CC83A
3CC094:  LDRB.W          R1, [R1,#0x3A]
3CC098:  AND.W           R1, R1, #7
3CC09C:  CMP             R1, #3
3CC09E:  BNE.W           loc_3CC20A
3CC0A2:  LDR.W           R1, =(dword_952E20 - 0x3CC0AE)
3CC0A6:  ADD.W           R10, R4, #0x1F4
3CC0AA:  ADD             R1, PC; dword_952E20
3CC0AC:  VLDR            D16, [R1]
3CC0B0:  LDR             R1, [R1,#(dword_952E28 - 0x952E20)]
3CC0B2:  STR             R1, [SP,#0x78+var_58]
3CC0B4:  VSTR            D16, [SP,#0x78+var_60]
3CC0B8:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
3CC0BC:  MOV             R6, R0
3CC0BE:  MOVS            R0, #2; int
3CC0C0:  BLX             j__Z22ConvertPedNode2BoneTagi; ConvertPedNode2BoneTag(int)
3CC0C4:  MOV             R1, R0
3CC0C6:  MOV             R0, R6
3CC0C8:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
3CC0CC:  MOV             R5, R0
3CC0CE:  MOV             R0, R6
3CC0D0:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
3CC0D4:  ADD.W           R5, R0, R5,LSL#6
3CC0D8:  MOV             R0, R5
3CC0DA:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
3CC0DE:  ADD             R0, SP, #0x78+var_60
3CC0E0:  MOVS            R2, #1
3CC0E2:  MOV             R3, R5
3CC0E4:  MOV             R1, R0
3CC0E6:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
3CC0EA:  ADD             R1, SP, #0x78+var_6C
3CC0EC:  MOVS            R6, #0
3CC0EE:  MOV             R0, R5
3CC0F0:  MOVS            R2, #1
3CC0F2:  STRD.W          R6, R6, [SP,#0x78+var_6C]
3CC0F6:  STR             R6, [SP,#0x78+var_64]
3CC0F8:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
3CC0FC:  MOV             R9, R4
3CC0FE:  LDRB.W          R0, [R9,#0xA]!
3CC102:  CBZ             R0, loc_3CC16E
3CC104:  LDR.W           R0, [R4,#0x1F4]
3CC108:  VMOV            S0, R8
3CC10C:  STR.W           R6, [R4,#0x84]
3CC110:  VSTR            S0, [R4,#0x94]
3CC114:  VSTR            S0, [R4,#0x80]
3CC118:  LDRB.W          R1, [R0,#0x3A]
3CC11C:  AND.W           R1, R1, #7
3CC120:  CMP             R1, #3
3CC122:  BNE             loc_3CC14E
3CC124:  ADDW            R0, R0, #0x55C
3CC128:  VLDR            S0, =1.5708
3CC12C:  MOVS            R1, #0
3CC12E:  VLDR            S2, [R0]
3CC132:  STR.W           R1, [R4,#0x84]
3CC136:  VADD.F32        S2, S2, S0
3CC13A:  VSTR            S2, [R4,#0x94]
3CC13E:  VLDR            S2, [R0]
3CC142:  MOVS            R0, #1
3CC144:  STRB            R0, [R4,#3]
3CC146:  VADD.F32        S0, S2, S0
3CC14A:  VSTR            S0, [R4,#0x80]
3CC14E:  VLDR            D16, [SP,#0x78+var_60]
3CC152:  LDR.W           R0, =(unk_952E30 - 0x3CC160)
3CC156:  LDR             R1, [SP,#0x78+var_58]
3CC158:  STR.W           R1, [R4,#0x164]
3CC15C:  ADD             R0, PC; unk_952E30
3CC15E:  VSTR            D16, [R4,#0x15C]
3CC162:  VLDR            D16, [SP,#0x78+var_60]
3CC166:  LDR             R1, [SP,#0x78+var_58]
3CC168:  STR             R1, [R0,#(dword_952E38 - 0x952E30)]
3CC16A:  VSTR            D16, [R0]
3CC16E:  LDR.W           R0, =(TheCamera_ptr - 0x3CC17A)
3CC172:  ADD.W           R5, R4, #0x15C
3CC176:  ADD             R0, PC; TheCamera_ptr
3CC178:  LDR             R1, [R0]; TheCamera
3CC17A:  LDR             R0, [SP,#0x78+var_60+4]
3CC17C:  STR.W           R0, [R4,#0x160]
3CC180:  LDRB.W          R1, [R1,#(byte_951FE5 - 0x951FA8)]
3CC184:  CMP             R1, #0
3CC186:  BEQ             loc_3CC210
3CC188:  LDR.W           R0, =(TheCamera_ptr - 0x3CC198)
3CC18C:  VMOV.F32        S0, #1.0
3CC190:  VLDR            S6, [R4,#0x15C]
3CC194:  ADD             R0, PC; TheCamera_ptr
3CC196:  VLDR            S10, [SP,#0x78+var_60]
3CC19A:  VLDR            S8, [R4,#0x164]
3CC19E:  LDR             R0, [R0]; TheCamera
3CC1A0:  ADDW            R0, R0, #0xBA8
3CC1A4:  VLDR            S2, [R0]
3CC1A8:  VSUB.F32        S4, S0, S2
3CC1AC:  VMUL.F32        S2, S2, S6
3CC1B0:  VMUL.F32        S4, S4, S10
3CC1B4:  VADD.F32        S2, S2, S4
3CC1B8:  VSTR            S2, [R4,#0x15C]
3CC1BC:  VLDR            S2, [R0]
3CC1C0:  VLDR            S4, [SP,#0x78+var_58]
3CC1C4:  VSUB.F32        S0, S0, S2
3CC1C8:  VMUL.F32        S2, S2, S8
3CC1CC:  VMUL.F32        S0, S0, S4
3CC1D0:  VADD.F32        S0, S2, S0
3CC1D4:  VSTR            S0, [R4,#0x164]
3CC1D8:  LDR.W           R6, [R4,#0x1F4]
3CC1DC:  LDR             R1, [R6,#0x14]
3CC1DE:  CBNZ            R1, loc_3CC1F0
3CC1E0:  MOV             R0, R6; this
3CC1E2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CC1E6:  LDR             R1, [R6,#0x14]; CMatrix *
3CC1E8:  ADDS            R0, R6, #4; this
3CC1EA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CC1EE:  LDR             R1, [R6,#0x14]
3CC1F0:  ADD             R0, SP, #0x78+var_40
3CC1F2:  MOV             R2, R5
3CC1F4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3CC1F8:  VLDR            D16, [SP,#0x78+var_40]
3CC1FC:  LDR             R0, [SP,#0x78+var_38]
3CC1FE:  STR             R0, [SP,#0x78+var_58]
3CC200:  VSTR            D16, [SP,#0x78+var_60]
3CC204:  LDR.W           R0, [R10]
3CC208:  B               loc_3CC2D6
3CC20A:  ADD.W           R9, R4, #0xA
3CC20E:  B               loc_3CC820
3CC210:  LDR.W           R1, =(unk_952E30 - 0x3CC220)
3CC214:  VMOV            S0, R0
3CC218:  VLDR            S6, [SP,#0x78+var_60]
3CC21C:  ADD             R1, PC; unk_952E30
3CC21E:  LDR.W           R5, [R10]
3CC222:  VLDR            S2, [R1]
3CC226:  VLDR            S4, [R1,#4]
3CC22A:  VSUB.F32        S16, S6, S2
3CC22E:  LDR             R0, [R5,#0x14]
3CC230:  VSUB.F32        S18, S0, S4
3CC234:  CMP             R0, #0
3CC236:  BNE             loc_3CC248
3CC238:  MOV             R0, R5; this
3CC23A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CC23E:  LDR             R1, [R5,#0x14]; CMatrix *
3CC240:  ADDS            R0, R5, #4; this
3CC242:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CC246:  LDR             R0, [R5,#0x14]
3CC248:  LDRD.W          R1, R0, [R0,#0x10]
3CC24C:  STRD.W          R1, R0, [SP,#0x78+var_40]
3CC250:  MOVS            R0, #0
3CC252:  STR             R0, [SP,#0x78+var_38]
3CC254:  ADD             R0, SP, #0x78+var_40; this
3CC256:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CC25A:  VMUL.F32        S0, S18, S18
3CC25E:  VLDR            S6, [SP,#0x78+var_38]
3CC262:  VMUL.F32        S2, S16, S16
3CC266:  LDR.W           R0, [R10]; this
3CC26A:  VLDR            S4, [SP,#0x78+var_40+4]
3CC26E:  VLDR            S8, =1.23
3CC272:  LDR             R1, [R0,#0x14]
3CC274:  ADD.W           R2, R1, #0x30 ; '0'
3CC278:  CMP             R1, #0
3CC27A:  VADD.F32        S0, S2, S0
3CC27E:  VLDR            S2, =0.0
3CC282:  VADD.F32        S0, S0, S2
3CC286:  VLDR            S2, [SP,#0x78+var_40]
3CC28A:  IT EQ
3CC28C:  ADDEQ           R2, R0, #4
3CC28E:  VLDR            S12, [R2,#8]
3CC292:  VLDR            S10, [R2,#4]
3CC296:  VSQRT.F32       S0, S0
3CC29A:  VMUL.F32        S6, S0, S6
3CC29E:  VMUL.F32        S2, S0, S2
3CC2A2:  VMUL.F32        S0, S0, S4
3CC2A6:  VMUL.F32        S4, S6, S8
3CC2AA:  VLDR            S6, [R2]
3CC2AE:  VMUL.F32        S2, S2, S8
3CC2B2:  VMUL.F32        S0, S0, S8
3CC2B6:  VLDR            S8, =0.59
3CC2BA:  VADD.F32        S4, S4, S12
3CC2BE:  VADD.F32        S2, S2, S6
3CC2C2:  VADD.F32        S0, S0, S10
3CC2C6:  VADD.F32        S4, S4, S8
3CC2CA:  VSTR            S2, [SP,#0x78+var_60]
3CC2CE:  VSTR            S0, [SP,#0x78+var_60+4]
3CC2D2:  VSTR            S4, [SP,#0x78+var_58]
3CC2D6:  VLDR            D16, [SP,#0x78+var_60]
3CC2DA:  MOVS            R2, #3
3CC2DC:  LDR             R1, [SP,#0x78+var_58]
3CC2DE:  MOVS            R3, #1
3CC2E0:  STR.W           R1, [R4,#0x17C]
3CC2E4:  MOV             R1, SP
3CC2E6:  VSTR            D16, [R4,#0x174]
3CC2EA:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3CC2EE:  MOVS            R0, #0; this
3CC2F0:  MOVS            R5, #0
3CC2F2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CC2F6:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3CC2FE)
3CC2FA:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3CC2FC:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3CC2FE:  VLDR            S2, [R0,#0x10]
3CC302:  VLDR            S4, [R0,#0xC]
3CC306:  MOVS            R0, #0
3CC308:  VCMP.F32        S2, #0.0
3CC30C:  VMRS            APSR_nzcv, FPSCR
3CC310:  VCMP.F32        S4, #0.0
3CC314:  IT EQ
3CC316:  MOVEQ           R0, #1
3CC318:  VMRS            APSR_nzcv, FPSCR
3CC31C:  IT EQ
3CC31E:  MOVEQ           R5, #1
3CC320:  TST             R5, R0
3CC322:  BEQ             loc_3CC3C6
3CC324:  MOVS            R0, #0; this
3CC326:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CC32A:  BLX             j__ZN4CPad19LookAroundLeftRightEv; CPad::LookAroundLeftRight(void)
3CC32E:  MOV             R5, R0
3CC330:  NEGS            R0, R5
3CC332:  VMOV            S0, R0
3CC336:  MOVS            R0, #0; this
3CC338:  VCVT.F32.S32    S16, S0
3CC33C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CC340:  BLX             j__ZN4CPad16LookAroundUpDownEv; CPad::LookAroundUpDown(void)
3CC344:  VMOV            S2, R0
3CC348:  VLDR            S0, =100.0
3CC34C:  VLDR            S4, =150.0
3CC350:  CMP             R5, #0
3CC352:  VCVT.F32.S32    S2, S2
3CC356:  VLDR            S10, =80.0
3CC35A:  VDIV.F32        S6, S16, S0
3CC35E:  VDIV.F32        S8, S2, S4
3CC362:  VMUL.F32        S6, S6, S16
3CC366:  VLDR            S12, [R4,#0x8C]
3CC36A:  VMUL.F32        S2, S8, S2
3CC36E:  VDIV.F32        S8, S12, S10
3CC372:  VDIV.F32        S0, S6, S0
3CC376:  VDIV.F32        S2, S2, S4
3CC37A:  VMOV.F32        S6, #1.0
3CC37E:  VLDR            S12, =0.057143
3CC382:  VMOV.F32        S4, #-1.0
3CC386:  VMOV.F32        S10, S6
3CC38A:  IT GT
3CC38C:  VMOVGT.F32      S10, S4
3CC390:  CMP             R0, #0
3CC392:  IT LT
3CC394:  VMOVLT.F32      S6, S4
3CC398:  VMUL.F32        S0, S10, S0
3CC39C:  VMUL.F32        S4, S8, S12
3CC3A0:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CC3B0)
3CC3A4:  VLDR            S10, =0.071429
3CC3A8:  VMUL.F32        S2, S6, S2
3CC3AC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CC3AE:  VMUL.F32        S8, S8, S10
3CC3B2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CC3B4:  VMUL.F32        S6, S4, S0
3CC3B8:  VLDR            S0, [R0]
3CC3BC:  VMUL.F32        S4, S8, S2
3CC3C0:  VMUL.F32        S2, S0, S6
3CC3C4:  B               loc_3CC3F6
3CC3C6:  VLDR            S0, =80.0
3CC3CA:  VMOV.F32        S8, #-3.0
3CC3CE:  VLDR            S6, [R4,#0x8C]
3CC3D2:  VDIV.F32        S0, S6, S0
3CC3D6:  VMOV.F32        S6, #4.0
3CC3DA:  VMUL.F32        S4, S4, S8
3CC3DE:  VLDR            S8, =0.0025
3CC3E2:  VMUL.F32        S2, S2, S6
3CC3E6:  VMUL.F32        S6, S4, S8
3CC3EA:  VLDR            S4, =0.0015
3CC3EE:  VMUL.F32        S4, S2, S4
3CC3F2:  VMUL.F32        S2, S6, S0
3CC3F6:  VMUL.F32        S0, S0, S4
3CC3FA:  VLDR            S6, [R4,#0x94]
3CC3FE:  VLDR            S4, [R4,#0x84]
3CC402:  VADD.F32        S2, S2, S6
3CC406:  VLDR            S16, =3.1416
3CC40A:  VADD.F32        S0, S0, S4
3CC40E:  VCMPE.F32       S2, S16
3CC412:  VSTR            S2, [R4,#0x94]
3CC416:  VMRS            APSR_nzcv, FPSCR
3CC41A:  VSTR            S0, [R4,#0x84]
3CC41E:  BLE             loc_3CC426
3CC420:  VLDR            S4, =-6.2832
3CC424:  B               loc_3CC438
3CC426:  VLDR            S4, =-3.1416
3CC42A:  VCMPE.F32       S2, S4
3CC42E:  VMRS            APSR_nzcv, FPSCR
3CC432:  BGE             loc_3CC440
3CC434:  VLDR            S4, =6.2832
3CC438:  VADD.F32        S2, S2, S4
3CC43C:  VSTR            S2, [R4,#0x94]
3CC440:  VLDR            S2, =1.0472
3CC444:  VCMPE.F32       S0, S2
3CC448:  VMRS            APSR_nzcv, FPSCR
3CC44C:  BLE             loc_3CC454
3CC44E:  VSTR            S2, [R4,#0x84]
3CC452:  B               loc_3CC466
3CC454:  VLDR            S2, =-1.5621
3CC458:  VCMPE.F32       S0, S2
3CC45C:  VMRS            APSR_nzcv, FPSCR
3CC460:  IT LT
3CC462:  VSTRLT          S2, [R4,#0x84]
3CC466:  LDR.W           R0, [R10]; this
3CC46A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3CC46E:  CMP             R0, #1
3CC470:  BNE.W           loc_3CC5C4
3CC474:  LDR.W           R5, [R10]
3CC478:  LDR.W           R0, [R5,#0x100]
3CC47C:  CMP             R0, #0
3CC47E:  BEQ.W           loc_3CC5C4
3CC482:  LDRH.W          R1, [R5,#0x780]
3CC486:  CMP             R1, #3; switch 4 cases
3CC488:  BHI             def_3CC48A; jumptable 003CC48A default case
3CC48A:  TBB.W           [PC,R1]; switch jump
3CC48E:  DCB 2; jump table for switch statement
3CC48F:  DCB 0xF
3CC490:  DCB 0x1D
3CC491:  DCB 0x4B
3CC492:  LDR             R1, [R0,#0x14]; jumptable 003CC48A case 0
3CC494:  CMP             R1, #0
3CC496:  BEQ             loc_3CC53A
3CC498:  LDRD.W          R0, R1, [R1,#0x10]; x
3CC49C:  EOR.W           R0, R0, #0x80000000; y
3CC4A0:  BLX             atan2f
3CC4A4:  VMOV            S0, R0
3CC4A8:  B               loc_3CC53E
3CC4AA:  B               loc_3CC564; jumptable 003CC48A default case
3CC4AC:  LDR             R1, [R0,#0x14]; jumptable 003CC48A case 1
3CC4AE:  CMP             R1, #0
3CC4B0:  BEQ             loc_3CC548
3CC4B2:  LDRD.W          R0, R1, [R1,#0x10]; x
3CC4B6:  EOR.W           R0, R0, #0x80000000; y
3CC4BA:  BLX             atan2f
3CC4BE:  VMOV            S0, R0
3CC4C2:  VADD.F32        S0, S0, S16
3CC4C6:  B               loc_3CC564
3CC4C8:  LDR             R1, [R0,#0x14]; jumptable 003CC48A case 2
3CC4CA:  CMP             R1, #0
3CC4CC:  BEQ             loc_3CC552
3CC4CE:  LDRD.W          R0, R1, [R1,#0x10]; x
3CC4D2:  EOR.W           R0, R0, #0x80000000; y
3CC4D6:  BLX             atan2f
3CC4DA:  VMOV            S0, R0
3CC4DE:  B               loc_3CC556
3CC4E0:  DCFS 1.5708
3CC4E4:  DCFS 1.23
3CC4E8:  DCFS 0.0
3CC4EC:  DCFS 0.59
3CC4F0:  DCFS 100.0
3CC4F4:  DCFS 150.0
3CC4F8:  DCFS 80.0
3CC4FC:  DCFS 0.057143
3CC500:  DCFS 0.071429
3CC504:  DCFS 0.0025
3CC508:  DCFS 0.0015
3CC50C:  DCFS 3.1416
3CC510:  DCFS -6.2832
3CC514:  DCFS -3.1416
3CC518:  DCFS 6.2832
3CC51C:  DCFS 1.0472
3CC520:  DCFS -1.5621
3CC524:  LDR             R1, [R0,#0x14]; jumptable 003CC48A case 3
3CC526:  CBZ             R1, loc_3CC560
3CC528:  LDRD.W          R0, R1, [R1,#0x10]; x
3CC52C:  EOR.W           R0, R0, #0x80000000; y
3CC530:  BLX             atan2f
3CC534:  VMOV            S0, R0
3CC538:  B               loc_3CC564
3CC53A:  VLDR            S0, [R0,#0x10]
3CC53E:  VLDR            S2, =1.5708
3CC542:  VADD.F32        S0, S0, S2
3CC546:  B               loc_3CC564
3CC548:  VLDR            S0, [R0,#0x10]
3CC54C:  VADD.F32        S0, S0, S16
3CC550:  B               loc_3CC564
3CC552:  VLDR            S0, [R0,#0x10]
3CC556:  VLDR            S2, =-1.5708
3CC55A:  VADD.F32        S0, S0, S2
3CC55E:  B               loc_3CC564
3CC560:  VLDR            S0, [R0,#0x10]
3CC564:  VLDR            S2, [R4,#0x94]
3CC568:  VSUB.F32        S2, S2, S0
3CC56C:  VCMPE.F32       S2, S16
3CC570:  VMRS            APSR_nzcv, FPSCR
3CC574:  BLE             loc_3CC57C
3CC576:  VLDR            S4, =-6.2832
3CC57A:  B               loc_3CC58E
3CC57C:  VLDR            S4, =-3.1416
3CC580:  VCMPE.F32       S2, S4
3CC584:  VMRS            APSR_nzcv, FPSCR
3CC588:  BGE             loc_3CC592
3CC58A:  VLDR            S4, =6.2832
3CC58E:  VADD.F32        S2, S2, S4
3CC592:  ADDW            R0, R5, #0x784
3CC596:  VLDR            S4, [R0]
3CC59A:  VCMPE.F32       S2, S4
3CC59E:  VMRS            APSR_nzcv, FPSCR
3CC5A2:  BLE             loc_3CC5AA
3CC5A4:  VMOV.F32        S2, S4
3CC5A8:  B               loc_3CC5BC
3CC5AA:  VNEG.F32        S4, S4
3CC5AE:  VCMPE.F32       S2, S4
3CC5B2:  VMRS            APSR_nzcv, FPSCR
3CC5B6:  IT LT
3CC5B8:  VMOVLT.F32      S2, S4
3CC5BC:  VADD.F32        S0, S0, S2
3CC5C0:  VSTR            S0, [R4,#0x94]
3CC5C4:  LDR.W           R5, [R4,#0x94]
3CC5C8:  MOV             R0, R5; x
3CC5CA:  BLX             cosf
3CC5CE:  LDR.W           R6, [R4,#0x84]
3CC5D2:  MOV             R8, R0
3CC5D4:  MOV             R0, R6; x
3CC5D6:  BLX             cosf
3CC5DA:  VMOV            S18, R0
3CC5DE:  MOV             R0, R5; x
3CC5E0:  VMOV            S20, R8
3CC5E4:  BLX             sinf
3CC5E8:  VMOV            S0, R0
3CC5EC:  MOV             R0, R6; x
3CC5EE:  VMUL.F32        S20, S20, S18
3CC5F2:  VMOV.F32        S16, #3.0
3CC5F6:  VMUL.F32        S18, S18, S0
3CC5FA:  BLX             sinf
3CC5FE:  VMOV            S0, R0
3CC602:  VLDR            S6, [R4,#0x174]
3CC606:  VMUL.F32        S2, S20, S16
3CC60A:  VLDR            S8, [R4,#0x178]
3CC60E:  VMUL.F32        S4, S18, S16
3CC612:  VLDR            S10, [R4,#0x17C]
3CC616:  VMUL.F32        S0, S0, S16
3CC61A:  ADD.W           R5, R4, #0x168
3CC61E:  MOV             R0, R5; this
3CC620:  VADD.F32        S2, S2, S6
3CC624:  VADD.F32        S4, S4, S8
3CC628:  VADD.F32        S0, S0, S10
3CC62C:  VSUB.F32        S2, S2, S6
3CC630:  VSUB.F32        S4, S4, S8
3CC634:  VSUB.F32        S0, S0, S10
3CC638:  VSTR            S2, [R4,#0x168]
3CC63C:  VSTR            S4, [R4,#0x16C]
3CC640:  VSTR            S0, [R4,#0x170]
3CC644:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CC648:  VLDR            S0, =0.4
3CC64C:  VLDR            S4, [R4,#0x16C]
3CC650:  VLDR            S6, [R4,#0x170]
3CC654:  VLDR            S2, [R4,#0x168]
3CC658:  VMUL.F32        S4, S4, S0
3CC65C:  VMUL.F32        S6, S6, S0
3CC660:  VLDR            S10, [R4,#0x178]
3CC664:  VMUL.F32        S0, S2, S0
3CC668:  VLDR            S8, [R4,#0x174]
3CC66C:  VLDR            S12, [R4,#0x17C]
3CC670:  LDR             R0, =(TheCamera_ptr - 0x3CC67A)
3CC672:  LDR.W           R1, [R4,#0x84]
3CC676:  ADD             R0, PC; TheCamera_ptr
3CC678:  VADD.F32        S4, S4, S10
3CC67C:  VADD.F32        S2, S6, S12
3CC680:  LDR             R0, [R0]; TheCamera
3CC682:  VADD.F32        S0, S0, S8
3CC686:  VSTR            S0, [R4,#0x174]
3CC68A:  VSTR            S4, [R4,#0x178]
3CC68E:  VSTR            S2, [R4,#0x17C]
3CC692:  STR.W           R1, [R0,#(dword_9520F0 - 0x951FA8)]
3CC696:  MOVS            R0, #0
3CC698:  STRD.W          R0, R0, [R4,#0x18C]
3CC69C:  MOV.W           R1, #0x3F800000
3CC6A0:  MOV             R0, R5; this
3CC6A2:  STR.W           R1, [R4,#0x194]
3CC6A6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CC6AA:  VLDR            S0, [R4,#0x168]
3CC6AE:  ADD.W           R6, R4, #0x18C
3CC6B2:  VCMP.F32        S0, #0.0
3CC6B6:  VMRS            APSR_nzcv, FPSCR
3CC6BA:  BNE             loc_3CC6D6
3CC6BC:  VLDR            S0, [R4,#0x16C]
3CC6C0:  VCMP.F32        S0, #0.0
3CC6C4:  VMRS            APSR_nzcv, FPSCR
3CC6C8:  ITTT EQ
3CC6CA:  MOVWEQ          R0, #0xB717
3CC6CE:  MOVTEQ          R0, #0x38D1
3CC6D2:  STRDEQ.W        R0, R0, [R4,#0x168]
3CC6D6:  ADD             R0, SP, #0x78+var_50; CVector *
3CC6D8:  MOV             R1, R5; CVector *
3CC6DA:  MOV             R2, R6
3CC6DC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CC6E0:  ADD.W           R8, SP, #0x78+var_40
3CC6E4:  LDR             R0, [SP,#0x78+var_48]
3CC6E6:  VLDR            D16, [SP,#0x78+var_50]
3CC6EA:  STR             R0, [SP,#0x78+var_38]
3CC6EC:  MOV             R0, R8; this
3CC6EE:  VSTR            D16, [SP,#0x78+var_40]
3CC6F2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CC6F6:  ADD             R0, SP, #0x78+var_50; CVector *
3CC6F8:  MOV             R1, R8; CVector *
3CC6FA:  MOV             R2, R5
3CC6FC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CC700:  VLDR            D16, [SP,#0x78+var_50]
3CC704:  LDR             R0, [SP,#0x78+var_48]
3CC706:  STR             R0, [R6,#8]
3CC708:  VSTR            D16, [R6]
3CC70C:  LDRD.W          R0, R1, [R4,#0x168]; x
3CC710:  EOR.W           R0, R0, #0x80000000; y
3CC714:  BLX             atan2f
3CC718:  MOV             R1, R0
3CC71A:  LDR             R0, =(TheCamera_ptr - 0x3CC724)
3CC71C:  VMOV            S0, R1; x
3CC720:  ADD             R0, PC; TheCamera_ptr
3CC722:  LDR             R0, [R0]; TheCamera
3CC724:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3CC728:  STR.W           R1, [R2,#0x55C]
3CC72C:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3CC730:  STR.W           R1, [R2,#0x560]
3CC734:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3CC738:  LDR             R0, [R2,#0x14]; this
3CC73A:  CBZ             R0, loc_3CC742
3CC73C:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
3CC740:  B               loc_3CC746
3CC742:  VSTR            S0, [R2,#0x10]
3CC746:  LDR             R0, =(TheCamera_ptr - 0x3CC74C)
3CC748:  ADD             R0, PC; TheCamera_ptr
3CC74A:  LDR             R0, [R0]; TheCamera
3CC74C:  LDR.W           R2, [R0,#(dword_952884 - 0x951FA8)]
3CC750:  LDR             R0, [R2,#0x18]
3CC752:  CBZ             R0, loc_3CC768
3CC754:  LDR             R1, [R0,#4]
3CC756:  LDR             R0, [R2,#0x14]
3CC758:  ADDS            R1, #0x10
3CC75A:  CBZ             R0, loc_3CC762
3CC75C:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3CC760:  B               loc_3CC768
3CC762:  ADDS            R0, R2, #4
3CC764:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3CC768:  LDRH            R0, [R4,#0xE]
3CC76A:  CMP             R0, #0x27 ; '''
3CC76C:  BNE             loc_3CC820
3CC76E:  MOVS            R0, #0; this
3CC770:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CC774:  BLX             j__ZN4CPad13SniperZoomOutEv; CPad::SniperZoomOut(void)
3CC778:  MOV             R5, R0
3CC77A:  MOVS            R0, #0; this
3CC77C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CC780:  BLX             j__ZN4CPad12SniperZoomInEv; CPad::SniperZoomIn(void)
3CC784:  CBNZ            R5, loc_3CC78A
3CC786:  CMP             R0, #1
3CC788:  BNE             loc_3CC7E4
3CC78A:  CMP             R5, #1
3CC78C:  BNE             loc_3CC7B6
3CC78E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CC798)
3CC790:  VLDR            S0, =255.0
3CC794:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CC796:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CC798:  VLDR            S2, [R0]
3CC79C:  VMUL.F32        S0, S2, S0
3CC7A0:  VLDR            S2, =10000.0
3CC7A4:  VADD.F32        S0, S0, S2
3CC7A8:  VDIV.F32        S0, S0, S2
3CC7AC:  VLDR            S2, [R4,#0x8C]
3CC7B0:  VMUL.F32        S0, S2, S0
3CC7B4:  B               loc_3CC7E0
3CC7B6:  CMP             R0, #1
3CC7B8:  BNE             loc_3CC7E4
3CC7BA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CC7C4)
3CC7BC:  VLDR            S0, =255.0
3CC7C0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CC7C2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CC7C4:  VLDR            S2, [R0]
3CC7C8:  VMUL.F32        S0, S2, S0
3CC7CC:  VLDR            S2, =10000.0
3CC7D0:  VADD.F32        S0, S0, S2
3CC7D4:  VDIV.F32        S0, S0, S2
3CC7D8:  VLDR            S2, [R4,#0x8C]
3CC7DC:  VDIV.F32        S0, S2, S0
3CC7E0:  VSTR            S0, [R4,#0x8C]
3CC7E4:  LDR             R0, =(TheCamera_ptr - 0x3CC7F4)
3CC7E6:  ADR             R1, dword_3CC850
3CC7E8:  VLD1.64         {D16-D17}, [R1@128]
3CC7EC:  VMOV.F32        S0, #12.0
3CC7F0:  ADD             R0, PC; TheCamera_ptr
3CC7F2:  VLDR            S2, =70.0
3CC7F6:  LDR             R0, [R0]; TheCamera
3CC7F8:  ADD.W           R1, R0, #0x80
3CC7FC:  VST1.32         {D16-D17}, [R1]
3CC800:  MOVS            R1, #0x78 ; 'x'
3CC802:  STR.W           R1, [R0,#(dword_952044 - 0x951FA8)]
3CC806:  VLDR            S4, [R4,#0x8C]
3CC80A:  LDRH            R0, [R4,#0xE]
3CC80C:  VMIN.F32        D16, D2, D1
3CC810:  CMP             R0, #0x2E ; '.'
3CC812:  IT EQ
3CC814:  VMOVEQ.F32      S0, S16
3CC818:  VMAX.F32        D0, D16, D0
3CC81C:  VSTR            S0, [R4,#0x8C]
3CC820:  LDR             R0, =(Scene_ptr - 0x3CC830)
3CC822:  MOVS            R1, #0
3CC824:  STRB.W          R1, [R9]
3CC828:  MOVW            R1, #0xCCCD
3CC82C:  ADD             R0, PC; Scene_ptr
3CC82E:  MOVT            R1, #0x3D4C
3CC832:  LDR             R0, [R0]; Scene
3CC834:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3CC836:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3CC83A:  ADD             SP, SP, #0x48 ; 'H'
3CC83C:  VPOP            {D8-D10}
3CC840:  POP.W           {R8-R10}
3CC844:  POP             {R4-R7,PC}
