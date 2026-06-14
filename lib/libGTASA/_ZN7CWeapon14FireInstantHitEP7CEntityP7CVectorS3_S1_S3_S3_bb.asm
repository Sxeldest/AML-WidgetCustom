; =========================================================
; Game Engine Function: _ZN7CWeapon14FireInstantHitEP7CEntityP7CVectorS3_S1_S3_S3_bb
; Address            : 0x5DC128 - 0x5DD638
; =========================================================

5DC128:  PUSH            {R4-R7,LR}
5DC12A:  ADD             R7, SP, #0xC
5DC12C:  PUSH.W          {R8-R11}
5DC130:  SUB             SP, SP, #4
5DC132:  VPUSH           {D8-D15}
5DC136:  SUB             SP, SP, #0x1B8
5DC138:  LDR             R4, [R7,#arg_8]
5DC13A:  MOV             R5, R1
5DC13C:  MOV             R6, R3
5DC13E:  MOV             R9, R2
5DC140:  CMP             R5, #0
5DC142:  STR             R0, [SP,#0x218+var_1C4]
5DC144:  BEQ             loc_5DC166
5DC146:  LDRB.W          R0, [R5,#0x3A]
5DC14A:  AND.W           R0, R0, #7
5DC14E:  CMP             R0, #3
5DC150:  BNE             loc_5DC166
5DC152:  LDR             R0, [SP,#0x218+var_1C4]
5DC154:  LDR.W           R8, [R0]
5DC158:  MOV             R0, R5
5DC15A:  MOV             R1, R8
5DC15C:  BLX.W           j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
5DC160:  MOV             R1, R0
5DC162:  MOV             R0, R8
5DC164:  B               loc_5DC16C
5DC166:  LDR             R0, [SP,#0x218+var_1C4]
5DC168:  MOVS            R1, #1
5DC16A:  LDR             R0, [R0]
5DC16C:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DC170:  STR             R0, [SP,#0x218+var_1CC]
5DC172:  MOVS            R0, #0
5DC174:  STRD.W          R0, R0, [SP,#0x218+var_70]
5DC178:  CMP             R4, #0
5DC17A:  STR             R0, [SP,#0x218+var_68]
5DC17C:  VLDR            D16, [R6]
5DC180:  LDR             R1, [R6,#8]
5DC182:  STR             R1, [SP,#0x218+var_88]
5DC184:  VSTR            D16, [SP,#0x218+var_90]
5DC188:  STR             R0, [SP,#0x218+var_D4]
5DC18A:  VLDR            D16, [R9]
5DC18E:  LDR.W           R0, [R9,#8]
5DC192:  STR             R0, [SP,#0x218+var_78]
5DC194:  VSTR            D16, [SP,#0x218+var_80]
5DC198:  ITTTT NE
5DC19A:  VLDRNE          D16, [R4]
5DC19E:  LDRNE           R0, [R4,#8]
5DC1A0:  STRNE           R0, [SP,#0x218+var_78]
5DC1A2:  VSTRNE          D16, [SP,#0x218+var_80]
5DC1A6:  LDRB.W          R0, [R5,#0x3A]
5DC1AA:  AND.W           R0, R0, #7
5DC1AE:  CMP             R0, #3
5DC1B0:  BNE             loc_5DC1EE
5DC1B2:  LDRB.W          R0, [R5,#0x71E]
5DC1B6:  VLDR            S2, =100.0
5DC1BA:  VMOV            S0, R0
5DC1BE:  VCVT.F32.U32    S0, S0
5DC1C2:  LDR             R0, [SP,#0x218+var_1CC]
5DC1C4:  VSUB.F32        S0, S2, S0
5DC1C8:  VLDR            S2, [R0,#0x38]
5DC1CC:  LDR.W           R0, [R5,#0x444]
5DC1D0:  CMP             R0, #0
5DC1D2:  VDIV.F32        S0, S0, S2
5DC1D6:  BEQ             loc_5DC1FE
5DC1D8:  VMOV.F32        S2, #0.5
5DC1DC:  LDRB.W          R0, [R5,#0x487]
5DC1E0:  LSLS            R0, R0, #0x1D
5DC1E2:  VMUL.F32        S16, S0, S2
5DC1E6:  IT PL
5DC1E8:  VMOVPL.F32      S16, S0
5DC1EC:  B               loc_5DC202
5DC1EE:  VLDR            S16, =0.0
5DC1F2:  MOVS            R0, #0
5DC1F4:  MOV.W           R8, #0
5DC1F8:  MOV.W           R11, #0
5DC1FC:  B               loc_5DC20E
5DC1FE:  VMOV.F32        S16, S0
5DC202:  LDR.W           R0, [R5,#0x440]; this
5DC206:  BLX.W           j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
5DC20A:  MOV             R8, R5
5DC20C:  MOV             R11, R5
5DC20E:  LDR             R1, [SP,#0x218+var_1C4]
5DC210:  LDR             R1, [R1]
5DC212:  SUBS            R1, #0x19
5DC214:  CMP             R1, #2
5DC216:  BHI             loc_5DC23A
5DC218:  LDR             R1, =(SHOTGUN_SPREAD_RATE_ptr - 0x5DC220)
5DC21A:  LDR             R2, [SP,#0x218+var_1CC]
5DC21C:  ADD             R1, PC; SHOTGUN_SPREAD_RATE_ptr
5DC21E:  VLDR            S16, =0.0
5DC222:  LDR             R1, [R1]; SHOTGUN_SPREAD_RATE
5DC224:  VLDR            S0, [R2,#0x38]
5DC228:  VLDR            S2, [R1]
5DC22C:  LDR             R1, =(_ZN6CWorld17fWeaponSpreadRateE_ptr - 0x5DC236)
5DC22E:  VDIV.F32        S0, S2, S0
5DC232:  ADD             R1, PC; _ZN6CWorld17fWeaponSpreadRateE_ptr
5DC234:  LDR             R1, [R1]; CWorld::fWeaponSpreadRate ...
5DC236:  VSTR            S0, [R1]
5DC23A:  STR             R5, [SP,#0x218+var_1C8]
5DC23C:  CMP             R0, #0
5DC23E:  STRD.W          R11, R9, [SP,#0x218+var_1D4]
5DC242:  LDR             R2, [R7,#arg_0]
5DC244:  ITT NE
5DC246:  LDRBNE          R0, [R0,#0xE]
5DC248:  CMPNE           R0, #0
5DC24A:  BEQ             loc_5DC2F2
5DC24C:  LDR             R0, [SP,#0x218+var_1CC]
5DC24E:  MOVS            R1, #0
5DC250:  LDR             R0, [R0,#8]
5DC252:  STRD.W          R0, R1, [SP,#0x218+var_70]
5DC256:  STR             R1, [SP,#0x218+var_68]
5DC258:  LDR             R0, [R5,#0x18]
5DC25A:  BLX.W           j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
5DC25E:  MOV             R6, R0
5DC260:  LDR.W           R0, [R5,#0x4AC]
5DC264:  LDR             R1, [R0,#0x14]
5DC266:  MOV             R0, R6
5DC268:  BLX.W           j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
5DC26C:  MOV             R8, R0
5DC26E:  MOV             R0, R6
5DC270:  BLX.W           j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
5DC274:  ADD.W           R3, R0, R8,LSL#6
5DC278:  ADD             R0, SP, #0x218+var_70
5DC27A:  MOVS            R2, #1
5DC27C:  MOV             R1, R0
5DC27E:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5DC282:  VLDR            S0, [SP,#0x218+var_80]
5DC286:  ADD             R0, SP, #0x218+var_A0; this
5DC288:  VLDR            S6, [SP,#0x218+var_70]
5DC28C:  VLDR            S2, [SP,#0x218+var_80+4]
5DC290:  VLDR            S8, [SP,#0x218+var_70+4]
5DC294:  VSUB.F32        S0, S6, S0
5DC298:  VLDR            S4, [SP,#0x218+var_78]
5DC29C:  VLDR            S10, [SP,#0x218+var_68]
5DC2A0:  VSUB.F32        S2, S8, S2
5DC2A4:  VSUB.F32        S4, S10, S4
5DC2A8:  VSTR            S4, [SP,#0x218+var_98]
5DC2AC:  VSTR            S2, [SP,#0x218+var_A0+4]
5DC2B0:  VSTR            S0, [SP,#0x218+var_A0]
5DC2B4:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DC2B8:  LDRB.W          R0, [R11,#0x485]
5DC2BC:  ADD             R1, SP, #0x218+var_80
5DC2BE:  ADD.W           R10, R1, #8
5DC2C2:  ORR.W           R5, R1, #4
5DC2C6:  LSLS            R0, R0, #0x1F
5DC2C8:  ITT NE
5DC2CA:  LDRNE.W         R0, [R11,#0x590]
5DC2CE:  CMPNE           R0, #0
5DC2D0:  BNE.W           loc_5DC422
5DC2D4:  LDR.W           R0, [R11,#0x100]
5DC2D8:  CMP             R0, #0
5DC2DA:  BEQ.W           loc_5DC42A
5DC2DE:  LDRB.W          R1, [R0,#0x3A]
5DC2E2:  AND.W           R1, R1, #7
5DC2E6:  CMP             R1, #2
5DC2E8:  BNE.W           loc_5DC42A
5DC2EC:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC2F2)
5DC2EE:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DC2F0:  B               loc_5DC426
5DC2F2:  CMP.W           R11, #0
5DC2F6:  BEQ             loc_5DC368
5DC2F8:  LDR             R4, [R7,#arg_4]
5DC2FA:  CMP             R2, #0
5DC2FC:  IT EQ
5DC2FE:  CMPEQ           R4, #0
5DC300:  BEQ             loc_5DC314
5DC302:  LDR.W           R0, [R11,#0x534]
5DC306:  LSLS            R0, R0, #0x1F
5DC308:  BNE.W           loc_5DC5DA
5DC30C:  LDR             R0, [R7,#arg_C]
5DC30E:  CMP             R0, #1
5DC310:  BEQ.W           loc_5DC5DA
5DC314:  MOV             R0, R11; this
5DC316:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DC31A:  CMP             R0, #1
5DC31C:  BNE             loc_5DC368
5DC31E:  LDR             R0, =(TheCamera_ptr - 0x5DC324)
5DC320:  ADD             R0, PC; TheCamera_ptr
5DC322:  LDR             R0, [R0]; TheCamera
5DC324:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DC328:  ADD.W           R1, R1, R1,LSL#5
5DC32C:  ADD.W           R0, R0, R1,LSL#4
5DC330:  LDRH.W          R0, [R0,#0x17E]
5DC334:  SUBS            R0, #0x31 ; '1'
5DC336:  UBFX.W          R1, R0, #1, #0xF
5DC33A:  ORR.W           R0, R1, R0,LSL#15
5DC33E:  UXTH            R0, R0
5DC340:  CMP             R0, #8
5DC342:  BHI             loc_5DC368
5DC344:  MOVS            R1, #1
5DC346:  LSL.W           R0, R1, R0
5DC34A:  MOVW            R1, #0x10D
5DC34E:  TST             R0, R1
5DC350:  BEQ             loc_5DC368
5DC352:  CMP             R4, #0
5DC354:  BEQ.W           loc_5DCD34
5DC358:  VLDR            D16, [R4]
5DC35C:  LDR             R0, [R4,#8]
5DC35E:  STR             R0, [SP,#0x218+var_68]
5DC360:  VSTR            D16, [SP,#0x218+var_70]
5DC364:  B.W             loc_5DCD62
5DC368:  LDRB.W          R1, [R5,#0x3A]
5DC36C:  LDR             R0, [R5,#0x14]
5DC36E:  AND.W           R2, R1, #7
5DC372:  CMP             R2, #2
5DC374:  BNE.W           loc_5DC4BC
5DC378:  CBNZ            R0, loc_5DC38E
5DC37A:  MOV             R0, R5; this
5DC37C:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5DC380:  LDR             R1, [R5,#0x14]; CMatrix *
5DC382:  ADDS            R0, R5, #4; this
5DC384:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5DC388:  LDRB.W          R1, [R5,#0x3A]
5DC38C:  LDR             R0, [R5,#0x14]
5DC38E:  VLDR            D16, [R0,#0x10]
5DC392:  LDR             R2, [R0,#0x18]
5DC394:  STR             R2, [SP,#0x218+var_68]
5DC396:  VSTR            D16, [SP,#0x218+var_70]
5DC39A:  VLDR            D16, [R0,#0x10]
5DC39E:  LDR             R0, [R0,#0x18]
5DC3A0:  STR             R0, [SP,#0x218+var_98]
5DC3A2:  MOVS            R0, #8
5DC3A4:  ORR.W           R0, R0, R1,LSR#3
5DC3A8:  VSTR            D16, [SP,#0x218+var_A0]
5DC3AC:  CMP             R0, #8
5DC3AE:  BNE.W           loc_5DC5EA
5DC3B2:  LDR             R3, [SP,#0x218+var_1CC]
5DC3B4:  ADD             R0, SP, #0x218+var_80
5DC3B6:  VLDR            S0, [SP,#0x218+var_70]
5DC3BA:  ADD.W           R6, R0, #8
5DC3BE:  VLDR            S2, [SP,#0x218+var_70+4]
5DC3C2:  ORR.W           R11, R0, #4
5DC3C6:  VLDR            S6, [R3,#8]
5DC3CA:  AND.W           R0, R1, #0xF8
5DC3CE:  VLDR            S4, [SP,#0x218+var_68]
5DC3D2:  ADD.W           R10, R3, #8
5DC3D6:  VMUL.F32        S0, S6, S0
5DC3DA:  VLDR            S8, [SP,#0x218+var_80+4]
5DC3DE:  VMUL.F32        S2, S6, S2
5DC3E2:  VLDR            S10, [SP,#0x218+var_78]
5DC3E6:  VMUL.F32        S4, S6, S4
5DC3EA:  VLDR            S6, [SP,#0x218+var_80]
5DC3EE:  MOV             R4, R5
5DC3F0:  CMP             R0, #0x40 ; '@'
5DC3F2:  VADD.F32        S0, S6, S0
5DC3F6:  VADD.F32        S2, S8, S2
5DC3FA:  VADD.F32        S4, S10, S4
5DC3FE:  VSTR            S0, [SP,#0x218+var_70]
5DC402:  VSTR            S2, [SP,#0x218+var_70+4]
5DC406:  VSTR            S4, [SP,#0x218+var_68]
5DC40A:  LDR.W           R2, [R5,#0x5A4]
5DC40E:  STR             R6, [SP,#0x218+var_1D8]
5DC410:  SUB.W           R5, R2, #3
5DC414:  BNE.W           loc_5DC602
5DC418:  MOV.W           R0, #0xFFFFFFFF; int
5DC41C:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DC420:  B               loc_5DC606
5DC422:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC428)
5DC424:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DC426:  LDR             R1, [R1]; CWorld::pIgnoreEntity ...
5DC428:  STR             R0, [R1]; CWorld::pIgnoreEntity
5DC42A:  LDR             R0, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x5DC430)
5DC42C:  ADD             R0, PC; _ZN6CWorld14bIncludeBikersE_ptr
5DC42E:  LDR             R0, [R0]; CWorld::bIncludeBikers ...
5DC430:  ADD.W           R8, SP, #0x218+var_70
5DC434:  ADD             R6, SP, #0x218+var_80
5DC436:  MOVS            R4, #1
5DC438:  MOV             R1, R8; CVector *
5DC43A:  STRB            R4, [R0]; CWorld::bIncludeBikers
5DC43C:  MOV             R0, R6; this
5DC43E:  BLX.W           j__ZN6CBirds13HandleGunShotEPK7CVectorS2_; CBirds::HandleGunShot(CVector const*,CVector const*)
5DC442:  MOV             R0, R6; this
5DC444:  MOV             R1, R8; CVector *
5DC446:  BLX.W           j__ZN8CShadows20GunShotSetsOilOnFireEPK7CVectorS2_; CShadows::GunShotSetsOilOnFire(CVector const*,CVector const*)
5DC44A:  MOVS            R0, #0
5DC44C:  ADD             R2, SP, #0x218+var_D0
5DC44E:  ADD             R3, SP, #0x218+var_D4
5DC450:  STRD.W          R4, R4, [SP,#0x218+var_218]
5DC454:  STRD.W          R4, R4, [SP,#0x218+var_210]
5DC458:  MOV             R1, R8
5DC45A:  STRD.W          R4, R0, [SP,#0x218+var_208]
5DC45E:  STRD.W          R0, R4, [SP,#0x218+var_200]
5DC462:  MOV             R0, R6
5DC464:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DC468:  B               loc_5DC7A4
5DC46A:  ALIGN 4
5DC46C:  DCFS 100.0
5DC470:  DCFS 0.0
5DC474:  DCD SHOTGUN_SPREAD_RATE_ptr - 0x5DC220
5DC478:  DCD _ZN6CWorld17fWeaponSpreadRateE_ptr - 0x5DC236
5DC47C:  DCD _ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC2F2
5DC480:  DCD TheCamera_ptr - 0x5DC324
5DC484:  DCD _ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC428
5DC488:  DCD _ZN6CWorld14bIncludeBikersE_ptr - 0x5DC430
5DC48C:  DCD _ZN6CWorld14bIncludeBikersE_ptr - 0x5DC598
5DC490:  DCD _ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC59C
5DC494:  DCFS 0.6
5DC498:  DCFS 0.1
5DC49C:  LDR             R1, [SP,#0x218+arg_48]
5DC49E:  SUBS            R6, #0x99
5DC4A0:  LDM             R4!, {R0,R2,R3,R6,R7}
5DC4A2:  SUBS            R5, #0xCC
5DC4A4:  DCFS 4.6566e-10
5DC4A8:  DCFS 0.2
5DC4AC:  DCFS 0.4
5DC4B0:  DCFS -0.2
5DC4B4:  DCFS -0.1
5DC4B8:  DCFS 0.3
5DC4BC:  CBNZ            R0, loc_5DC4CE
5DC4BE:  MOV             R0, R5; this
5DC4C0:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5DC4C4:  LDR             R1, [R5,#0x14]; CMatrix *
5DC4C6:  ADDS            R0, R5, #4; this
5DC4C8:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5DC4CC:  LDR             R0, [R5,#0x14]
5DC4CE:  LDR             R1, [SP,#0x218+var_1CC]
5DC4D0:  CMP             R0, #0
5DC4D2:  VLDR            S0, [R0,#0x10]
5DC4D6:  VLDR            S2, [R0,#0x14]
5DC4DA:  VLDR            S6, [R1,#8]
5DC4DE:  VLDR            S4, [R0,#0x18]
5DC4E2:  VMUL.F32        S0, S6, S0
5DC4E6:  VLDR            S8, [SP,#0x218+var_90+4]
5DC4EA:  VMUL.F32        S2, S6, S2
5DC4EE:  VLDR            S10, [SP,#0x218+var_88]
5DC4F2:  VMUL.F32        S4, S6, S4
5DC4F6:  VLDR            S6, [SP,#0x218+var_90]
5DC4FA:  VADD.F32        S0, S0, S6
5DC4FE:  VADD.F32        S2, S2, S8
5DC502:  VADD.F32        S4, S4, S10
5DC506:  VSTR            S0, [SP,#0x218+var_70]
5DC50A:  VSTR            S2, [SP,#0x218+var_70+4]
5DC50E:  VSTR            S4, [SP,#0x218+var_68]
5DC512:  BNE             loc_5DC524
5DC514:  MOV             R0, R5; this
5DC516:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5DC51A:  LDR             R1, [R5,#0x14]; CMatrix *
5DC51C:  ADDS            R0, R5, #4; this
5DC51E:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5DC522:  LDR             R0, [R5,#0x14]
5DC524:  VLDR            D16, [R0,#0x10]
5DC528:  CMP.W           R11, #0
5DC52C:  LDR             R0, [R0,#0x18]
5DC52E:  STR             R0, [SP,#0x218+var_98]
5DC530:  MOV             R0, R5
5DC532:  VSTR            D16, [SP,#0x218+var_A0]
5DC536:  BEQ             loc_5DC586
5DC538:  LDRB.W          R0, [R11,#0x48B]
5DC53C:  ADDW            R4, R11, #0x484
5DC540:  LSLS            R0, R0, #0x1E
5DC542:  BPL             loc_5DC560
5DC544:  MOV             R0, R11; this
5DC546:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DC54A:  CMP             R0, #1
5DC54C:  BNE             loc_5DC556
5DC54E:  LDR             R0, [SP,#0x218+var_1CC]
5DC550:  LDRB            R0, [R0,#0x18]
5DC552:  LSLS            R0, R0, #0x1F
5DC554:  BNE             loc_5DC560
5DC556:  ADD             R1, SP, #0x218+var_80; CEntity *
5DC558:  ADD             R2, SP, #0x218+var_70; CVector *
5DC55A:  MOV             R0, R5; this
5DC55C:  BLX.W           j__ZN7CWeapon12DoDoomAimingEP7CEntityP7CVectorS3_; CWeapon::DoDoomAiming(CEntity *,CVector *,CVector *)
5DC560:  LDRB            R0, [R4,#1]
5DC562:  LSLS            R0, R0, #0x1F
5DC564:  ITT NE
5DC566:  LDRNE.W         R0, [R11,#0x590]
5DC56A:  CMPNE           R0, #0
5DC56C:  BNE             loc_5DC586
5DC56E:  LDR.W           R1, [R11,#0x100]
5DC572:  MOV             R0, R5
5DC574:  CBZ             R1, loc_5DC586
5DC576:  LDRB.W          R0, [R1,#0x3A]
5DC57A:  AND.W           R0, R0, #7
5DC57E:  CMP             R0, #2
5DC580:  IT NE
5DC582:  MOVNE           R1, R5
5DC584:  MOV             R0, R1
5DC586:  LDR.W           R1, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x5DC598)
5DC58A:  ADD             R6, SP, #0x218+var_80
5DC58C:  LDR.W           R2, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC59C)
5DC590:  ADD.W           R8, SP, #0x218+var_70
5DC594:  ADD             R1, PC; _ZN6CWorld14bIncludeBikersE_ptr
5DC596:  MOVS            R4, #1
5DC598:  ADD             R2, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DC59A:  LDR             R1, [R1]; CWorld::bIncludeBikers ...
5DC59C:  LDR             R2, [R2]; CVector *
5DC59E:  STRB            R4, [R1]; CWorld::bIncludeBikers
5DC5A0:  MOV             R1, R8; CVector *
5DC5A2:  STR             R0, [R2]; CWorld::pIgnoreEntity
5DC5A4:  MOV             R0, R6; this
5DC5A6:  BLX.W           j__ZN6CBirds13HandleGunShotEPK7CVectorS2_; CBirds::HandleGunShot(CVector const*,CVector const*)
5DC5AA:  MOV             R0, R6; this
5DC5AC:  MOV             R1, R8; CVector *
5DC5AE:  BLX.W           j__ZN8CShadows20GunShotSetsOilOnFireEPK7CVectorS2_; CShadows::GunShotSetsOilOnFire(CVector const*,CVector const*)
5DC5B2:  MOVS            R0, #0
5DC5B4:  ADD             R2, SP, #0x218+var_D0
5DC5B6:  ADD             R3, SP, #0x218+var_D4
5DC5B8:  STRD.W          R4, R4, [SP,#0x218+var_218]
5DC5BC:  STRD.W          R4, R4, [SP,#0x218+var_210]
5DC5C0:  MOV             R1, R8
5DC5C2:  STRD.W          R4, R0, [SP,#0x218+var_208]
5DC5C6:  STRD.W          R0, R4, [SP,#0x218+var_200]
5DC5CA:  MOV             R0, R6
5DC5CC:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DC5D0:  ADD.W           R10, R6, #8
5DC5D4:  ORR.W           R5, R6, #4
5DC5D8:  B               loc_5DC7A4
5DC5DA:  CMP             R4, #0
5DC5DC:  BEQ.W           loc_5DCE36
5DC5E0:  VLDR            D16, [R4]
5DC5E4:  LDR             R0, [R4,#8]
5DC5E6:  B.W             loc_5DD17E
5DC5EA:  LDR             R0, [SP,#0x218+var_1CC]
5DC5EC:  ADD.W           R8, SP, #0x218+var_80
5DC5F0:  VLDR            S16, =0.6
5DC5F4:  ADD.W           R9, R8, #8
5DC5F8:  ORR.W           R4, R8, #4
5DC5FC:  ADD.W           R6, R0, #8
5DC600:  B               loc_5DC68E
5DC602:  LDR.W           R0, [R4,#0x464]; this
5DC606:  ADD.W           R8, SP, #0x218+var_80
5DC60A:  ADD             R6, SP, #0x218+var_70
5DC60C:  MOVS            R1, #0
5DC60E:  CMP             R5, #2
5DC610:  IT CC
5DC612:  MOVCC           R1, #(stderr+1)
5DC614:  MOV             R2, R8; CVehicle *
5DC616:  STR             R1, [SP,#0x218+var_218]; CVector *
5DC618:  MOV             R1, R4; CEntity *
5DC61A:  MOV             R3, R6; CVector *
5DC61C:  BLX.W           j__ZN7CWeapon19DoDriveByAutoAimingEP7CEntityP8CVehicleP7CVectorS5_b; CWeapon::DoDriveByAutoAiming(CEntity *,CVehicle *,CVector *,CVector *,bool)
5DC620:  VLDR            S0, [SP,#0x218+var_80]
5DC624:  MOV             R0, R6; this
5DC626:  VLDR            S6, [SP,#0x218+var_70]
5DC62A:  VLDR            S2, [SP,#0x218+var_80+4]
5DC62E:  VLDR            S8, [SP,#0x218+var_70+4]
5DC632:  VSUB.F32        S0, S6, S0
5DC636:  VLDR            S10, [SP,#0x218+var_68]
5DC63A:  VLDR            S4, [SP,#0x218+var_78]
5DC63E:  VSUB.F32        S2, S8, S2
5DC642:  VSUB.F32        S4, S10, S4
5DC646:  VSTR            S0, [SP,#0x218+var_70]
5DC64A:  VSTR            S2, [SP,#0x218+var_70+4]
5DC64E:  VSTR            S4, [SP,#0x218+var_68]
5DC652:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DC656:  LDRSH.W         R0, [R4,#0x26]
5DC65A:  MOVW            R1, #0x1BF
5DC65E:  VLDR            S16, =0.1
5DC662:  MOV             R5, R4
5DC664:  CMP             R0, R1
5DC666:  ITT NE
5DC668:  MOVWNE          R1, #0x1D5
5DC66C:  CMPNE           R0, R1
5DC66E:  BEQ             loc_5DC686
5DC670:  UXTH            R0, R0
5DC672:  ADR.W           R1, loc_5DC49C
5DC676:  CMP.W           R0, #0x234
5DC67A:  ADD.W           R8, SP, #0x218+var_80
5DC67E:  IT EQ
5DC680:  ADDEQ           R1, #4
5DC682:  VLDR            S16, [R1]
5DC686:  LDR.W           R9, [SP,#0x218+var_1D8]
5DC68A:  MOV             R4, R11
5DC68C:  MOV             R6, R10
5DC68E:  BLX.W           rand
5DC692:  VMOV            S0, R0
5DC696:  VCVT.F32.S32    S18, S0
5DC69A:  BLX.W           rand
5DC69E:  VMOV            S0, R0
5DC6A2:  VCVT.F32.S32    S20, S0
5DC6A6:  BLX.W           rand
5DC6AA:  VMOV            S0, R0
5DC6AE:  VLDR            S2, =4.6566e-10
5DC6B2:  VLDR            S8, =0.2
5DC6B6:  ADD.W           R10, SP, #0x218+var_70
5DC6BA:  VCVT.F32.S32    S0, S0
5DC6BE:  VLDR            S10, [SP,#0x218+var_68]
5DC6C2:  VMUL.F32        S4, S18, S2
5DC6C6:  MOV             R0, R10; this
5DC6C8:  VMUL.F32        S6, S20, S2
5DC6CC:  VMUL.F32        S0, S0, S2
5DC6D0:  VLDR            S2, =0.4
5DC6D4:  VMUL.F32        S4, S4, S2
5DC6D8:  VMUL.F32        S2, S6, S2
5DC6DC:  VLDR            S6, =-0.2
5DC6E0:  VMUL.F32        S0, S0, S8
5DC6E4:  VLDR            S8, =-0.1
5DC6E8:  VADD.F32        S4, S4, S6
5DC6EC:  VADD.F32        S2, S2, S6
5DC6F0:  VLDR            S6, [SP,#0x218+var_70]
5DC6F4:  VADD.F32        S0, S0, S8
5DC6F8:  VLDR            S8, [SP,#0x218+var_70+4]
5DC6FC:  VMUL.F32        S4, S16, S4
5DC700:  VMUL.F32        S2, S16, S2
5DC704:  VMUL.F32        S0, S16, S0
5DC708:  VADD.F32        S4, S6, S4
5DC70C:  VADD.F32        S2, S8, S2
5DC710:  VADD.F32        S0, S0, S10
5DC714:  VSTR            S4, [SP,#0x218+var_70]
5DC718:  VSTR            S2, [SP,#0x218+var_70+4]
5DC71C:  VSTR            S0, [SP,#0x218+var_68]
5DC720:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DC724:  VLDR            S6, [R6]
5DC728:  ADD             R6, SP, #0x218+var_80
5DC72A:  VLDR            S0, [SP,#0x218+var_70]
5DC72E:  MOV             R1, R10; CVector *
5DC730:  VLDR            S8, [R8]
5DC734:  VMUL.F32        S0, S6, S0
5DC738:  VLDR            S2, [SP,#0x218+var_70+4]
5DC73C:  VLDR            S4, [SP,#0x218+var_68]
5DC740:  VMUL.F32        S2, S6, S2
5DC744:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC74C)
5DC748:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DC74A:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
5DC74C:  VADD.F32        S0, S8, S0
5DC750:  STR             R5, [R0]; CWorld::pIgnoreEntity
5DC752:  MOV             R0, R6; this
5DC754:  VSTR            S0, [SP,#0x218+var_70]
5DC758:  VLDR            S0, [R4]
5DC75C:  VADD.F32        S0, S0, S2
5DC760:  VMUL.F32        S2, S6, S4
5DC764:  VSTR            S0, [SP,#0x218+var_70+4]
5DC768:  VLDR            S0, [R9]
5DC76C:  VADD.F32        S0, S0, S2
5DC770:  VSTR            S0, [SP,#0x218+var_68]
5DC774:  BLX.W           j__ZN6CBirds13HandleGunShotEPK7CVectorS2_; CBirds::HandleGunShot(CVector const*,CVector const*)
5DC778:  MOV             R0, R6; this
5DC77A:  MOV             R1, R10; CVector *
5DC77C:  BLX.W           j__ZN8CShadows20GunShotSetsOilOnFireEPK7CVectorS2_; CShadows::GunShotSetsOilOnFire(CVector const*,CVector const*)
5DC780:  MOVS            R0, #1
5DC782:  MOVS            R1, #0
5DC784:  ADD             R2, SP, #0x218+var_D0
5DC786:  ADD             R3, SP, #0x218+var_D4
5DC788:  STRD.W          R0, R0, [SP,#0x218+var_218]
5DC78C:  STRD.W          R0, R0, [SP,#0x218+var_210]
5DC790:  STRD.W          R0, R1, [SP,#0x218+var_208]
5DC794:  STRD.W          R1, R0, [SP,#0x218+var_200]
5DC798:  MOV             R0, R6
5DC79A:  MOV             R1, R10
5DC79C:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DC7A0:  MOV             R10, R9
5DC7A2:  MOV             R5, R4
5DC7A4:  LDR.W           R8, [SP,#0x218+var_1C4]
5DC7A8:  MOVS            R2, #0
5DC7AA:  LDR             R3, [R5]
5DC7AC:  MOV             R9, R5
5DC7AE:  LDR.W           R1, [R10]
5DC7B2:  MOV             R11, R10
5DC7B4:  LDR.W           R0, [R8]
5DC7B8:  CMP             R0, #0x11
5DC7BA:  IT EQ
5DC7BC:  MOVEQ           R2, #1
5DC7BE:  CMP             R0, #0x17
5DC7C0:  MOV.W           R0, #0
5DC7C4:  IT EQ
5DC7C6:  MOVEQ           R0, #1
5DC7C8:  LDRD.W          R6, R5, [SP,#0x218+var_70]
5DC7CC:  LDR             R4, [SP,#0x218+var_68]
5DC7CE:  ORRS            R0, R2
5DC7D0:  LDR             R2, [SP,#0x218+var_80]
5DC7D2:  STRD.W          R1, R6, [SP,#0x218+var_218]
5DC7D6:  ADD             R6, SP, #0x218+var_108
5DC7D8:  STRD.W          R5, R4, [SP,#0x218+var_210]
5DC7DC:  LDR             R4, [SP,#0x218+var_1C8]
5DC7DE:  STR             R0, [SP,#0x218+var_208]
5DC7E0:  MOV             R0, R6
5DC7E2:  MOV             R1, R4
5DC7E4:  BLX.W           j__ZN13CEventGunShotC2EP7CEntity7CVectorS2_b; CEventGunShot::CEventGunShot(CEntity *,CVector,CVector,bool)
5DC7E8:  BLX.W           j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5DC7EC:  MOV             R1, R6; CEvent *
5DC7EE:  MOVS            R2, #0; bool
5DC7F0:  BLX.W           j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5DC7F4:  LDR.W           R0, [R8]
5DC7F8:  ADD             R6, SP, #0x218+var_138
5DC7FA:  ADD             R2, SP, #0x218+var_80; CVector *
5DC7FC:  ADD             R3, SP, #0x218+var_70; CVector *
5DC7FE:  CMP             R0, #0x17
5DC800:  MOV.W           R0, #0
5DC804:  IT EQ
5DC806:  MOVEQ           R0, #1
5DC808:  MOV             R1, R4; CEntity *
5DC80A:  STR             R0, [SP,#0x218+var_218]; bool
5DC80C:  MOV             R0, R6; this
5DC80E:  BLX.W           j__ZN22CEventGunShotWhizzedByC2EP7CEntityRK7CVectorS4_b; CEventGunShotWhizzedBy::CEventGunShotWhizzedBy(CEntity *,CVector const&,CVector const&,bool)
5DC812:  BLX.W           j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5DC816:  MOV             R1, R6; CEvent *
5DC818:  MOVS            R2, #0; bool
5DC81A:  BLX.W           j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5DC81E:  LDR.W           R0, =(g_InterestingEvents_ptr - 0x5DC82C)
5DC822:  MOVS            R1, #0x16
5DC824:  MOV             R2, R4
5DC826:  MOV             R8, R4
5DC828:  ADD             R0, PC; g_InterestingEvents_ptr
5DC82A:  LDR             R0, [R0]; g_InterestingEvents
5DC82C:  BLX.W           j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
5DC830:  LDR             R0, [SP,#0x218+var_1D0]
5DC832:  VLDR            D16, [R0]
5DC836:  LDR             R0, [R0,#8]
5DC838:  STR             R0, [SP,#0x218+var_78]
5DC83A:  LDR             R0, [R7,#arg_10]
5DC83C:  VSTR            D16, [SP,#0x218+var_80]
5DC840:  CMP             R0, #1
5DC842:  BNE.W           def_5DC85A; jumptable 005DC85A default case, cases 33,35-37
5DC846:  LDR             R0, [SP,#0x218+var_1C4]
5DC848:  LDR             R0, [R0]
5DC84A:  SUBS            R0, #0x16; switch 17 cases
5DC84C:  CMP             R0, #0x10
5DC84E:  BHI.W           def_5DC85A; jumptable 005DC85A default case, cases 33,35-37
5DC852:  VLDR            S16, =0.3
5DC856:  VLDR            S18, =0.2
5DC85A:  TBB.W           [PC,R0]; switch jump
5DC85E:  DCB 9; jump table for switch statement
5DC85F:  DCB 9
5DC860:  DCB 9
5DC861:  DCB 0xC
5DC862:  DCB 0xC
5DC863:  DCB 0xC
5DC864:  DCB 0x2F
5DC865:  DCB 0x2F
5DC866:  DCB 0x11
5DC867:  DCB 0x11
5DC868:  DCB 0x2F
5DC869:  DCB 0x9B
5DC86A:  DCB 9
5DC86B:  DCB 0x9B
5DC86C:  DCB 0x9B
5DC86D:  DCB 0x9B
5DC86E:  DCB 0x11
5DC86F:  ALIGN 2
5DC870:  VMOV.F32        S16, #0.25; jumptable 005DC85A cases 22-24,34
5DC874:  B               loc_5DC8BC; jumptable 005DC85A cases 28,29,32
5DC876:  VLDR            S16, =0.45; jumptable 005DC85A cases 25-27
5DC87A:  VLDR            S18, =0.3
5DC87E:  B               loc_5DC8BC; jumptable 005DC85A cases 28,29,32
5DC880:  LDR             R0, [SP,#0x218+var_1CC]; jumptable 005DC85A cases 30,31,38
5DC882:  VMOV.F32        S16, #0.25
5DC886:  VLDR            S18, =0.65
5DC88A:  VLDR            S0, [R0,#0x40]
5DC88E:  VLDR            S2, [R0,#0x44]
5DC892:  VSUB.F32        S0, S2, S0
5DC896:  VLDR            S2, =900.0
5DC89A:  VMUL.F32        S0, S0, S2
5DC89E:  VCVT.S32.F32    S0, S0
5DC8A2:  VMOV            R0, S0
5DC8A6:  CMP             R0, #0x31 ; '1'
5DC8A8:  BGT             loc_5DC8BC; jumptable 005DC85A cases 28,29,32
5DC8AA:  LDR.W           R0, =(byte_A86208 - 0x5DC8B2)
5DC8AE:  ADD             R0, PC; byte_A86208
5DC8B0:  LDRB            R1, [R0]
5DC8B2:  ADDS            R1, #1
5DC8B4:  STRB            R1, [R0]
5DC8B6:  TST.W           R1, #1
5DC8BA:  BNE             def_5DC85A; jumptable 005DC85A default case, cases 33,35-37
5DC8BC:  ADD             R3, SP, #0x218+var_90; jumptable 005DC85A cases 28,29,32
5DC8BE:  MOVS            R5, #0
5DC8C0:  MOVW            R0, #0x47AE
5DC8C4:  MOVS            R4, #0
5DC8C6:  LDM             R3, {R1-R3}
5DC8C8:  MOVT            R5, #0x4040
5DC8CC:  MOVT            R0, #0x3E61
5DC8D0:  STRD.W          R4, R4, [SP,#0x218+var_1F8]
5DC8D4:  MOV.W           R6, #0x3E800000
5DC8D8:  STRD.W          R4, R4, [SP,#0x218+var_218]
5DC8DC:  STRD.W          R4, R5, [SP,#0x218+var_210]
5DC8E0:  LDR             R5, [SP,#0x218+var_1C8]
5DC8E2:  STRD.W          R6, R0, [SP,#0x218+var_208]
5DC8E6:  MOVS            R0, #0
5DC8E8:  STRD.W          R4, R4, [SP,#0x218+var_200]
5DC8EC:  BLX.W           j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
5DC8F0:  LDRB.W          R0, [R5,#0x3A]
5DC8F4:  AND.W           R0, R0, #7
5DC8F8:  CMP             R0, #3
5DC8FA:  BNE             loc_5DC908
5DC8FC:  LDR.W           R0, [R5,#0x504]
5DC900:  CMP             R0, #0
5DC902:  IT EQ
5DC904:  MOVEQ           R4, #1
5DC906:  B               loc_5DC90A
5DC908:  MOVS            R4, #1
5DC90A:  LDR.W           R0, =(g_fx_ptr - 0x5DC918)
5DC90E:  ADD             R2, SP, #0x218+var_90; CVector *
5DC910:  ADD             R3, SP, #0x218+var_A0; CVector *
5DC912:  MOV             R1, R5; CEntity *
5DC914:  ADD             R0, PC; g_fx_ptr
5DC916:  STR             R4, [SP,#0x218+var_218]; float
5DC918:  LDR             R0, [R0]; g_fx ; this
5DC91A:  BLX.W           j__ZN4Fx_c14TriggerGunshotEP7CEntityR7CVectorS3_b; Fx_c::TriggerGunshot(CEntity *,CVector &,CVector &,bool)
5DC91E:  VLDR            S0, [SP,#0x218+var_A0]
5DC922:  VLDR            S2, [SP,#0x218+var_A0+4]
5DC926:  VLDR            S4, [SP,#0x218+var_98]
5DC92A:  VMUL.F32        S0, S18, S0
5DC92E:  VMUL.F32        S2, S18, S2
5DC932:  VLDR            D16, [SP,#0x218+var_90]
5DC936:  VMUL.F32        S4, S18, S4
5DC93A:  LDR             R0, [SP,#0x218+var_88]
5DC93C:  VSTR            D16, [SP,#0x218+var_180]
5DC940:  STR             R0, [SP,#0x218+var_178]
5DC942:  VLDR            S6, [SP,#0x218+var_180]
5DC946:  VLDR            S8, [SP,#0x218+var_180+4]
5DC94A:  VLDR            S10, [SP,#0x218+var_178]
5DC94E:  VSUB.F32        S0, S6, S0
5DC952:  VSUB.F32        S2, S8, S2
5DC956:  VSUB.F32        S4, S10, S4
5DC95A:  VSTR            S0, [SP,#0x218+var_180]
5DC95E:  VSTR            S2, [SP,#0x218+var_180+4]
5DC962:  VSTR            S4, [SP,#0x218+var_178]
5DC966:  LDR             R0, [R5,#0x14]
5DC968:  CBNZ            R0, loc_5DC97A
5DC96A:  MOV             R0, R5; this
5DC96C:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5DC970:  LDR             R1, [R5,#0x14]; CMatrix *
5DC972:  ADDS            R0, R5, #4; this
5DC974:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5DC978:  LDR             R0, [R5,#0x14]
5DC97A:  LDRD.W          R1, R0, [R0]
5DC97E:  ADD             R2, SP, #0x218+var_180; int
5DC980:  STRD.W          R1, R0, [SP,#0x218+var_1C0]
5DC984:  ADD             R3, SP, #0x218+var_1C0; int
5DC986:  LDR             R0, [SP,#0x218+var_1C4]; int
5DC988:  MOV             R1, R5; this
5DC98A:  VSTR            S16, [SP,#0x218+var_218]
5DC98E:  MOV             R8, R5
5DC990:  BLX.W           j__ZN7CWeapon11AddGunshellEP7CEntityRK7CVectorRK9CVector2Df; CWeapon::AddGunshell(CEntity *,CVector const&,CVector2D const&,float)
5DC994:  LDR             R1, [R7,#arg_0]; jumptable 005DC85A default case, cases 33,35-37
5DC996:  CBZ             R1, loc_5DC9B2
5DC998:  LDRB.W          R0, [R1,#0x3A]
5DC99C:  AND.W           R0, R0, #7
5DC9A0:  SUBS            R0, #2
5DC9A2:  UXTB            R0, R0
5DC9A4:  CMP             R0, #2
5DC9A6:  BHI             loc_5DCA60
5DC9A8:  LDRB.W          R0, [R1,#0x45]
5DC9AC:  LSLS            R0, R0, #0x1F
5DC9AE:  BNE             loc_5DC9F0
5DC9B0:  B               loc_5DCA60
5DC9B2:  LDR             R0, [SP,#0x218+var_1D4]; this
5DC9B4:  CBZ             R0, loc_5DC9D0
5DC9B6:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DC9BA:  CMP             R0, #1
5DC9BC:  BNE             loc_5DC9D0
5DC9BE:  VLDR            S0, [SP,#0x218+var_68]
5DC9C2:  VLDR            S2, [R11]
5DC9C6:  VCMPE.F32       S0, S2
5DC9CA:  VMRS            APSR_nzcv, FPSCR
5DC9CE:  BLT             loc_5DC9F0
5DC9D0:  LDRB.W          R0, [R8,#0x3A]
5DC9D4:  MOVS            R1, #8
5DC9D6:  ORR.W           R0, R1, R0,LSR#3
5DC9DA:  CMP             R0, #8
5DC9DC:  BNE             loc_5DCA60
5DC9DE:  VLDR            S0, [SP,#0x218+var_68]
5DC9E2:  VLDR            S2, [R11]
5DC9E6:  VCMPE.F32       S0, S2
5DC9EA:  VMRS            APSR_nzcv, FPSCR
5DC9EE:  BGE             loc_5DCA60
5DC9F0:  LDR             R0, [SP,#0x218+var_D4]
5DC9F2:  CBZ             R0, loc_5DCA16
5DC9F4:  LDRD.W          R3, R6, [SP,#0x218+var_D0]
5DC9F8:  ADD             R4, SP, #0x218+var_180
5DC9FA:  LDR             R5, [SP,#0x218+var_C8]
5DC9FC:  LDR             R0, [SP,#0x218+var_80]
5DC9FE:  LDR.W           R2, [R11]
5DCA02:  LDR.W           R1, [R9]
5DCA06:  STRD.W          R6, R5, [SP,#0x218+var_218]
5DCA0A:  STR             R4, [SP,#0x218+var_210]
5DCA0C:  BLX.W           j__ZN11CWaterLevel20TestLineAgainstWaterE7CVectorS0_PS0_; CWaterLevel::TestLineAgainstWater(CVector,CVector,CVector*)
5DCA10:  CBNZ            R0, loc_5DCA36
5DCA12:  LDR             R0, [SP,#0x218+var_D4]
5DCA14:  CBNZ            R0, loc_5DCA5C
5DCA16:  LDRD.W          R3, R6, [SP,#0x218+var_70]
5DCA1A:  ADD             R4, SP, #0x218+var_180
5DCA1C:  LDR             R5, [SP,#0x218+var_68]
5DCA1E:  LDR             R0, [SP,#0x218+var_80]
5DCA20:  LDR.W           R2, [R11]
5DCA24:  LDR.W           R1, [R9]
5DCA28:  STRD.W          R6, R5, [SP,#0x218+var_218]
5DCA2C:  STR             R4, [SP,#0x218+var_210]
5DCA2E:  BLX.W           j__ZN11CWaterLevel20TestLineAgainstWaterE7CVectorS0_PS0_; CWaterLevel::TestLineAgainstWater(CVector,CVector,CVector*)
5DCA32:  CMP             R0, #1
5DCA34:  BNE             loc_5DCA5C
5DCA36:  LDR.W           R0, =(g_fx_ptr - 0x5DCA40)
5DCA3A:  ADD             R6, SP, #0x218+var_180
5DCA3C:  ADD             R0, PC; g_fx_ptr
5DCA3E:  MOV             R1, R6; CVector *
5DCA40:  LDR             R0, [R0]; g_fx ; this
5DCA42:  BLX.W           j__ZN4Fx_c19TriggerBulletSplashER7CVector; Fx_c::TriggerBulletSplash(CVector &)
5DCA46:  LDR.W           R0, =(AudioEngine_ptr - 0x5DCA54)
5DCA4A:  MOVS            R1, #0
5DCA4C:  STR             R1, [SP,#0x218+var_218]; float
5DCA4E:  MOVS            R1, #0; CEntity *
5DCA50:  ADD             R0, PC; AudioEngine_ptr
5DCA52:  MOVS            R2, #0x27 ; '''; unsigned __int8
5DCA54:  MOV             R3, R6; CVector *
5DCA56:  LDR             R0, [R0]; AudioEngine ; this
5DCA58:  BLX.W           j__ZN12CAudioEngine15ReportBulletHitEP7CEntityhR7CVectorf; CAudioEngine::ReportBulletHit(CEntity *,uchar,CVector &,float)
5DCA5C:  LDR.W           R8, [SP,#0x218+var_1C8]
5DCA60:  LDR.W           R0, =(_ZN6CWorld17fWeaponSpreadRateE_ptr - 0x5DCA6A)
5DCA64:  LDR             R3, [SP,#0x218+var_D4]
5DCA66:  ADD             R0, PC; _ZN6CWorld17fWeaponSpreadRateE_ptr
5DCA68:  LDR             R0, [R0]; CWorld::fWeaponSpreadRate ...
5DCA6A:  VLDR            S0, [R0]
5DCA6E:  VCMPE.F32       S0, #0.0
5DCA72:  VMRS            APSR_nzcv, FPSCR
5DCA76:  BLE             loc_5DCA92
5DCA78:  CBZ             R3, loc_5DCA92
5DCA7A:  LDRB.W          R0, [R3,#0x3A]
5DCA7E:  AND.W           R0, R0, #7
5DCA82:  CMP             R0, #2
5DCA84:  BNE             loc_5DCAAE
5DCA86:  LDRB.W          R0, [SP,#0x218+var_AC]
5DCA8A:  SUBS            R0, #0xD
5DCA8C:  UXTB            R0, R0
5DCA8E:  CMP             R0, #4
5DCA90:  BCS             loc_5DCAAE
5DCA92:  ADD             R1, SP, #0x218+var_D0
5DCA94:  ADD             R2, SP, #0x218+var_70
5DCA96:  MOVS            R0, #0
5DCA98:  ADD             R6, SP, #0x218+var_90
5DCA9A:  STRD.W          R2, R1, [SP,#0x218+var_218]; CVector *
5DCA9E:  MOV             R2, R3; int
5DCAA0:  STR             R0, [SP,#0x218+var_210]; int
5DCAA2:  MOV             R1, R8; int
5DCAA4:  LDR             R0, [SP,#0x218+var_1C4]; int
5DCAA6:  MOV             R3, R6; int
5DCAA8:  BLX.W           j__ZN7CWeapon14DoBulletImpactEP7CEntityS1_P7CVectorS3_P9CColPointi; CWeapon::DoBulletImpact(CEntity *,CEntity *,CVector *,CVector *,CColPoint *,int)
5DCAAC:  B               loc_5DCD14
5DCAAE:  ADD             R4, SP, #0x218+var_1C0
5DCAB0:  LDR.W           R1, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5DCAC8)
5DCAB4:  ADD.W           R0, R4, #0x20 ; ' '
5DCAB8:  STR             R0, [SP,#0x218+var_1D0]
5DCABA:  ADD.W           R0, R4, #0x10
5DCABE:  STR             R0, [SP,#0x218+var_1D4]
5DCAC0:  LDR.W           R0, =(SHOTGUN_NUM_PELLETS_ptr - 0x5DCAD0)
5DCAC4:  ADD             R1, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5DCAC6:  VMOV.F32        S20, #1.0
5DCACA:  ADD             R6, SP, #0x218+var_180
5DCACC:  ADD             R0, PC; SHOTGUN_NUM_PELLETS_ptr
5DCACE:  VMOV.F32        S22, #0.5
5DCAD2:  VMOV.F32        Q4, #1.0
5DCAD6:  MOVS            R5, #0
5DCAD8:  LDR             R0, [R0]; SHOTGUN_NUM_PELLETS
5DCADA:  MOV.W           R10, #0
5DCADE:  STR             R0, [SP,#0x218+var_1D8]
5DCAE0:  MOV             R9, R8
5DCAE2:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5DCAEA)
5DCAE6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5DCAE8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5DCAEA:  STR             R0, [SP,#0x218+var_1E4]
5DCAEC:  LDR.W           R0, =(_ZN7CWeapon16ms_PelletTestColE_ptr - 0x5DCAF4)
5DCAF0:  ADD             R0, PC; _ZN7CWeapon16ms_PelletTestColE_ptr
5DCAF2:  LDR             R0, [R0]; CWeapon::ms_PelletTestCol ...
5DCAF4:  STR             R0, [SP,#0x218+var_1DC]
5DCAF6:  LDR             R0, [R1]; CWorld::m_aTempColPts ...
5DCAF8:  STR             R0, [SP,#0x218+var_1E0]
5DCAFA:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5DCB02)
5DCAFE:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5DCB00:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
5DCB02:  STR             R0, [SP,#0x218+var_1E8]
5DCB04:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DCB0C)
5DCB08:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DCB0A:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
5DCB0C:  STR             R0, [SP,#0x218+var_1EC]
5DCB0E:  LDR             R0, [SP,#0x218+var_1C4]
5DCB10:  MOV             R2, R9
5DCB12:  STR.W           R10, [SP,#0x218+var_1CC]
5DCB16:  LDR.W           R1, =(SPAS_NUM_PELLETS_ptr - 0x5DCB20)
5DCB1A:  LDR             R0, [R0]
5DCB1C:  ADD             R1, PC; SPAS_NUM_PELLETS_ptr
5DCB1E:  CMP             R0, #0x1B
5DCB20:  LDR             R0, [SP,#0x218+var_1D8]
5DCB22:  IT EQ
5DCB24:  LDREQ           R0, [R1]; SPAS_NUM_PELLETS
5DCB26:  LDR.W           R8, [R0]
5DCB2A:  ADD             R0, SP, #0x218+var_80
5DCB2C:  STRD.W          R5, R5, [SP,#0x218+var_140]
5DCB30:  STR             R0, [SP,#0x218+var_218]
5DCB32:  ADD             R0, SP, #0x218+var_D0
5DCB34:  MOV             R1, R8
5DCB36:  STRD.W          R0, R6, [SP,#0x218+var_214]; int
5DCB3A:  BLX.W           j__ZN7CWeapon14SetUpPelletColEiP7CEntityS1_R7CVectorR9CColPointR7CMatrix; CWeapon::SetUpPelletCol(int,CEntity *,CEntity *,CVector &,CColPoint &,CMatrix &)
5DCB3E:  LDR             R0, [SP,#0x218+var_1D4]
5DCB40:  MOV.W           R1, #0x3F800000
5DCB44:  VST1.32         {D8-D9}, [R4]
5DCB48:  MOV             R5, R9
5DCB4A:  VST1.32         {D8-D9}, [R0]
5DCB4E:  LDR             R0, [SP,#0x218+var_1D0]
5DCB50:  VST1.32         {D8-D9}, [R0]
5DCB54:  LDR             R0, [SP,#0x218+var_D4]; this
5DCB56:  STRD.W          R1, R1, [SP,#0x218+var_190]
5DCB5A:  STR             R1, [SP,#0x218+var_188]
5DCB5C:  LDRB.W          R1, [R0,#0x3A]
5DCB60:  AND.W           R1, R1, #7
5DCB64:  CMP             R1, #3
5DCB66:  BNE             loc_5DCB8C
5DCB68:  LDRSH.W         R2, [R0,#0x26]
5DCB6C:  LDR             R1, [R0,#0x18]
5DCB6E:  LDR             R0, [SP,#0x218+var_1E4]
5DCB70:  LDR.W           R0, [R0,R2,LSL#2]
5DCB74:  BLX.W           j__ZN13CPedModelInfo25AnimatePedColModelSkinnedEP7RpClump; CPedModelInfo::AnimatePedColModelSkinned(RpClump *)
5DCB78:  B               loc_5DCB90
5DCB7A:  ALIGN 4
5DCB7C:  DCFS 0.45
5DCB80:  DCFS 0.3
5DCB84:  DCFS 0.65
5DCB88:  DCFS 900.0
5DCB8C:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5DCB90:  LDR.W           R11, [SP,#0x218+var_D4]
5DCB94:  MOV             R9, R0
5DCB96:  LDR.W           R2, [R11,#0x14]
5DCB9A:  CBNZ            R2, loc_5DCBB2
5DCB9C:  MOV             R0, R11; this
5DCB9E:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5DCBA2:  LDR.W           R1, [R11,#0x14]; CMatrix *
5DCBA6:  ADD.W           R0, R11, #4; this
5DCBAA:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5DCBAE:  LDR.W           R2, [R11,#0x14]; CMatrix *
5DCBB2:  LDR             R0, [SP,#0x218+var_1E0]
5DCBB4:  MOV.W           R11, #0
5DCBB8:  MOV             R3, R9; int
5DCBBA:  STRD.W          R0, R0, [SP,#0x218+var_218]; int
5DCBBE:  ADD             R0, SP, #0x218+var_180; int
5DCBC0:  STRD.W          R4, R11, [SP,#0x218+var_210]; int
5DCBC4:  LDR             R1, [SP,#0x218+var_1DC]; int
5DCBC6:  BLX.W           j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
5DCBCA:  CMP.W           R8, #1
5DCBCE:  BLT             loc_5DCC4C
5DCBD0:  ADD             R0, SP, #0x218+var_1C0
5DCBD2:  MOVS            R6, #0
5DCBD4:  MOV.W           R11, #0
5DCBD8:  MOVS            R1, #0
5DCBDA:  MOV             R9, R5
5DCBDC:  VLDR            S0, [R0]
5DCBE0:  ADDS            R0, #4
5DCBE2:  VCMPE.F32       S0, S20
5DCBE6:  VMRS            APSR_nzcv, FPSCR
5DCBEA:  ITT LT
5DCBEC:  MOVLT           R6, R1
5DCBEE:  ADDLT.W         R11, R11, #1
5DCBF2:  ADDS            R1, #1
5DCBF4:  CMP             R8, R1
5DCBF6:  BNE             loc_5DCBDC
5DCBF8:  CMP.W           R8, #1
5DCBFC:  BLT             loc_5DCC4E
5DCBFE:  LDR.W           R10, [SP,#0x218+var_1E8]
5DCC02:  RSB.W           R9, R11, #0
5DCC06:  ADD             R5, SP, #0x218+var_1C0
5DCC08:  MOV             R4, R8
5DCC0A:  VLDR            S0, [R5]
5DCC0E:  VCMPE.F32       S0, S20
5DCC12:  VMRS            APSR_nzcv, FPSCR
5DCC16:  BGE             loc_5DCC34
5DCC18:  CMP             R6, #0
5DCC1A:  LDR             R2, [SP,#0x218+var_D4]; int
5DCC1C:  STRD.W          R10, R10, [SP,#0x218+var_218]; CVector *
5DCC20:  ITTE NE
5DCC22:  MOVNE           R0, #1
5DCC24:  STRNE           R0, [SP,#0x218+var_210]
5DCC26:  STREQ.W         R9, [SP,#0x218+var_210]; int
5DCC2A:  LDRD.W          R1, R0, [SP,#0x218+var_1C8]; int
5DCC2E:  ADD             R3, SP, #0x218+var_90; int
5DCC30:  BLX.W           j__ZN7CWeapon14DoBulletImpactEP7CEntityS1_P7CVectorS3_P9CColPointi; CWeapon::DoBulletImpact(CEntity *,CEntity *,CVector *,CVector *,CColPoint *,int)
5DCC34:  SUBS            R4, #1
5DCC36:  ADD.W           R10, R10, #0x2C ; ','
5DCC3A:  SUB.W           R6, R6, #1
5DCC3E:  ADD.W           R5, R5, #4
5DCC42:  BNE             loc_5DCC0A
5DCC44:  LDR.W           R9, [SP,#0x218+var_1C8]
5DCC48:  ADD             R4, SP, #0x218+var_1C0
5DCC4A:  B               loc_5DCC4E
5DCC4C:  MOV             R9, R5
5DCC4E:  LDR             R2, [SP,#0x218+var_D4]; CVector *
5DCC50:  LDR             R1, [SP,#0x218+var_1CC]
5DCC52:  LDRB.W          R0, [R2,#0x3A]
5DCC56:  ADD.W           R10, R1, #1
5DCC5A:  AND.W           R0, R0, #6
5DCC5E:  CMP             R0, #2
5DCC60:  BNE             loc_5DCC7C
5DCC62:  VLDR            S0, [SP,#0x218+var_1C0]
5DCC66:  VCMP.F32        S0, S20
5DCC6A:  VMRS            APSR_nzcv, FPSCR
5DCC6E:  BNE             loc_5DCC98
5DCC70:  ADD             R6, SP, #0x218+var_180
5DCC72:  CMP             R1, #0
5DCC74:  BLE             loc_5DCCBC
5DCC76:  MOVS            R5, #0
5DCC78:  STR             R5, [SP,#0x218+var_D4]
5DCC7A:  B               loc_5DCD06
5DCC7C:  ADD             R0, SP, #0x218+var_70
5DCC7E:  STR             R0, [SP,#0x218+var_218]; CVector *
5DCC80:  ADD             R0, SP, #0x218+var_D0
5DCC82:  STR             R0, [SP,#0x218+var_214]; int
5DCC84:  LDR             R0, [SP,#0x218+var_1C4]; int
5DCC86:  ADD             R3, SP, #0x218+var_90; int
5DCC88:  MOVS            R5, #0
5DCC8A:  MOV             R1, R9; int
5DCC8C:  STR             R5, [SP,#0x218+var_210]; int
5DCC8E:  BLX.W           j__ZN7CWeapon14DoBulletImpactEP7CEntityS1_P7CVectorS3_P9CColPointi; CWeapon::DoBulletImpact(CEntity *,CEntity *,CVector *,CVector *,CColPoint *,int)
5DCC92:  ADD             R6, SP, #0x218+var_180
5DCC94:  STR             R5, [SP,#0x218+var_D4]
5DCC96:  B               loc_5DCD06
5DCC98:  VMOV            S0, R8
5DCC9C:  ADD             R6, SP, #0x218+var_180
5DCC9E:  VMOV            S2, R11
5DCCA2:  CMP             R1, #0
5DCCA4:  VCVT.F32.S32    S0, S0
5DCCA8:  VCVT.F32.S32    S2, S2
5DCCAC:  BGT             loc_5DCC76
5DCCAE:  VDIV.F32        S0, S2, S0
5DCCB2:  VCMPE.F32       S0, S22
5DCCB6:  VMRS            APSR_nzcv, FPSCR
5DCCBA:  BGE             loc_5DCC76
5DCCBC:  LDR             R1, [SP,#0x218+var_1EC]
5DCCBE:  ADD.W           R8, SP, #0x218+var_80
5DCCC2:  ADD             R4, SP, #0x218+var_70
5DCCC4:  LDR             R0, [SP,#0x218+var_C8]
5DCCC6:  VLDR            D16, [SP,#0x218+var_D0]
5DCCCA:  MOVS            R5, #0
5DCCCC:  STR             R0, [SP,#0x218+var_78]
5DCCCE:  MOV             R0, R8; this
5DCCD0:  STR             R2, [R1]
5DCCD2:  MOV             R1, R4; CVector *
5DCCD4:  STR             R5, [SP,#0x218+var_D4]
5DCCD6:  VSTR            D16, [SP,#0x218+var_80]
5DCCDA:  BLX.W           j__ZN6CBirds13HandleGunShotEPK7CVectorS2_; CBirds::HandleGunShot(CVector const*,CVector const*)
5DCCDE:  MOV             R0, R8; this
5DCCE0:  MOV             R1, R4; CVector *
5DCCE2:  BLX.W           j__ZN8CShadows20GunShotSetsOilOnFireEPK7CVectorS2_; CShadows::GunShotSetsOilOnFire(CVector const*,CVector const*)
5DCCE6:  MOVS            R0, #1
5DCCE8:  ADD             R2, SP, #0x218+var_D0
5DCCEA:  ADD             R3, SP, #0x218+var_D4
5DCCEC:  STRD.W          R0, R0, [SP,#0x218+var_218]
5DCCF0:  STRD.W          R0, R0, [SP,#0x218+var_210]
5DCCF4:  MOV             R1, R4
5DCCF6:  STRD.W          R0, R5, [SP,#0x218+var_208]
5DCCFA:  ADD             R4, SP, #0x218+var_1C0
5DCCFC:  STRD.W          R5, R0, [SP,#0x218+var_200]
5DCD00:  MOV             R0, R8
5DCD02:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DCD06:  MOV             R0, R6; this
5DCD08:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5DCD0C:  LDR             R3, [SP,#0x218+var_D4]
5DCD0E:  CMP             R3, #0
5DCD10:  BNE.W           loc_5DCB0E
5DCD14:  BLX.W           j__ZN6CWorld20ResetLineTestOptionsEv; CWorld::ResetLineTestOptions(void)
5DCD18:  ADD             R0, SP, #0x218+var_138; this
5DCD1A:  BLX.W           j__ZN22CEventGunShotWhizzedByD2Ev_0; CEventGunShotWhizzedBy::~CEventGunShotWhizzedBy()
5DCD1E:  ADD             R0, SP, #0x218+var_108; this
5DCD20:  BLX.W           j__ZN22CEventGunShotWhizzedByD2Ev; CEventGunShotWhizzedBy::~CEventGunShotWhizzedBy()
5DCD24:  MOVS            R0, #1
5DCD26:  ADD             SP, SP, #0x1B8
5DCD28:  VPOP            {D8-D15}
5DCD2C:  ADD             SP, SP, #4
5DCD2E:  POP.W           {R8-R11}
5DCD32:  POP             {R4-R7,PC}
5DCD34:  VMOV.F32        S0, #3.0
5DCD38:  LDR             R0, [SP,#0x218+var_1CC]
5DCD3A:  ADD             R6, SP, #0x218+var_80
5DCD3C:  ADD             R5, SP, #0x218+var_70
5DCD3E:  VLDR            S2, [R0,#8]
5DCD42:  LDR.W           R0, =(TheCamera_ptr - 0x5DCD4C)
5DCD46:  LDM             R6, {R2,R3,R6}
5DCD48:  ADD             R0, PC; TheCamera_ptr
5DCD4A:  VMUL.F32        S0, S2, S0
5DCD4E:  STR             R5, [SP,#0x218+var_210]
5DCD50:  LDR             R0, [R0]; TheCamera
5DCD52:  ADD             R5, SP, #0x218+var_180
5DCD54:  STR             R5, [SP,#0x218+var_214]
5DCD56:  LDR             R5, [SP,#0x218+var_1C8]
5DCD58:  STR             R6, [SP,#0x218+var_218]
5DCD5A:  VMOV            R1, S0
5DCD5E:  BLX.W           j__ZN7CCamera28Find3rdPersonCamTargetVectorEf7CVectorRS0_S1_; CCamera::Find3rdPersonCamTargetVector(float,CVector,CVector&,CVector&)
5DCD62:  VLDR            S0, [SP,#0x218+var_80]
5DCD66:  ADD             R0, SP, #0x218+var_80
5DCD68:  VLDR            S6, [SP,#0x218+var_70]
5DCD6C:  ADD.W           R10, R0, #8
5DCD70:  VLDR            S2, [SP,#0x218+var_80+4]
5DCD74:  ORR.W           R9, R0, #4
5DCD78:  VLDR            S8, [SP,#0x218+var_70+4]
5DCD7C:  VSUB.F32        S0, S6, S0
5DCD80:  VLDR            S4, [SP,#0x218+var_78]
5DCD84:  ADD             R0, SP, #0x218+var_A0; this
5DCD86:  VLDR            S10, [SP,#0x218+var_68]
5DCD8A:  VSUB.F32        S2, S8, S2
5DCD8E:  VSUB.F32        S4, S10, S4
5DCD92:  VSTR            S0, [SP,#0x218+var_A0]
5DCD96:  VSTR            S2, [SP,#0x218+var_A0+4]
5DCD9A:  VSTR            S4, [SP,#0x218+var_98]
5DCD9E:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DCDA2:  VCMP.F32        S16, #0.0
5DCDA6:  VMRS            APSR_nzcv, FPSCR
5DCDAA:  BEQ.W           loc_5DCFCA
5DCDAE:  LDR.W           R0, =(fPlayerAimScaleDist_ptr - 0x5DCDC2)
5DCDB2:  VMOV.F32        S0, #3.0
5DCDB6:  VMOV.F32        S4, #1.0
5DCDBA:  LDR.W           R1, [R11,#0x444]
5DCDBE:  ADD             R0, PC; fPlayerAimScaleDist_ptr
5DCDC0:  LDR             R0, [R0]; fPlayerAimScaleDist
5DCDC2:  VLDR            S2, [R0]
5DCDC6:  LDR             R0, [SP,#0x218+var_1CC]
5DCDC8:  VMUL.F32        S0, S2, S0
5DCDCC:  VLDR            S2, [R0,#8]
5DCDD0:  LDR.W           R0, =(fPlayerAimScale_ptr - 0x5DCDD8)
5DCDD4:  ADD             R0, PC; fPlayerAimScale_ptr
5DCDD6:  VDIV.F32        S0, S0, S2
5DCDDA:  LDR             R0, [R0]; fPlayerAimScale
5DCDDC:  VMIN.F32        D0, D0, D2
5DCDE0:  VLDR            S6, [R0]
5DCDE4:  VLDR            S2, [R1,#0x2C]
5DCDE8:  LDR.W           R0, =(TheCamera_ptr - 0x5DCDF4)
5DCDEC:  VMUL.F32        S2, S6, S2
5DCDF0:  ADD             R0, PC; TheCamera_ptr
5DCDF2:  VMUL.F32        S0, S16, S0
5DCDF6:  LDR             R0, [R0]; TheCamera
5DCDF8:  LDRH.W          R0, [R0,#(word_952126 - 0x951FA8)]
5DCDFC:  CMP             R0, #0x31 ; '1'
5DCDFE:  VMUL.F32        S16, S0, S2
5DCE02:  BEQ             loc_5DCE70
5DCE04:  CMP             R0, #0x37 ; '7'
5DCE06:  IT NE
5DCE08:  CMPNE           R0, #0x35 ; '5'
5DCE0A:  BNE             loc_5DCEAC
5DCE0C:  LDR.W           R0, =(TheCamera_ptr - 0x5DCE16)
5DCE10:  ADD             R2, SP, #0x218+var_108
5DCE12:  ADD             R0, PC; TheCamera_ptr
5DCE14:  LDR             R0, [R0]; TheCamera
5DCE16:  LDR.W           R1, [R0,#(dword_9522AC - 0x951FA8)]
5DCE1A:  STR             R1, [SP,#0x218+var_100]
5DCE1C:  ADD.W           R1, R0, #0x2D8; CVector *
5DCE20:  VLDR            D16, [R0,#0x2FC]
5DCE24:  ADD             R0, SP, #0x218+var_138; CVector *
5DCE26:  VSTR            D16, [SP,#0x218+var_108]
5DCE2A:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DCE2E:  LDR             R0, [SP,#0x218+var_130]
5DCE30:  VLDR            D16, [SP,#0x218+var_138]
5DCE34:  B               loc_5DCEA2
5DCE36:  LDRB.W          R0, [R2,#0x3A]
5DCE3A:  AND.W           R0, R0, #7
5DCE3E:  CMP             R0, #2
5DCE40:  BEQ.W           loc_5DD15C
5DCE44:  CMP             R0, #3
5DCE46:  BNE.W           loc_5DD16C
5DCE4A:  LDR.W           R0, [R11,#0x444]
5DCE4E:  CMP             R0, #0
5DCE50:  BEQ.W           loc_5DD616
5DCE54:  VLDR            D16, [R0,#0x74]
5DCE58:  MOVS            R3, #0
5DCE5A:  LDR             R1, [R0,#0x7C]
5DCE5C:  STR             R1, [SP,#0x218+var_68]
5DCE5E:  ADD             R1, SP, #0x218+var_70
5DCE60:  VSTR            D16, [SP,#0x218+var_70]
5DCE64:  LDR             R2, [R0,#0x70]
5DCE66:  LDR             R0, [R7,#arg_0]; this
5DCE68:  BLX.W           j__ZN4CPed26GetTransformedBonePositionER5RwV3djb; CPed::GetTransformedBonePosition(RwV3d &,uint,bool)
5DCE6C:  LDR             R2, [R7,#arg_0]
5DCE6E:  B               loc_5DD184
5DCE70:  LDR.W           R0, =(TheCamera_ptr - 0x5DCE7A)
5DCE74:  ADD             R1, SP, #0x218+var_138; CVector *
5DCE76:  ADD             R0, PC; TheCamera_ptr
5DCE78:  LDR             R4, [R0]; TheCamera
5DCE7A:  ADD.W           R0, R4, #0x170; this
5DCE7E:  BLX.W           j__ZN4CCam23Get_TwoPlayer_AimVectorER7CVector; CCam::Get_TwoPlayer_AimVector(CVector &)
5DCE82:  LDR.W           R0, [R4,#(dword_9522AC - 0x951FA8)]
5DCE86:  ADD.W           R1, R4, #0x2D8; CVector *
5DCE8A:  STR             R0, [SP,#0x218+var_100]
5DCE8C:  ADD             R0, SP, #0x218+var_D0; CVector *
5DCE8E:  VLDR            D16, [R4,#0x2FC]
5DCE92:  ADD             R2, SP, #0x218+var_108
5DCE94:  VSTR            D16, [SP,#0x218+var_108]
5DCE98:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DCE9C:  VLDR            D16, [SP,#0x218+var_D0]
5DCEA0:  LDR             R0, [SP,#0x218+var_C8]
5DCEA2:  STR             R0, [SP,#0x218+var_1B8]
5DCEA4:  ADD             R0, SP, #0x218+var_1C0
5DCEA6:  VSTR            D16, [SP,#0x218+var_1C0]
5DCEAA:  B               loc_5DCEF0
5DCEAC:  MOVS            R0, #0
5DCEAE:  ADD             R4, SP, #0x218+var_70
5DCEB0:  STRD.W          R0, R0, [SP,#0x218+var_138]
5DCEB4:  MOV.W           R0, #0x3F800000
5DCEB8:  STR             R0, [SP,#0x218+var_130]
5DCEBA:  ADD             R0, SP, #0x218+var_108; CVector *
5DCEBC:  ADD             R2, SP, #0x218+var_138
5DCEBE:  MOV             R1, R4; CVector *
5DCEC0:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DCEC4:  ADD             R6, SP, #0x218+var_1C0
5DCEC6:  LDR             R0, [SP,#0x218+var_100]
5DCEC8:  VLDR            D16, [SP,#0x218+var_108]
5DCECC:  STR             R0, [SP,#0x218+var_1B8]
5DCECE:  MOV             R0, R6; this
5DCED0:  VSTR            D16, [SP,#0x218+var_1C0]
5DCED4:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DCED8:  ADD             R0, SP, #0x218+var_138; CVector *
5DCEDA:  MOV             R1, R6; CVector *
5DCEDC:  MOV             R2, R4
5DCEDE:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DCEE2:  LDR             R0, [SP,#0x218+var_130]
5DCEE4:  STR             R0, [SP,#0x218+var_100]
5DCEE6:  ADD             R0, SP, #0x218+var_108; this
5DCEE8:  VLDR            D16, [SP,#0x218+var_138]
5DCEEC:  VSTR            D16, [SP,#0x218+var_108]
5DCEF0:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DCEF4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DCF00)
5DCEF8:  LDR.W           R1, =(fPlayerAimRotRate_ptr - 0x5DCF02)
5DCEFC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DCEFE:  ADD             R1, PC; fPlayerAimRotRate_ptr
5DCF00:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DCF02:  VLDR            S0, [R0]
5DCF06:  LDR             R0, [R1]; fPlayerAimRotRate
5DCF08:  VCVT.F32.U32    S0, S0
5DCF0C:  VLDR            S4, [SP,#0x218+var_1B8]
5DCF10:  VLDR            S20, [SP,#0x218+var_108]
5DCF14:  VLDR            S2, [R0]
5DCF18:  VMUL.F32        S28, S16, S4
5DCF1C:  VLDR            S22, [SP,#0x218+var_108+4]
5DCF20:  VLDR            S24, [SP,#0x218+var_100]
5DCF24:  VMUL.F32        S0, S2, S0
5DCF28:  VLDR            S2, [SP,#0x218+var_1C0+4]
5DCF2C:  VMUL.F32        S26, S16, S2
5DCF30:  VMOV            R6, S0
5DCF34:  VLDR            S0, [SP,#0x218+var_1C0]
5DCF38:  VMUL.F32        S18, S16, S0
5DCF3C:  MOV             R0, R6; x
5DCF3E:  BLX.W           sinf
5DCF42:  VMOV            S30, R0
5DCF46:  MOV             R0, R6; x
5DCF48:  VMUL.F32        S20, S16, S20
5DCF4C:  VMUL.F32        S24, S16, S24
5DCF50:  VMUL.F32        S16, S16, S22
5DCF54:  VMUL.F32        S18, S18, S30
5DCF58:  VMUL.F32        S22, S26, S30
5DCF5C:  BLX.W           cosf
5DCF60:  VMUL.F32        S2, S28, S30
5DCF64:  VLDR            S4, [SP,#0x218+var_70]
5DCF68:  VMOV            S0, R0
5DCF6C:  VLDR            S6, [SP,#0x218+var_70+4]
5DCF70:  VLDR            S8, [SP,#0x218+var_68]
5DCF74:  VADD.F32        S4, S18, S4
5DCF78:  VMUL.F32        S10, S20, S0
5DCF7C:  LDR             R0, [SP,#0x218+var_1CC]
5DCF7E:  VMUL.F32        S12, S16, S0
5DCF82:  VADD.F32        S6, S22, S6
5DCF86:  VMUL.F32        S0, S24, S0
5DCF8A:  VADD.F32        S2, S2, S8
5DCF8E:  VADD.F32        S4, S10, S4
5DCF92:  VADD.F32        S6, S12, S6
5DCF96:  VADD.F32        S0, S0, S2
5DCF9A:  VSTR            S4, [SP,#0x218+var_70]
5DCF9E:  VSTR            S6, [SP,#0x218+var_70+4]
5DCFA2:  VSTR            S0, [SP,#0x218+var_68]
5DCFA6:  VMOV.F32        S0, #25.0
5DCFAA:  LDRSH.W         R0, [R0,#0x22]
5DCFAE:  VMOV            S2, R0
5DCFB2:  VCVT.F32.S32    S2, S2
5DCFB6:  LDR.W           R0, [R11,#0x444]
5DCFBA:  VDIV.F32        S0, S2, S0
5DCFBE:  VLDR            S2, [R0,#0x2C]
5DCFC2:  VADD.F32        S0, S2, S0
5DCFC6:  VSTR            S0, [R0,#0x2C]
5DCFCA:  LDRB.W          R0, [R11,#0x485]
5DCFCE:  LSLS            R0, R0, #0x1F
5DCFD0:  ITT NE
5DCFD2:  LDRNE.W         R0, [R11,#0x590]
5DCFD6:  CMPNE           R0, #0
5DCFD8:  BEQ             loc_5DCFE2
5DCFDA:  LDRB.W          R1, [R0,#0x431]
5DCFDE:  LSLS            R1, R1, #0x1D
5DCFE0:  BPL             loc_5DD002
5DCFE2:  LDR.W           R0, [R11,#0x100]
5DCFE6:  CBZ             R0, loc_5DD000
5DCFE8:  LDRB.W          R1, [R0,#0x3A]
5DCFEC:  AND.W           R1, R1, #7
5DCFF0:  CMP             R1, #2
5DCFF2:  BNE             loc_5DD000
5DCFF4:  LDRB.W          R1, [R0,#0x431]
5DCFF8:  LSLS            R1, R1, #0x1D
5DCFFA:  IT MI
5DCFFC:  MOVMI           R0, R5
5DCFFE:  B               loc_5DD002
5DD000:  MOV             R0, R5
5DD002:  LDR.W           R6, =(_ZN6CWorld16bIncludeCarTyresE_ptr - 0x5DD016)
5DD006:  MOVS            R4, #1
5DD008:  LDR.W           R1, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x5DD01C)
5DD00C:  ADD             R5, SP, #0x218+var_70
5DD00E:  LDR.W           R3, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DD01E)
5DD012:  ADD             R6, PC; _ZN6CWorld16bIncludeCarTyresE_ptr
5DD014:  LDR.W           R2, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x5DD022)
5DD018:  ADD             R1, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
5DD01A:  ADD             R3, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DD01C:  LDR             R6, [R6]; CWorld::bIncludeCarTyres ...
5DD01E:  ADD             R2, PC; _ZN6CWorld14bIncludeBikersE_ptr
5DD020:  LDR             R1, [R1]; CWorld::bIncludeDeadPeds ...
5DD022:  LDR             R3, [R3]; CWorld::pIgnoreEntity ...
5DD024:  LDR             R2, [R2]; CVector *
5DD026:  STRB            R4, [R6]; CWorld::bIncludeCarTyres
5DD028:  ADD             R6, SP, #0x218+var_180
5DD02A:  STRB            R4, [R1]; CWorld::bIncludeDeadPeds
5DD02C:  MOV             R1, R5; CVector *
5DD02E:  STR             R0, [R3]; CWorld::pIgnoreEntity
5DD030:  MOV             R0, R6; this
5DD032:  STRB            R4, [R2]; CWorld::bIncludeBikers
5DD034:  BLX.W           j__ZN6CBirds13HandleGunShotEPK7CVectorS2_; CBirds::HandleGunShot(CVector const*,CVector const*)
5DD038:  MOV             R0, R6; this
5DD03A:  MOV             R1, R5; CVector *
5DD03C:  BLX.W           j__ZN8CShadows20GunShotSetsOilOnFireEPK7CVectorS2_; CShadows::GunShotSetsOilOnFire(CVector const*,CVector const*)
5DD040:  MOVS            R0, #0
5DD042:  STRD.W          R4, R4, [SP,#0x218+var_218]
5DD046:  STRD.W          R4, R4, [SP,#0x218+var_210]
5DD04A:  ADD             R2, SP, #0x218+var_D0
5DD04C:  STRD.W          R4, R0, [SP,#0x218+var_208]
5DD050:  ADD             R3, SP, #0x218+var_D4
5DD052:  STRD.W          R0, R4, [SP,#0x218+var_200]
5DD056:  MOV             R4, R5
5DD058:  MOV             R0, R6
5DD05A:  MOV             R1, R4
5DD05C:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DD060:  LDR             R0, [SP,#0x218+var_D4]
5DD062:  MOV             R5, R9
5DD064:  CMP             R0, #0
5DD066:  BEQ.W           loc_5DC7A4
5DD06A:  VLDR            S0, [SP,#0x218+var_180]
5DD06E:  VMOV.F32        S18, #1.0
5DD072:  VLDR            S4, [SP,#0x218+var_D0]
5DD076:  CMP.W           R8, #0
5DD07A:  VLDR            S2, [SP,#0x218+var_180+4]
5DD07E:  VLDR            S6, [SP,#0x218+var_D0+4]
5DD082:  VSUB.F32        S0, S4, S0
5DD086:  VSUB.F32        S2, S6, S2
5DD08A:  VMUL.F32        S0, S0, S0
5DD08E:  VMUL.F32        S2, S2, S2
5DD092:  VADD.F32        S0, S0, S2
5DD096:  VSQRT.F32       S16, S0
5DD09A:  BEQ             loc_5DD128
5DD09C:  LDRB.W          R1, [R0,#0x3A]
5DD0A0:  AND.W           R1, R1, #7
5DD0A4:  CMP             R1, #3
5DD0A6:  BEQ             loc_5DD0B6
5DD0A8:  CMP             R1, #2
5DD0AA:  BNE             loc_5DD0D8
5DD0AC:  LDR.W           R0, [R0,#0x5A0]
5DD0B0:  CMP             R0, #9
5DD0B2:  BEQ             loc_5DD0D8
5DD0B4:  B               loc_5DD124
5DD0B6:  LDR.W           R1, [R0,#0x590]
5DD0BA:  CMP             R1, #0
5DD0BC:  ITT NE
5DD0BE:  LDRNE.W         R1, [R1,#0x5A0]
5DD0C2:  CMPNE           R1, #9
5DD0C4:  BNE             loc_5DD124
5DD0C6:  LDR.W           R0, [R0,#0x100]
5DD0CA:  CBZ             R0, loc_5DD0D8
5DD0CC:  LDRB.W          R1, [R0,#0x3A]
5DD0D0:  AND.W           R1, R1, #7
5DD0D4:  CMP             R1, #2
5DD0D6:  BEQ             loc_5DD0AC
5DD0D8:  LDRB.W          R0, [R8,#0x3A]
5DD0DC:  AND.W           R0, R0, #7
5DD0E0:  CMP             R0, #3
5DD0E2:  BNE             loc_5DD128
5DD0E4:  MOV             R0, R8; this
5DD0E6:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DD0EA:  CMP             R0, #1
5DD0EC:  BNE             loc_5DD128
5DD0EE:  LDR.W           R0, =(TheCamera_ptr - 0x5DD0FE)
5DD0F2:  VMOV.F32        S0, #3.0
5DD0F6:  VMOV.F32        S18, #1.0
5DD0FA:  ADD             R0, PC; TheCamera_ptr
5DD0FC:  LDR             R0, [R0]; TheCamera
5DD0FE:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DD102:  ADD.W           R1, R1, R1,LSL#5
5DD106:  ADD.W           R0, R0, R1,LSL#4
5DD10A:  LDRH.W          R0, [R0,#0x17E]
5DD10E:  CMP             R0, #0x2D ; '-'
5DD110:  IT EQ
5DD112:  VMOVEQ.F32      S18, S0
5DD116:  VMOV.F32        S0, #2.0
5DD11A:  CMP             R0, #0x31 ; '1'
5DD11C:  IT EQ
5DD11E:  VMOVEQ.F32      S18, S0
5DD122:  B               loc_5DD128
5DD124:  VMOV.F32        S18, #3.0
5DD128:  LDR             R0, [SP,#0x218+var_1CC]
5DD12A:  VLDR            S0, [R0,#8]
5DD12E:  VMUL.F32        S0, S18, S0
5DD132:  VCMPE.F32       S16, S0
5DD136:  VMRS            APSR_nzcv, FPSCR
5DD13A:  BLE             loc_5DD144
5DD13C:  MOVS            R0, #0
5DD13E:  STR             R0, [SP,#0x218+var_D4]
5DD140:  B.W             loc_5DC7A4
5DD144:  LDR             R0, [SP,#0x218+var_D4]
5DD146:  CMP             R0, #0
5DD148:  BEQ.W           loc_5DC7A4
5DD14C:  ADD             R0, SP, #0x218+var_D4
5DD14E:  ADD             R1, SP, #0x218+var_D0
5DD150:  ADD             R3, SP, #0x218+var_180
5DD152:  STR             R4, [SP,#0x218+var_218]
5DD154:  BLX.W           j__ZN7CWeapon31CheckForShootingVehicleOccupantEPP7CEntityP9CColPoint11eWeaponTypeRK7CVectorS8_; CWeapon::CheckForShootingVehicleOccupant(CEntity **,CColPoint *,eWeaponType,CVector const&,CVector const&)
5DD158:  B.W             loc_5DC7A4
5DD15C:  LDR.W           R0, =(_ZN8CVehicle23m_pTappedGasTankVehicleE_ptr - 0x5DD164)
5DD160:  ADD             R0, PC; _ZN8CVehicle23m_pTappedGasTankVehicleE_ptr
5DD162:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle ...
5DD164:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle
5DD166:  CMP             R0, R2
5DD168:  BEQ.W           loc_5DD626
5DD16C:  LDR             R0, [R2,#0x14]
5DD16E:  ADD.W           R1, R0, #0x30 ; '0'
5DD172:  CMP             R0, #0
5DD174:  IT EQ
5DD176:  ADDEQ           R1, R2, #4
5DD178:  LDR             R0, [R1,#8]
5DD17A:  VLDR            D16, [R1]
5DD17E:  STR             R0, [SP,#0x218+var_68]
5DD180:  VSTR            D16, [SP,#0x218+var_70]
5DD184:  VLDR            S0, [SP,#0x218+var_80]
5DD188:  VMOV.F32        S18, #1.0
5DD18C:  VLDR            S6, [SP,#0x218+var_70]
5DD190:  CMP             R2, #0
5DD192:  VLDR            S2, [SP,#0x218+var_80+4]
5DD196:  VLDR            S8, [SP,#0x218+var_70+4]
5DD19A:  VSUB.F32        S0, S6, S0
5DD19E:  VLDR            S4, [SP,#0x218+var_78]
5DD1A2:  VSUB.F32        S2, S8, S2
5DD1A6:  VLDR            S10, [SP,#0x218+var_68]
5DD1AA:  VSUB.F32        S4, S10, S4
5DD1AE:  VMUL.F32        S8, S0, S0
5DD1B2:  VMUL.F32        S6, S2, S2
5DD1B6:  VMUL.F32        S10, S4, S4
5DD1BA:  VADD.F32        S6, S8, S6
5DD1BE:  VLDR            S8, =0.01
5DD1C2:  VADD.F32        S6, S10, S6
5DD1C6:  VSQRT.F32       S6, S6
5DD1CA:  VMAX.F32        D3, D3, D4
5DD1CE:  VDIV.F32        S6, S18, S6
5DD1D2:  VMUL.F32        S0, S0, S6
5DD1D6:  VMUL.F32        S2, S2, S6
5DD1DA:  VMUL.F32        S4, S4, S6
5DD1DE:  VSTR            S0, [SP,#0x218+var_70]
5DD1E2:  VSTR            S2, [SP,#0x218+var_70+4]
5DD1E6:  VLDR            D16, [SP,#0x218+var_70]
5DD1EA:  VSTR            S4, [SP,#0x218+var_68]
5DD1EE:  LDR             R0, [SP,#0x218+var_68]
5DD1F0:  STR             R0, [SP,#0x218+var_98]
5DD1F2:  LDR             R0, [SP,#0x218+var_1CC]
5DD1F4:  VSTR            D16, [SP,#0x218+var_A0]
5DD1F8:  VLDR            S20, [R0,#8]
5DD1FC:  IT NE
5DD1FE:  CMPNE.W         R8, #0
5DD202:  BEQ             loc_5DD298
5DD204:  LDRB.W          R0, [R2,#0x3A]
5DD208:  AND.W           R0, R0, #7
5DD20C:  CMP             R0, #3
5DD20E:  BEQ             loc_5DD21E
5DD210:  CMP             R0, #2
5DD212:  BNE             loc_5DD248
5DD214:  LDR.W           R0, [R2,#0x5A0]
5DD218:  CMP             R0, #9
5DD21A:  BEQ             loc_5DD248
5DD21C:  B               loc_5DD294
5DD21E:  LDR.W           R0, [R2,#0x590]
5DD222:  CMP             R0, #0
5DD224:  ITT NE
5DD226:  LDRNE.W         R0, [R0,#0x5A0]
5DD22A:  CMPNE           R0, #9
5DD22C:  BNE             loc_5DD294
5DD22E:  LDR.W           R0, [R2,#0x100]
5DD232:  CBZ             R0, loc_5DD248
5DD234:  LDRB.W          R1, [R0,#0x3A]
5DD238:  AND.W           R1, R1, #7
5DD23C:  CMP             R1, #2
5DD23E:  BNE             loc_5DD248
5DD240:  LDR.W           R0, [R0,#0x5A0]
5DD244:  CMP             R0, #9
5DD246:  BNE             loc_5DD294
5DD248:  LDRB.W          R0, [R8,#0x3A]
5DD24C:  AND.W           R0, R0, #7
5DD250:  CMP             R0, #3
5DD252:  BNE             loc_5DD298
5DD254:  MOV             R0, R8; this
5DD256:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DD25A:  CMP             R0, #1
5DD25C:  BNE             loc_5DD298
5DD25E:  LDR.W           R0, =(TheCamera_ptr - 0x5DD26E)
5DD262:  VMOV.F32        S0, #3.0
5DD266:  VMOV.F32        S18, #1.0
5DD26A:  ADD             R0, PC; TheCamera_ptr
5DD26C:  LDR             R0, [R0]; TheCamera
5DD26E:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DD272:  ADD.W           R1, R1, R1,LSL#5
5DD276:  ADD.W           R0, R0, R1,LSL#4
5DD27A:  LDRH.W          R0, [R0,#0x17E]
5DD27E:  CMP             R0, #0x2D ; '-'
5DD280:  IT EQ
5DD282:  VMOVEQ.F32      S18, S0
5DD286:  VMOV.F32        S0, #2.0
5DD28A:  CMP             R0, #0x31 ; '1'
5DD28C:  IT EQ
5DD28E:  VMOVEQ.F32      S18, S0
5DD292:  B               loc_5DD298
5DD294:  VMOV.F32        S18, #3.0
5DD298:  VMUL.F32        S0, S20, S18
5DD29C:  VLDR            S2, [SP,#0x218+var_70]
5DD2A0:  VCMP.F32        S16, #0.0
5DD2A4:  VLDR            S4, [SP,#0x218+var_70+4]
5DD2A8:  VMRS            APSR_nzcv, FPSCR
5DD2AC:  VLDR            S6, [SP,#0x218+var_68]
5DD2B0:  VLDR            S8, [SP,#0x218+var_80+4]
5DD2B4:  VLDR            S10, [SP,#0x218+var_78]
5DD2B8:  VMUL.F32        S4, S0, S4
5DD2BC:  VMUL.F32        S2, S2, S0
5DD2C0:  VMUL.F32        S0, S0, S6
5DD2C4:  VLDR            S6, [SP,#0x218+var_80]
5DD2C8:  VADD.F32        S4, S8, S4
5DD2CC:  VADD.F32        S2, S6, S2
5DD2D0:  VADD.F32        S0, S10, S0
5DD2D4:  VSTR            S2, [SP,#0x218+var_70]
5DD2D8:  VSTR            S4, [SP,#0x218+var_70+4]
5DD2DC:  VSTR            S0, [SP,#0x218+var_68]
5DD2E0:  ITT NE
5DD2E2:  LDRNE.W         R0, [R11,#0x444]
5DD2E6:  CMPNE           R0, #0
5DD2E8:  BEQ             loc_5DD394
5DD2EA:  LDR             R1, =(fPlayerAimScaleDist_ptr - 0x5DD2F6)
5DD2EC:  VMOV.F32        S4, #1.0
5DD2F0:  LDR             R2, [SP,#0x218+var_1CC]
5DD2F2:  ADD             R1, PC; fPlayerAimScaleDist_ptr
5DD2F4:  LDR             R1, [R1]; fPlayerAimScaleDist
5DD2F6:  VLDR            S0, [R2,#8]
5DD2FA:  VLDR            S2, [R1]
5DD2FE:  LDR             R1, =(fPlayerAimScale_ptr - 0x5DD308)
5DD300:  VDIV.F32        S0, S2, S0
5DD304:  ADD             R1, PC; fPlayerAimScale_ptr
5DD306:  LDR             R1, [R1]; fPlayerAimScale
5DD308:  VMIN.F32        D0, D0, D2
5DD30C:  VLDR            S2, [R0,#0x2C]
5DD310:  VLDR            S6, [R1]
5DD314:  VMUL.F32        S2, S6, S2
5DD318:  VMUL.F32        S0, S16, S0
5DD31C:  VMOV.F32        S16, #0.5
5DD320:  VMUL.F32        S18, S0, S2
5DD324:  BLX.W           rand
5DD328:  VMUL.F32        S6, S18, S16
5DD32C:  VLDR            S4, =0.2
5DD330:  VMOV            S0, R0
5DD334:  VLDR            S2, =4.6566e-10
5DD338:  LDR             R0, =(TheCamera_ptr - 0x5DD342)
5DD33A:  VCVT.F32.S32    S0, S0
5DD33E:  ADD             R0, PC; TheCamera_ptr
5DD340:  VMIN.F32        D2, D3, D2
5DD344:  LDR             R0, [R0]; TheCamera
5DD346:  LDRH.W          R0, [R0,#(word_952126 - 0x951FA8)]
5DD34A:  VMUL.F32        S0, S0, S2
5DD34E:  VSUB.F32        S2, S18, S4
5DD352:  ORR.W           R0, R0, #2
5DD356:  CMP             R0, #0x37 ; '7'
5DD358:  VMUL.F32        S0, S0, S2
5DD35C:  VADD.F32        S16, S4, S0
5DD360:  BNE.W           loc_5DD494
5DD364:  LDR             R0, =(TheCamera_ptr - 0x5DD36C)
5DD366:  ADD             R2, SP, #0x218+var_1C0
5DD368:  ADD             R0, PC; TheCamera_ptr
5DD36A:  LDR             R0, [R0]; TheCamera
5DD36C:  LDR.W           R1, [R0,#(dword_9522AC - 0x951FA8)]
5DD370:  STR             R1, [SP,#0x218+var_1B8]
5DD372:  ADD.W           R1, R0, #0x2D8; CVector *
5DD376:  VLDR            D16, [R0,#0x2FC]
5DD37A:  ADD             R0, SP, #0x218+var_108; CVector *
5DD37C:  VSTR            D16, [SP,#0x218+var_1C0]
5DD380:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DD384:  VLDR            D16, [SP,#0x218+var_108]
5DD388:  LDR             R0, [SP,#0x218+var_100]
5DD38A:  STR             R0, [SP,#0x218+var_178]
5DD38C:  ADD             R0, SP, #0x218+var_180
5DD38E:  VSTR            D16, [SP,#0x218+var_180]
5DD392:  B               loc_5DD4DA
5DD394:  VCMPE.F32       S16, #0.0
5DD398:  VMRS            APSR_nzcv, FPSCR
5DD39C:  BLE.W           loc_5DD5B0
5DD3A0:  LDR             R0, [R7,#arg_0]; this
5DD3A2:  CBZ             R0, loc_5DD3FE
5DD3A4:  LDRB.W          R1, [R0,#0x3A]
5DD3A8:  AND.W           R1, R1, #7
5DD3AC:  CMP             R1, #3
5DD3AE:  BNE             loc_5DD3FE
5DD3B0:  MOV             R4, R0
5DD3B2:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DD3B6:  CMP             R0, #1
5DD3B8:  BNE             loc_5DD3FE
5DD3BA:  VLDR            S0, [R4,#0x48]
5DD3BE:  VLDR            S2, [R4,#0x4C]
5DD3C2:  VMUL.F32        S0, S0, S0
5DD3C6:  VLDR            S4, [R4,#0x50]
5DD3CA:  VMUL.F32        S2, S2, S2
5DD3CE:  VMUL.F32        S4, S4, S4
5DD3D2:  VADD.F32        S0, S0, S2
5DD3D6:  VLDR            S2, =0.3
5DD3DA:  VADD.F32        S0, S0, S4
5DD3DE:  VLDR            S4, =0.33
5DD3E2:  VSQRT.F32       S0, S0
5DD3E6:  VMIN.F32        D0, D0, D2
5DD3EA:  VMUL.F32        S0, S0, S2
5DD3EE:  VLDR            S2, =0.8
5DD3F2:  VDIV.F32        S0, S0, S4
5DD3F6:  VADD.F32        S0, S0, S2
5DD3FA:  VMUL.F32        S16, S16, S0
5DD3FE:  BLX.W           rand
5DD402:  VMOV            S0, R0
5DD406:  VCVT.F32.S32    S18, S0
5DD40A:  BLX.W           rand
5DD40E:  VMOV            S0, R0
5DD412:  VCVT.F32.S32    S20, S0
5DD416:  BLX.W           rand
5DD41A:  VMOV            S0, R0
5DD41E:  VLDR            S2, =4.6566e-10
5DD422:  VLDR            S8, =0.2
5DD426:  VCVT.F32.S32    S0, S0
5DD42A:  VLDR            S10, [SP,#0x218+var_68]
5DD42E:  VMUL.F32        S4, S18, S2
5DD432:  VMUL.F32        S6, S20, S2
5DD436:  VMUL.F32        S0, S0, S2
5DD43A:  VLDR            S2, =0.4
5DD43E:  VMUL.F32        S4, S4, S2
5DD442:  VMUL.F32        S2, S6, S2
5DD446:  VLDR            S6, =-0.2
5DD44A:  VMUL.F32        S0, S0, S8
5DD44E:  VLDR            S8, =-0.1
5DD452:  VADD.F32        S4, S4, S6
5DD456:  VADD.F32        S2, S2, S6
5DD45A:  VLDR            S6, [SP,#0x218+var_70]
5DD45E:  VADD.F32        S0, S0, S8
5DD462:  VLDR            S8, [SP,#0x218+var_70+4]
5DD466:  VMUL.F32        S4, S16, S4
5DD46A:  VMUL.F32        S2, S16, S2
5DD46E:  VMUL.F32        S0, S16, S0
5DD472:  VADD.F32        S4, S6, S4
5DD476:  VADD.F32        S2, S8, S2
5DD47A:  VADD.F32        S0, S0, S10
5DD47E:  VSTR            S4, [SP,#0x218+var_70]
5DD482:  VSTR            S2, [SP,#0x218+var_70+4]
5DD486:  VSTR            S0, [SP,#0x218+var_68]
5DD48A:  B               loc_5DD5B0
5DD48C:  DCFS 0.01
5DD490:  DCD _ZN6CWorld13pIgnoreEntityE_ptr - 0x5DC74C
5DD494:  MOVS            R0, #0
5DD496:  ADD.W           R8, SP, #0x218+var_70
5DD49A:  STRD.W          R0, R0, [SP,#0x218+var_108]
5DD49E:  MOV.W           R0, #0x3F800000
5DD4A2:  STR             R0, [SP,#0x218+var_100]
5DD4A4:  ADD             R0, SP, #0x218+var_1C0; CVector *
5DD4A6:  ADD             R2, SP, #0x218+var_108
5DD4A8:  MOV             R1, R8; CVector *
5DD4AA:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DD4AE:  ADD             R6, SP, #0x218+var_180
5DD4B0:  LDR             R0, [SP,#0x218+var_1B8]
5DD4B2:  VLDR            D16, [SP,#0x218+var_1C0]
5DD4B6:  STR             R0, [SP,#0x218+var_178]
5DD4B8:  MOV             R0, R6; this
5DD4BA:  VSTR            D16, [SP,#0x218+var_180]
5DD4BE:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DD4C2:  ADD             R0, SP, #0x218+var_108; CVector *
5DD4C4:  MOV             R1, R6; CVector *
5DD4C6:  MOV             R2, R8
5DD4C8:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DD4CC:  LDR             R0, [SP,#0x218+var_100]
5DD4CE:  STR             R0, [SP,#0x218+var_1B8]
5DD4D0:  ADD             R0, SP, #0x218+var_1C0; this
5DD4D2:  VLDR            D16, [SP,#0x218+var_108]
5DD4D6:  VSTR            D16, [SP,#0x218+var_1C0]
5DD4DA:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DD4DE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DD4E6)
5DD4E0:  LDR             R1, =(fPlayerAimRotRate_ptr - 0x5DD4E8)
5DD4E2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DD4E4:  ADD             R1, PC; fPlayerAimRotRate_ptr
5DD4E6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DD4E8:  VLDR            S0, [R0]
5DD4EC:  LDR             R0, [R1]; fPlayerAimRotRate
5DD4EE:  VCVT.F32.U32    S0, S0
5DD4F2:  VLDR            S4, [SP,#0x218+var_178]
5DD4F6:  VLDR            S20, [SP,#0x218+var_1C0]
5DD4FA:  VLDR            S2, [R0]
5DD4FE:  VMUL.F32        S28, S16, S4
5DD502:  VLDR            S22, [SP,#0x218+var_1C0+4]
5DD506:  VLDR            S24, [SP,#0x218+var_1B8]
5DD50A:  VMUL.F32        S0, S2, S0
5DD50E:  VLDR            S2, [SP,#0x218+var_180+4]
5DD512:  VMUL.F32        S26, S16, S2
5DD516:  VMOV            R6, S0
5DD51A:  VLDR            S0, [SP,#0x218+var_180]
5DD51E:  VMUL.F32        S18, S16, S0
5DD522:  MOV             R0, R6; x
5DD524:  BLX.W           sinf
5DD528:  VMOV            S30, R0
5DD52C:  MOV             R0, R6; x
5DD52E:  VMUL.F32        S20, S16, S20
5DD532:  VMUL.F32        S24, S16, S24
5DD536:  VMUL.F32        S16, S16, S22
5DD53A:  VMUL.F32        S18, S18, S30
5DD53E:  VMUL.F32        S22, S26, S30
5DD542:  BLX.W           cosf
5DD546:  VMUL.F32        S2, S28, S30
5DD54A:  VLDR            S4, [SP,#0x218+var_70]
5DD54E:  VMOV            S0, R0
5DD552:  VLDR            S6, [SP,#0x218+var_70+4]
5DD556:  VLDR            S8, [SP,#0x218+var_68]
5DD55A:  VADD.F32        S4, S18, S4
5DD55E:  VMUL.F32        S10, S20, S0
5DD562:  LDR             R0, [SP,#0x218+var_1CC]
5DD564:  VMUL.F32        S12, S16, S0
5DD568:  VADD.F32        S6, S22, S6
5DD56C:  VMUL.F32        S0, S24, S0
5DD570:  VADD.F32        S2, S2, S8
5DD574:  VADD.F32        S4, S10, S4
5DD578:  VADD.F32        S6, S12, S6
5DD57C:  VADD.F32        S0, S0, S2
5DD580:  VSTR            S4, [SP,#0x218+var_70]
5DD584:  VSTR            S6, [SP,#0x218+var_70+4]
5DD588:  VSTR            S0, [SP,#0x218+var_68]
5DD58C:  VMOV.F32        S0, #25.0
5DD590:  LDRSH.W         R0, [R0,#0x22]
5DD594:  VMOV            S2, R0
5DD598:  VCVT.F32.S32    S2, S2
5DD59C:  LDR.W           R0, [R11,#0x444]
5DD5A0:  VDIV.F32        S0, S2, S0
5DD5A4:  VLDR            S2, [R0,#0x2C]
5DD5A8:  VADD.F32        S0, S2, S0
5DD5AC:  VSTR            S0, [R0,#0x2C]
5DD5B0:  LDRB.W          R1, [R11,#0x485]
5DD5B4:  ADD             R0, SP, #0x218+var_80
5DD5B6:  LSLS            R1, R1, #0x1F
5DD5B8:  ITT NE
5DD5BA:  LDRNE.W         R1, [R11,#0x590]
5DD5BE:  CMPNE           R1, #0
5DD5C0:  BEQ             loc_5DD5D0
5DD5C2:  LDRB.W          R2, [R1,#0x431]
5DD5C6:  LSLS            R2, R2, #0x1D
5DD5C8:  BMI             loc_5DD5D0
5DD5CA:  LDR             R2, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DD5D0)
5DD5CC:  ADD             R2, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DD5CE:  B               loc_5DD5EE
5DD5D0:  LDR.W           R1, [R11,#0x100]
5DD5D4:  CBZ             R1, loc_5DD5F2
5DD5D6:  LDRB.W          R2, [R1,#0x3A]
5DD5DA:  AND.W           R2, R2, #7
5DD5DE:  CMP             R2, #2
5DD5E0:  BNE             loc_5DD5F2
5DD5E2:  LDRB.W          R2, [R1,#0x431]
5DD5E6:  LSLS            R2, R2, #0x1D
5DD5E8:  BMI             loc_5DD5F2
5DD5EA:  LDR             R2, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DD5F0)
5DD5EC:  ADD             R2, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DD5EE:  LDR             R2, [R2]; CWorld::pIgnoreEntity ...
5DD5F0:  STR             R1, [R2]; CWorld::pIgnoreEntity
5DD5F2:  ADD.W           R10, R0, #8
5DD5F6:  ORR.W           R5, R0, #4
5DD5FA:  MOV             R0, R11; this
5DD5FC:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DD600:  CMP             R0, #1
5DD602:  BNE             loc_5DD60E
5DD604:  LDR             R0, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x5DD60C)
5DD606:  MOVS            R1, #1
5DD608:  ADD             R0, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
5DD60A:  LDR             R0, [R0]; CWorld::bIncludeDeadPeds ...
5DD60C:  STRB            R1, [R0]; CWorld::bIncludeDeadPeds
5DD60E:  LDR             R0, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x5DD614)
5DD610:  ADD             R0, PC; _ZN6CWorld14bIncludeBikersE_ptr
5DD612:  B.W             loc_5DC42E
5DD616:  ADD             R1, SP, #0x218+var_70
5DD618:  MOV             R0, R2; this
5DD61A:  MOVS            R2, #3
5DD61C:  MOVS            R3, #0
5DD61E:  BLX.W           j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5DD622:  LDR             R2, [R7,#arg_0]
5DD624:  B               loc_5DD184
5DD626:  ADD             R0, SP, #0x218+var_180; this
5DD628:  MOV             R1, R2
5DD62A:  BLX.W           j__ZN8CVehicle18GetGasTankPositionEv; CVehicle::GetGasTankPosition(void)
5DD62E:  LDR             R2, [R7,#arg_0]
5DD630:  VLDR            D16, [SP,#0x218+var_180]
5DD634:  LDR             R0, [SP,#0x218+var_178]
5DD636:  B               loc_5DD17E
