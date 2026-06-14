; =========================================================
; Game Engine Function: _ZN7CObject19ProcessControlLogicEv
; Address            : 0x454370 - 0x454510
; =========================================================

454370:  PUSH            {R4-R7,LR}
454372:  ADD             R7, SP, #0xC
454374:  PUSH.W          {R11}
454378:  VPUSH           {D8}
45437C:  SUB             SP, SP, #0x30
45437E:  LDR             R1, =(MI_SAMSITE_ptr - 0x45438A)
454380:  MOV             R4, R0
454382:  LDRSH.W         R0, [R4,#0x26]
454386:  ADD             R1, PC; MI_SAMSITE_ptr
454388:  LDR             R1, [R1]; MI_SAMSITE
45438A:  LDRH            R1, [R1]
45438C:  CMP             R0, R1
45438E:  BEQ             loc_45439C
454390:  LDR             R1, =(MI_SAMSITE2_ptr - 0x454396)
454392:  ADD             R1, PC; MI_SAMSITE2_ptr
454394:  LDR             R1, [R1]; MI_SAMSITE2
454396:  LDRH            R1, [R1]
454398:  CMP             R0, R1
45439A:  BNE             loc_4543A6
45439C:  MOV             R0, R4; this
45439E:  BLX             j__ZN7CObject23ProcessSamSiteBehaviourEv; CObject::ProcessSamSiteBehaviour(void)
4543A2:  LDRH            R0, [R4,#0x26]
4543A4:  B               loc_4543A8
4543A6:  UXTH            R0, R0
4543A8:  LDR             R1, =(MI_TRAINCROSSING_ptr - 0x4543AE)
4543AA:  ADD             R1, PC; MI_TRAINCROSSING_ptr
4543AC:  LDR             R1, [R1]; MI_TRAINCROSSING
4543AE:  LDRH            R2, [R1]
4543B0:  SXTH            R1, R0
4543B2:  CMP             R1, R2
4543B4:  BEQ             loc_4543C2
4543B6:  LDR             R2, =(MI_TRAINCROSSING1_ptr - 0x4543BC)
4543B8:  ADD             R2, PC; MI_TRAINCROSSING1_ptr
4543BA:  LDR             R2, [R2]; MI_TRAINCROSSING1
4543BC:  LDRH            R2, [R2]
4543BE:  CMP             R1, R2
4543C0:  BNE             loc_4543CA
4543C2:  MOV             R0, R4; this
4543C4:  BLX             j__ZN7CObject29ProcessTrainCrossingBehaviourEv; CObject::ProcessTrainCrossingBehaviour(void)
4543C8:  LDRH            R0, [R4,#0x26]
4543CA:  LDR             R1, =(MI_MAGNOCRANE_ptr - 0x4543D0)
4543CC:  ADD             R1, PC; MI_MAGNOCRANE_ptr
4543CE:  LDR             R1, [R1]; MI_MAGNOCRANE
4543D0:  LDRH            R2, [R1]
4543D2:  SXTH            R1, R0; unsigned int
4543D4:  CMP             R1, R2
4543D6:  BEQ             loc_4543F2
4543D8:  LDR             R2, =(MI_CRANETROLLEY_ptr - 0x4543DE)
4543DA:  ADD             R2, PC; MI_CRANETROLLEY_ptr
4543DC:  LDR             R2, [R2]; MI_CRANETROLLEY
4543DE:  LDRH            R2, [R2]
4543E0:  CMP             R1, R2
4543E2:  BEQ             loc_4543F2
4543E4:  LDR             R2, =(MI_QUARRYCRANE_ARM_ptr - 0x4543EA)
4543E6:  ADD             R2, PC; MI_QUARRYCRANE_ARM_ptr
4543E8:  LDR             R2, [R2]; MI_QUARRYCRANE_ARM
4543EA:  LDRH            R2, [R2]
4543EC:  CMP             R1, R2
4543EE:  BNE.W           loc_4544F4
4543F2:  MOV             R0, R4; this
4543F4:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
4543F8:  MOVS            R6, #0
4543FA:  CMP             R0, #0
4543FC:  STRD.W          R6, R6, [SP,#0x48+var_24]
454400:  STR             R6, [SP,#0x48+var_1C]
454402:  BLT             loc_45444C
454404:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x454412)
454406:  MOV.W           R2, #0x328
45440A:  VLDR            S0, =32.0
45440E:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
454410:  LDR             R1, [R1]; CRopes::aRopes ...
454412:  MLA.W           R0, R0, R2, R1
454416:  VLDR            S6, [R0,#0x31C]
45441A:  VLDR            S2, [R0,#0x308]
45441E:  VMUL.F32        S0, S6, S0
454422:  VLDR            S4, [R0,#0x30C]
454426:  VMUL.F32        S2, S6, S2
45442A:  VCVT.S32.F32    S8, S0
45442E:  VCVT.F32.S32    S8, S8
454432:  VCVT.U32.F32    S0, S0
454436:  VMUL.F32        S4, S4, S8
45443A:  VMOV            R6, S0
45443E:  VSUB.F32        S2, S2, S4
454442:  VLDR            S4, =0.0
454446:  VADD.F32        S16, S2, S4
45444A:  B               loc_454450
45444C:  VLDR            S16, =0.0
454450:  LDR             R0, =(MI_MAGNOCRANE_ptr - 0x454456)
454452:  ADD             R0, PC; MI_MAGNOCRANE_ptr
454454:  LDR             R1, [R0]; MI_MAGNOCRANE
454456:  LDRSH.W         R0, [R4,#0x26]
45445A:  LDRH            R1, [R1]
45445C:  CMP             R0, R1
45445E:  BNE             loc_45447C
454460:  MOVW            R0, #0x8F5C
454464:  MOVS            R5, #4
454466:  MOVT            R0, #0x4212
45446A:  STR             R0, [SP,#0x48+var_20]
45446C:  MOV             R0, #0xBFD851EC
454474:  STR             R0, [SP,#0x48+var_1C]
454476:  MOVS            R0, #0
454478:  STR             R0, [SP,#0x48+var_24]
45447A:  B               loc_4544B8
45447C:  LDR             R1, =(MI_CRANETROLLEY_ptr - 0x454482)
45447E:  ADD             R1, PC; MI_CRANETROLLEY_ptr
454480:  LDR             R1, [R1]; MI_CRANETROLLEY
454482:  LDRH            R1, [R1]
454484:  CMP             R0, R1
454486:  BNE             loc_4544A8
454488:  LDR             R0, [R4,#0x14]
45448A:  MOVS            R5, #7
45448C:  ADD.W           R1, R0, #0x30 ; '0'
454490:  CMP             R0, #0
454492:  IT EQ
454494:  ADDEQ           R1, R4, #4
454496:  VLDR            S0, [R1]
45449A:  VCMPE.F32       S0, #0.0
45449E:  VMRS            APSR_nzcv, FPSCR
4544A2:  IT LT
4544A4:  MOVLT           R5, #5
4544A6:  B               loc_4544B8
4544A8:  MOVS            R0, #0
4544AA:  MOVS            R5, #6
4544AC:  MOVT            R0, #0x426C
4544B0:  STR             R0, [SP,#0x48+var_1C]
4544B2:  MOVS            R0, #0
4544B4:  STRD.W          R0, R0, [SP,#0x48+var_24]
4544B8:  LDR             R1, [R4,#0x14]
4544BA:  ADD             R0, SP, #0x48+var_30
4544BC:  ADD             R2, SP, #0x48+var_24
4544BE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4544C2:  VLDR            S0, [SP,#0x48+var_28]
4544C6:  UXTB            R6, R6
4544C8:  LDRD.W          R2, R3, [SP,#0x48+var_30]
4544CC:  MOVS            R0, #0
4544CE:  VADD.F32        S0, S16, S0
4544D2:  MOVW            R12, #0x4E20
4544D6:  MOVS            R1, #1
4544D8:  VSTR            S0, [SP,#0x48+var_28]
4544DC:  STRD.W          R0, R6, [SP,#0x48+var_44]
4544E0:  ADD             R0, SP, #0x48+var_3C
4544E2:  STM.W           R0, {R1,R4,R12}
4544E6:  MOV             R0, R4
4544E8:  MOV             R1, R5
4544EA:  VSTR            S0, [SP,#0x48+var_48]
4544EE:  BLX             j__ZN6CRopes12RegisterRopeEjj7CVectorbhbP9CPhysicali; CRopes::RegisterRope(uint,uint,CVector,bool,uchar,bool,CPhysical *,int)
4544F2:  LDRH            R0, [R4,#0x26]
4544F4:  SXTH            R0, R0; this
4544F6:  BLX             j__ZN8CGarages17IsModelIndexADoorEi; CGarages::IsModelIndexADoor(int)
4544FA:  CMP             R0, #1
4544FC:  ITT EQ
4544FE:  MOVEQ           R0, R4; this
454500:  BLXEQ           j__ZN7CObject26ProcessGarageDoorBehaviourEv; CObject::ProcessGarageDoorBehaviour(void)
454504:  ADD             SP, SP, #0x30 ; '0'
454506:  VPOP            {D8}
45450A:  POP.W           {R11}
45450E:  POP             {R4-R7,PC}
