; =========================================================
; Game Engine Function: _ZN11CRoadBlocks18GenerateRoadBlocksEv
; Address            : 0x325030 - 0x3258CC
; =========================================================

325030:  PUSH            {R4-R7,LR}
325032:  ADD             R7, SP, #0xC
325034:  PUSH.W          {R8-R11}
325038:  SUB             SP, SP, #4
32503A:  VPUSH           {D8-D15}
32503E:  SUB             SP, SP, #0x170
325040:  MOVS            R4, #0
325042:  MOV.W           R0, #0xFFFFFFFF; int
325046:  STRD.W          R4, R4, [SP,#0x1D0+var_70]
32504A:  STRD.W          R4, R4, [SP,#0x1D0+var_B8]
32504E:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
325052:  LDRH            R0, [R0,#0x1C]
325054:  CMP             R0, #0
325056:  BEQ.W           loc_325190
32505A:  MOV.W           R0, #0xFFFFFFFF; int
32505E:  MOVS            R1, #0; bool
325060:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
325064:  CMP             R0, #0
325066:  BEQ.W           loc_325190
32506A:  LDR.W           R0, =(_ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr - 0x325072)
32506E:  ADD             R0, PC; _ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr
325070:  LDR             R0, [R0]; CRoadBlocks::bGenerateDynamicRoadBlocks ...
325072:  LDRB            R0, [R0]; CRoadBlocks::bGenerateDynamicRoadBlocks
325074:  CBNZ            R0, loc_325088
325076:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x325084)
32507A:  MOVW            R1, #0x145
32507E:  MOVS            R2, #1
325080:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
325082:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
325084:  BLX             j___aeabi_memset8
325088:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x325098)
32508C:  MOVW            R3, #0x145
325090:  LDR.W           R1, =(_ZN11CRoadBlocks13NumRoadBlocksE_ptr - 0x32509E)
325094:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
325096:  LDR.W           R2, =(_ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr - 0x3250A2)
32509A:  ADD             R1, PC; _ZN11CRoadBlocks13NumRoadBlocksE_ptr
32509C:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
32509E:  ADD             R2, PC; _ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr
3250A0:  LDR             R1, [R1]; CRoadBlocks::NumRoadBlocks ...
3250A2:  LDR             R2, [R2]; CRoadBlocks::bGenerateDynamicRoadBlocks ...
3250A4:  LDR             R0, [R0]; CTimer::m_FrameCounter
3250A6:  LDR             R1, [R1]; CRoadBlocks::NumRoadBlocks
3250A8:  AND.W           R0, R0, #0xF
3250AC:  SMLABB.W        R6, R0, R3, R3
3250B0:  SMULBB.W        R0, R0, R3
3250B4:  MOVS            R3, #1
3250B6:  STRB            R3, [R2]; CRoadBlocks::bGenerateDynamicRoadBlocks
3250B8:  MOV.W           R9, R6,LSR#4
3250BC:  CMP.W           R1, R6,LSR#4
3250C0:  IT GE
3250C2:  MOVGE           R1, R9
3250C4:  LSRS            R5, R0, #4
3250C6:  CMP             R5, R1
3250C8:  BGE.W           loc_3257D8
3250CC:  LDR.W           R0, =(_ZN11CRoadBlocks14RoadBlockNodesE_ptr - 0x3250E0)
3250D0:  VMOV.F32        S16, #-0.125
3250D4:  LDR.W           R1, =(_ZN11CRoadBlocks13NumRoadBlocksE_ptr - 0x3250E6)
3250D8:  VMOV.F32        S22, #0.125
3250DC:  ADD             R0, PC; _ZN11CRoadBlocks14RoadBlockNodesE_ptr
3250DE:  VMOV.F32        S24, #-30.0
3250E2:  ADD             R1, PC; _ZN11CRoadBlocks13NumRoadBlocksE_ptr
3250E4:  VMOV.F32        S26, #30.0
3250E8:  LDR             R0, [R0]; CRoadBlocks::RoadBlockNodes ...
3250EA:  VMOV.F32        S30, #1.0
3250EE:  STR             R0, [SP,#0x1D0+var_168]
3250F0:  VMOV.F32        S19, #0.5
3250F4:  LDR.W           R0, =(ThePaths_ptr - 0x325100)
3250F8:  VLDR            S18, =-90.0
3250FC:  ADD             R0, PC; ThePaths_ptr
3250FE:  VLDR            S20, =90.0
325102:  VLDR            S28, =0.7
325106:  LDR             R0, [R0]; ThePaths
325108:  STR             R0, [SP,#0x1D0+var_16C]
32510A:  LDR.W           R0, =(_ZN11CRoadBlocks13NumRoadBlocksE_ptr - 0x325116)
32510E:  VLDR            S17, =0.0
325112:  ADD             R0, PC; _ZN11CRoadBlocks13NumRoadBlocksE_ptr
325114:  VLDR            S21, =0.0625
325118:  LDR             R0, [R0]; CRoadBlocks::NumRoadBlocks ...
32511A:  STR             R0, [SP,#0x1D0+var_170]
32511C:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x325124)
325120:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
325122:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
325124:  STR             R0, [SP,#0x1D0+var_180]
325126:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x32512E)
32512A:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
32512C:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
32512E:  STR             R0, [SP,#0x1D0+var_18C]
325130:  LDR.W           R0, =(_ZN11CRoadBlocks13NumRoadBlocksE_ptr - 0x325138)
325134:  ADD             R0, PC; _ZN11CRoadBlocks13NumRoadBlocksE_ptr
325136:  LDR             R0, [R0]; CRoadBlocks::NumRoadBlocks ...
325138:  STR             R0, [SP,#0x1D0+var_198]
32513A:  LDR.W           R0, =(_ZN11CRoadBlocks14RoadBlockNodesE_ptr - 0x325142)
32513E:  ADD             R0, PC; _ZN11CRoadBlocks14RoadBlockNodesE_ptr
325140:  LDR             R0, [R0]; CRoadBlocks::RoadBlockNodes ...
325142:  STR             R0, [SP,#0x1D0+var_19C]
325144:  LDR.W           R0, =(_ZN11CRoadBlocks13NumRoadBlocksE_ptr - 0x32514C)
325148:  ADD             R0, PC; _ZN11CRoadBlocks13NumRoadBlocksE_ptr
32514A:  LDR             R0, [R0]; CRoadBlocks::NumRoadBlocks ...
32514C:  STR             R0, [SP,#0x1D0+var_188]
32514E:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x325156)
325152:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
325154:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
325156:  STR             R0, [SP,#0x1D0+var_190]
325158:  LDR.W           R0, =(ThePaths_ptr - 0x325160)
32515C:  ADD             R0, PC; ThePaths_ptr
32515E:  LDR             R0, [R0]; ThePaths
325160:  STR             R0, [SP,#0x1D0+var_194]
325162:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x32516A)
325166:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
325168:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
32516A:  STR             R0, [SP,#0x1D0+var_1A0]
32516C:  LDR             R0, [R1]; CRoadBlocks::NumRoadBlocks ...
32516E:  STR             R0, [SP,#0x1D0+var_1A4]
325170:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x325178)
325174:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
325176:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
325178:  STR             R0, [SP,#0x1D0+var_184]
32517A:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x325182)
32517E:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
325180:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
325182:  STR             R0, [SP,#0x1D0+var_17C]
325184:  LDR.W           R0, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x32518C)
325188:  ADD             R0, PC; _ZN11CRoadBlocks7InOrOutE_ptr
32518A:  LDR             R0, [R0]; CRoadBlocks::InOrOut ...
32518C:  STR             R0, [SP,#0x1D0+var_174]
32518E:  B               loc_325578
325190:  LDR.W           R0, =(_ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr - 0x325198)
325194:  ADD             R0, PC; _ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr
325196:  LDR             R0, [R0]; CRoadBlocks::bGenerateDynamicRoadBlocks ...
325198:  STRB            R4, [R0]; CRoadBlocks::bGenerateDynamicRoadBlocks
32519A:  B               loc_3257D8
32519C:  LDR             R0, [SP,#0x1D0+var_198]
32519E:  STR.W           R10, [SP,#0x1D0+var_1A8]
3251A2:  LDR             R0, [R0]
3251A4:  CMP             R0, #1
3251A6:  BLT.W           loc_3254E0
3251AA:  LDR             R4, [SP,#0x1D0+var_19C]
3251AC:  MOV.W           R11, #0
3251B0:  VLDR            S23, [SP,#0x1D0+var_64]
3251B4:  CMP             R5, R11
3251B6:  BEQ             loc_3251C0
3251B8:  LDR             R0, [SP,#0x1D0+var_190]
3251BA:  LDRB.W          R0, [R0,R11]
3251BE:  CBZ             R0, loc_3251CE
3251C0:  LDR             R0, [SP,#0x1D0+var_188]
3251C2:  ADD.W           R11, R11, #1
3251C6:  LDR             R0, [R0]
3251C8:  CMP             R11, R0
3251CA:  BLT             loc_3251B4
3251CC:  B               loc_3254E4
3251CE:  LDR.W           R0, [R4,R11,LSL#2]; int
3251D2:  LDR             R2, [SP,#0x1D0+var_194]
3251D4:  UXTH            R1, R0
3251D6:  ADD.W           R1, R2, R1,LSL#2
3251DA:  LDR.W           R1, [R1,#0x804]
3251DE:  CMP             R1, #0
3251E0:  BEQ             loc_3251C0
3251E2:  LSRS            R3, R0, #0x10
3251E4:  LDRSH.W         R2, [R6]
3251E8:  LSLS            R3, R3, #3
3251EA:  SUB.W           R3, R3, R0,LSR#16
3251EE:  VMOV            S0, R2
3251F2:  ADD.W           R10, R1, R3,LSL#2
3251F6:  VCVT.F32.S32    S0, S0
3251FA:  LDRSH.W         R1, [R10,#8]!
3251FE:  VMOV            S2, R1
325202:  VCVT.F32.S32    S2, S2
325206:  VMUL.F32        S0, S0, S22
32520A:  VMUL.F32        S2, S2, S22
32520E:  VSUB.F32        S0, S0, S2
325212:  VCMPE.F32       S0, S24
325216:  VMRS            APSR_nzcv, FPSCR
32521A:  BLE             loc_3251C0
32521C:  VCMPE.F32       S0, S26
325220:  VMRS            APSR_nzcv, FPSCR
325224:  BGE             loc_3251C0
325226:  LDR             R2, [SP,#0x1D0+var_178]
325228:  ADD.W           R1, R10, #2
32522C:  MOV             R8, R1
32522E:  LDRSH.W         R1, [R1]
325232:  LDRSH.W         R2, [R2]
325236:  VMOV            S0, R1
32523A:  VMOV            S2, R2
32523E:  VCVT.F32.S32    S0, S0
325242:  VCVT.F32.S32    S2, S2
325246:  VMUL.F32        S0, S0, S22
32524A:  VMUL.F32        S2, S2, S22
32524E:  VSUB.F32        S0, S2, S0
325252:  VCMPE.F32       S0, S24
325256:  VMRS            APSR_nzcv, FPSCR
32525A:  BLE             loc_3251C0
32525C:  VCMPE.F32       S0, S26
325260:  VMRS            APSR_nzcv, FPSCR
325264:  BGE             loc_3251C0
325266:  ADD             R1, SP, #0x1D0+var_68; int
325268:  ADD             R2, SP, #0x1D0+var_110; this
32526A:  BLX             j__ZN11CRoadBlocks20GetRoadBlockNodeInfoE12CNodeAddressRfR7CVector; CRoadBlocks::GetRoadBlockNodeInfo(CNodeAddress,float &,CVector &)
32526E:  CMP             R0, #1
325270:  ITTT EQ
325272:  VLDREQ          S0, [SP,#0x1D0+var_68]
325276:  VCMPEQ.F32      S23, S0
32527A:  VMRSEQ          APSR_nzcv, FPSCR
32527E:  BNE             loc_3251C0
325280:  VLDR            S0, [SP,#0x1D0+var_110]
325284:  VLDR            S6, [SP,#0x1D0+var_104]
325288:  VLDR            S2, [SP,#0x1D0+var_10C]
32528C:  VLDR            S8, [SP,#0x1D0+var_100]
325290:  VMUL.F32        S0, S6, S0
325294:  VLDR            S4, [SP,#0x1D0+var_108]
325298:  VMUL.F32        S2, S8, S2
32529C:  VLDR            S10, [SP,#0x1D0+var_FC]
3252A0:  VMUL.F32        S4, S10, S4
3252A4:  VADD.F32        S0, S0, S2
3252A8:  VADD.F32        S0, S0, S4
3252AC:  VABS.F32        S0, S0
3252B0:  VCMPE.F32       S0, S28
3252B4:  VMRS            APSR_nzcv, FPSCR
3252B8:  BLE.W           loc_3251C0
3252BC:  LDR             R0, [SP,#0x1D0+var_178]
3252BE:  ADD.W           R2, R10, #4
3252C2:  LDRSH.W         R1, [R6]
3252C6:  ADD             R3, SP, #0x1D0+var_158
3252C8:  LDRSH.W         R0, [R0]
3252CC:  VMOV            S2, R1
3252D0:  VMOV            S0, R0
3252D4:  VCVT.F32.S32    S0, S0
3252D8:  VCVT.F32.S32    S2, S2
3252DC:  LDR             R0, [SP,#0x1D0+var_1A8]
3252DE:  LDRSH.W         R0, [R0]
3252E2:  VMOV            S4, R0
3252E6:  VMUL.F32        S0, S0, S22
3252EA:  VCVT.F32.S32    S4, S4
3252EE:  VMUL.F32        S2, S2, S22
3252F2:  VADD.F32        S0, S0, S17
3252F6:  VMUL.F32        S4, S4, S22
3252FA:  VADD.F32        S2, S2, S17
3252FE:  VSTR            S0, [SP,#0x1D0+var_118]
325302:  VADD.F32        S4, S4, S30
325306:  VSTR            S2, [SP,#0x1D0+var_11C]
32530A:  VSTR            S4, [SP,#0x1D0+var_114]
32530E:  LDRSH.W         R0, [R8]
325312:  LDRSH.W         R1, [R10]
325316:  VMOV            S0, R0
32531A:  VMOV            S2, R1
32531E:  ADD             R1, SP, #0x1D0+var_128
325320:  VCVT.F32.S32    S0, S0
325324:  STR             R2, [SP,#0x1D0+var_1AC]
325326:  LDRSH.W         R0, [R2]
32532A:  VCVT.F32.S32    S2, S2
32532E:  ADD             R2, SP, #0x1D0+var_154
325330:  VMOV            S4, R0
325334:  MOVS            R0, #1
325336:  VCVT.F32.S32    S4, S4
32533A:  STR             R0, [SP,#0x1D0+var_1D0]
32533C:  VMUL.F32        S0, S0, S22
325340:  MOVS            R0, #0
325342:  VMUL.F32        S2, S2, S22
325346:  VMUL.F32        S4, S4, S22
32534A:  VADD.F32        S0, S0, S17
32534E:  VADD.F32        S2, S2, S17
325352:  VADD.F32        S4, S4, S30
325356:  VSTR            S0, [SP,#0x1D0+var_124]
32535A:  VSTR            S2, [SP,#0x1D0+var_128]
32535E:  VSTR            S4, [SP,#0x1D0+var_120]
325362:  STRD.W          R0, R0, [SP,#0x1D0+var_1CC]
325366:  STRD.W          R0, R0, [SP,#0x1D0+var_1C4]
32536A:  STRD.W          R0, R0, [SP,#0x1D0+var_1BC]
32536E:  STR             R0, [SP,#0x1D0+var_1B4]
325370:  ADD             R0, SP, #0x1D0+var_11C
325372:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
325376:  CMP             R0, #0
325378:  BNE.W           loc_3251C0
32537C:  LDR             R0, [SP,#0x1D0+var_178]
32537E:  LDRSH.W         R1, [R8]
325382:  LDRSH.W         R0, [R0]
325386:  VMOV            S2, R1
32538A:  VMOV            S0, R0
32538E:  VCVT.F32.S32    S0, S0
325392:  LDRSH.W         R0, [R6]
325396:  VCVT.F32.S32    S2, S2
32539A:  LDRSH.W         R1, [R10]
32539E:  VMOV            S4, R0
3253A2:  VMOV            S6, R1
3253A6:  VCVT.F32.S32    S4, S4
3253AA:  LDR             R0, [SP,#0x1D0+var_1A8]
3253AC:  VMUL.F32        S0, S0, S22
3253B0:  LDRSH.W         R0, [R0]
3253B4:  VCVT.F32.S32    S6, S6
3253B8:  LDR             R4, [SP,#0x1D0+var_1AC]
3253BA:  VMUL.F32        S2, S2, S22
3253BE:  VMOV            S8, R0
3253C2:  ADD             R0, SP, #0x1D0+var_104; this
3253C4:  LDRSH.W         R1, [R4]
3253C8:  VMUL.F32        S4, S4, S22
3253CC:  VCVT.F32.S32    S8, S8
3253D0:  VMOV            S10, R1
3253D4:  VMUL.F32        S6, S6, S22
3253D8:  VCVT.F32.S32    S10, S10
3253DC:  VSUB.F32        S0, S2, S0
3253E0:  VMUL.F32        S8, S8, S22
3253E4:  VSUB.F32        S2, S6, S4
3253E8:  VMUL.F32        S10, S10, S22
3253EC:  VSTR            S0, [SP,#0x1D0+var_100]
3253F0:  VSTR            S2, [SP,#0x1D0+var_104]
3253F4:  VSUB.F32        S4, S10, S8
3253F8:  VSTR            S4, [SP,#0x1D0+var_FC]
3253FC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
325400:  LDRSH.W         R0, [R10]
325404:  VMUL.F32        S0, S23, S19
325408:  LDRSH.W         R1, [R8]
32540C:  VMOV            S2, R0
325410:  VMOV            S4, R1
325414:  VCVT.F32.S32    S2, S2
325418:  VCVT.F32.S32    S4, S4
32541C:  LDRSH.W         R0, [R4]
325420:  LDRSH.W         R1, [R6]
325424:  MOVS            R4, #0
325426:  VLDR            S6, [SP,#0x1D0+var_104]
32542A:  VMOV            S12, R0
32542E:  VLDR            S8, [SP,#0x1D0+var_100]
325432:  VMOV            S14, R1
325436:  VLDR            S10, [SP,#0x1D0+var_FC]
32543A:  VCVT.F32.S32    S12, S12
32543E:  VCVT.F32.S32    S14, S14
325442:  LDR             R0, [SP,#0x1D0+var_1A8]
325444:  VMUL.F32        S6, S6, S0
325448:  LDR             R1, [SP,#0x1D0+var_178]
32544A:  VMUL.F32        S2, S2, S22
32544E:  VMUL.F32        S8, S0, S8
325452:  LDRSH.W         R0, [R0]
325456:  VMUL.F32        S4, S4, S22
32545A:  LDRSH.W         R1, [R1]
32545E:  VMUL.F32        S0, S0, S10
325462:  VMUL.F32        S10, S12, S22
325466:  VMUL.F32        S12, S14, S22
32546A:  VMOV            S14, R1
32546E:  VADD.F32        S2, S2, S6
325472:  VADD.F32        S4, S4, S8
325476:  VADD.F32        S10, S10, S0
32547A:  VSUB.F32        S6, S12, S6
32547E:  VMOV            S12, R0
325482:  VMOV            R0, S2
325486:  VCVT.F32.S32    S12, S12
32548A:  VCVT.F32.S32    S14, S14
32548E:  STR             R4, [SP,#0x1D0+var_1C8]
325490:  VMOV            R1, S4
325494:  VMOV            R2, S10
325498:  VMOV            R3, S6
32549C:  VMUL.F32        S2, S12, S22
3254A0:  VMUL.F32        S4, S14, S22
3254A4:  VSUB.F32        S0, S2, S0
3254A8:  VSUB.F32        S2, S4, S8
3254AC:  VSTR            S2, [SP,#0x1D0+var_1D0]
3254B0:  VSTR            S0, [SP,#0x1D0+var_1CC]
3254B4:  BLX             j__ZN11CRoadBlocks29CreateRoadBlockBetween2PointsE7CVectorS0_j; CRoadBlocks::CreateRoadBlockBetween2Points(CVector,CVector,uint)
3254B8:  LDR             R0, [SP,#0x1D0+var_1A0]
3254BA:  MOVS            R1, #1
3254BC:  STRB.W          R1, [R0,R11]
3254C0:  LDR             R0, [SP,#0x1D0+var_1A4]
3254C2:  LDR             R0, [R0]
3254C4:  CMP             R11, R0
3254C6:  BEQ             loc_3254EA
3254C8:  B               loc_3257C6
3254CA:  ALIGN 4
3254CC:  DCFS -90.0
3254D0:  DCFS 90.0
3254D4:  DCFS 0.7
3254D8:  DCFS 0.0
3254DC:  DCFS 0.0625
3254E0:  MOV.W           R11, #0
3254E4:  CMP             R11, R0
3254E6:  BNE.W           loc_3257C6
3254EA:  LDRSH.W         R0, [R6]
3254EE:  MOVS            R6, #0
3254F0:  VLDR            S0, [SP,#0x1D0+var_64]
3254F4:  VMOV            S2, R0
3254F8:  VMUL.F32        S0, S0, S19
3254FC:  VCVT.F32.S32    S2, S2
325500:  LDR             R0, [SP,#0x1D0+var_178]
325502:  LDRSH.W         R0, [R0]
325506:  VMOV            S4, R0
32550A:  VMUL.F32        S2, S2, S22
32550E:  VCVT.F32.S32    S4, S4
325512:  LDR             R0, [SP,#0x1D0+var_1A8]
325514:  LDRSH.W         R0, [R0]
325518:  VMOV            S6, R0
32551C:  VMUL.F32        S4, S4, S22
325520:  VCVT.F32.S32    S6, S6
325524:  VLDR            S8, [SP,#0x1D0+var_104]
325528:  VLDR            S10, [SP,#0x1D0+var_100]
32552C:  VLDR            S12, [SP,#0x1D0+var_FC]
325530:  VMUL.F32        S8, S8, S0
325534:  VMUL.F32        S10, S0, S10
325538:  STR             R6, [SP,#0x1D0+var_1C8]
32553A:  VMUL.F32        S0, S0, S12
32553E:  VMUL.F32        S6, S6, S22
325542:  VADD.F32        S12, S2, S8
325546:  VADD.F32        S14, S4, S10
32554A:  VSUB.F32        S2, S2, S8
32554E:  VADD.F32        S1, S6, S0
325552:  VSUB.F32        S0, S6, S0
325556:  VMOV            R0, S12
32555A:  VMOV            R1, S14
32555E:  VMOV            R3, S2
325562:  VSUB.F32        S2, S4, S10
325566:  VMOV            R2, S1
32556A:  VSTR            S2, [SP,#0x1D0+var_1D0]
32556E:  VSTR            S0, [SP,#0x1D0+var_1CC]
325572:  BLX             j__ZN11CRoadBlocks29CreateRoadBlockBetween2PointsE7CVectorS0_j; CRoadBlocks::CreateRoadBlockBetween2Points(CVector,CVector,uint)
325576:  B               loc_3257C6
325578:  LDR             R0, [SP,#0x1D0+var_168]
32557A:  LDR             R1, [SP,#0x1D0+var_16C]
32557C:  LDR.W           R10, [R0,R5,LSL#2]
325580:  UXTH.W          R0, R10
325584:  ADD.W           R0, R1, R0,LSL#2
325588:  LDR.W           R8, [R0,#0x804]
32558C:  CMP.W           R8, #0
325590:  BEQ.W           loc_3257C6
325594:  ADD             R0, SP, #0x1D0+var_164; int
325596:  MOV.W           R1, #0xFFFFFFFF
32559A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
32559E:  MOV.W           R4, R10,LSR#16
3255A2:  LSLS            R0, R4, #3
3255A4:  SUB.W           R0, R0, R10,LSR#16
3255A8:  ADD.W           R6, R8, R0,LSL#2
3255AC:  LDRSH.W         R0, [R6,#8]!
3255B0:  VMOV            S0, R0
3255B4:  VCVT.F32.S32    S0, S0
3255B8:  VLDR            S2, [SP,#0x1D0+var_164]
3255BC:  VMUL.F32        S0, S0, S16
3255C0:  VADD.F32        S23, S2, S0
3255C4:  VCMPE.F32       S23, S18
3255C8:  VMRS            APSR_nzcv, FPSCR
3255CC:  BLE.W           loc_3257B4
3255D0:  VCMPE.F32       S23, S20
3255D4:  VMRS            APSR_nzcv, FPSCR
3255D8:  BGE.W           loc_3257B4
3255DC:  ADD             R0, SP, #0x1D0+var_164; int
3255DE:  MOV.W           R1, #0xFFFFFFFF
3255E2:  ADD.W           R11, R6, #2
3255E6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
3255EA:  STR.W           R11, [SP,#0x1D0+var_178]
3255EE:  LDRSH.W         R0, [R11]
3255F2:  VMOV            S0, R0
3255F6:  VCVT.F32.S32    S0, S0
3255FA:  VLDR            S2, [SP,#0x1D0+var_160]
3255FE:  VMUL.F32        S0, S0, S16
325602:  VADD.F32        S0, S2, S0
325606:  VCMPE.F32       S0, S18
32560A:  VMRS            APSR_nzcv, FPSCR
32560E:  BLE.W           loc_3257BA
325612:  VCMPE.F32       S0, S20
325616:  VMRS            APSR_nzcv, FPSCR
32561A:  BGE.W           loc_3257BA
32561E:  VMUL.F32        S0, S0, S0
325622:  VMUL.F32        S2, S23, S23
325626:  VADD.F32        S0, S2, S0
32562A:  VSQRT.F32       S0, S0
32562E:  VCMPE.F32       S0, S20
325632:  VMRS            APSR_nzcv, FPSCR
325636:  BGE.W           loc_3257C0
32563A:  LDR             R0, [SP,#0x1D0+var_180]
32563C:  LDRB            R0, [R0,R5]
32563E:  CMP             R0, #0
325640:  BNE.W           loc_3257C6
325644:  LDR             R0, [SP,#0x1D0+var_18C]
325646:  MOVS            R1, #1
325648:  STRB            R1, [R0,R5]
32564A:  BLX             rand
32564E:  MOV             R11, R0
325650:  MOV.W           R0, #0xFFFFFFFF; int
325654:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
325658:  LDRH            R0, [R0,#0x1C]
32565A:  AND.W           R1, R11, #0x7F
32565E:  CMP             R1, R0
325660:  BCS.W           loc_3257C6
325664:  ADD             R1, SP, #0x1D0+var_64; int
325666:  ADD             R2, SP, #0x1D0+var_104; this
325668:  MOV             R0, R10; int
32566A:  BLX             j__ZN11CRoadBlocks20GetRoadBlockNodeInfoE12CNodeAddressRfR7CVector; CRoadBlocks::GetRoadBlockNodeInfo(CNodeAddress,float &,CVector &)
32566E:  CMP             R0, #1
325670:  BNE.W           loc_3257C6
325674:  RSB.W           R0, R4, R4,LSL#3
325678:  ADD.W           R10, R6, #4
32567C:  ADD.W           R0, R8, R0,LSL#2
325680:  LDRB            R0, [R0,#0x16]
325682:  CMP             R0, #0
325684:  BEQ.W           loc_32519C
325688:  VMOV            S0, R0
32568C:  MOV.W           R8, #0
325690:  VCVT.F32.U32    S0, S0
325694:  VLDR            S2, [SP,#0x1D0+var_64]
325698:  LDRSH.W         R0, [R6]
32569C:  VMUL.F32        S2, S2, S19
3256A0:  VMUL.F32        S25, S0, S21
3256A4:  VMOV            S0, R0
3256A8:  VCVT.F32.S32    S0, S0
3256AC:  LDRSH.W         R0, [R10]
3256B0:  VADD.F32        S23, S25, S2
3256B4:  VMOV            S2, R0
3256B8:  VCVT.F32.S32    S2, S2
3256BC:  LDR             R4, [SP,#0x1D0+var_178]
3256BE:  VMUL.F32        S0, S0, S22
3256C2:  LDRSH.W         R0, [R4]
3256C6:  VMOV            S4, R0
3256CA:  VMUL.F32        S2, S2, S22
3256CE:  VCVT.F32.S32    S4, S4
3256D2:  VLDR            S6, [SP,#0x1D0+var_104]
3256D6:  VLDR            S8, [SP,#0x1D0+var_100]
3256DA:  VLDR            S10, [SP,#0x1D0+var_FC]
3256DE:  VMUL.F32        S12, S25, S6
3256E2:  VMUL.F32        S1, S8, S23
3256E6:  STR.W           R8, [SP,#0x1D0+var_1C8]
3256EA:  VMUL.F32        S14, S25, S10
3256EE:  VMUL.F32        S6, S6, S23
3256F2:  VMUL.F32        S10, S23, S10
3256F6:  VMUL.F32        S4, S4, S22
3256FA:  VMUL.F32        S8, S25, S8
3256FE:  VADD.F32        S12, S0, S12
325702:  VADD.F32        S0, S0, S6
325706:  VADD.F32        S6, S2, S14
32570A:  VADD.F32        S14, S4, S1
32570E:  VADD.F32        S2, S2, S10
325712:  VMOV            R3, S12
325716:  VADD.F32        S4, S4, S8
32571A:  VMOV            R0, S0
32571E:  VMOV            R1, S14
325722:  VMOV            R2, S2
325726:  VSTR            S4, [SP,#0x1D0+var_1D0]
32572A:  VSTR            S6, [SP,#0x1D0+var_1CC]
32572E:  BLX             j__ZN11CRoadBlocks29CreateRoadBlockBetween2PointsE7CVectorS0_j; CRoadBlocks::CreateRoadBlockBetween2Points(CVector,CVector,uint)
325732:  LDRSH.W         R0, [R6]
325736:  VMOV            S0, R0
32573A:  VCVT.F32.S32    S0, S0
32573E:  LDRSH.W         R0, [R4]
325742:  VMOV            S2, R0
325746:  VCVT.F32.S32    S2, S2
32574A:  LDRSH.W         R0, [R10]
32574E:  VLDR            S4, [SP,#0x1D0+var_104]
325752:  VLDR            S6, [SP,#0x1D0+var_100]
325756:  VMUL.F32        S0, S0, S22
32575A:  VMOV            S10, R0
32575E:  VLDR            S8, [SP,#0x1D0+var_FC]
325762:  VMUL.F32        S12, S25, S4
325766:  VCVT.F32.S32    S10, S10
32576A:  STR.W           R8, [SP,#0x1D0+var_1C8]
32576E:  VMUL.F32        S4, S4, S23
325772:  VMUL.F32        S14, S25, S6
325776:  VMUL.F32        S2, S2, S22
32577A:  VMUL.F32        S1, S25, S8
32577E:  VSUB.F32        S12, S0, S12
325782:  VMUL.F32        S10, S10, S22
325786:  VSUB.F32        S0, S0, S4
32578A:  VMUL.F32        S4, S6, S23
32578E:  VSUB.F32        S14, S2, S14
325792:  VMOV            R0, S12
325796:  VSUB.F32        S1, S10, S1
32579A:  VMOV            R3, S0
32579E:  VMUL.F32        S0, S8, S23
3257A2:  VMOV            R1, S14
3257A6:  VSUB.F32        S2, S2, S4
3257AA:  VMOV            R2, S1
3257AE:  VSUB.F32        S0, S10, S0
3257B2:  B               loc_32556A
3257B4:  LDR             R1, [SP,#0x1D0+var_174]
3257B6:  MOVS            R0, #0
3257B8:  B               loc_3257C4
3257BA:  MOVS            R0, #0
3257BC:  LDR             R1, [SP,#0x1D0+var_17C]
3257BE:  B               loc_3257C4
3257C0:  MOVS            R0, #0
3257C2:  LDR             R1, [SP,#0x1D0+var_184]
3257C4:  STRB            R0, [R1,R5]
3257C6:  LDR             R0, [SP,#0x1D0+var_170]
3257C8:  ADDS            R5, #1
3257CA:  LDR             R0, [R0]
3257CC:  CMP             R0, R9
3257CE:  IT GE
3257D0:  MOVGE           R0, R9
3257D2:  CMP             R5, R0
3257D4:  BLT.W           loc_325578
3257D8:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3257E0)
3257DA:  LDR             R1, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x3257E2)
3257DC:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3257DE:  ADD             R1, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
3257E0:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3257E2:  LDR             R1, [R1]; CRoadBlocks::aScriptRoadBlocks ...
3257E4:  LDR             R0, [R0]; CTimer::m_FrameCounter
3257E6:  AND.W           R0, R0, #0xF
3257EA:  RSB.W           R4, R0, R0,LSL#3
3257EE:  ADD.W           R5, R1, R4,LSL#2
3257F2:  LDRB            R0, [R5,#0x18]
3257F4:  CMP             R0, #0
3257F6:  BEQ             loc_3258B2
3257F8:  LDR             R0, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x325806)
3257FA:  MOV.W           R1, #0xFFFFFFFF
3257FE:  VLDR            S16, [R5]
325802:  ADD             R0, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
325804:  LDR             R0, [R0]; CRoadBlocks::aScriptRoadBlocks ...
325806:  ADD.W           R6, R0, R4,LSL#2
32580A:  ADD             R0, SP, #0x1D0+var_164; int
32580C:  VLDR            D9, [R6,#0x10]
325810:  VLDR            D10, [R6,#4]
325814:  VLDR            S22, [R6,#0xC]
325818:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
32581C:  VMOV.F32        S0, #0.5
325820:  ADD.W           R8, R6, #0x19
325824:  VADD.F32        S2, S16, S22
325828:  VADD.F32        D16, D10, D9
32582C:  VMOV.I32        D17, #0x3F000000
325830:  VMUL.F32        D16, D16, D17
325834:  VLDR            D17, [SP,#0x1D0+var_160]
325838:  VMUL.F32        S0, S2, S0
32583C:  VLDR            S2, [SP,#0x1D0+var_164]
325840:  VSUB.F32        D16, D16, D17
325844:  VSUB.F32        S0, S0, S2
325848:  VMUL.F32        D1, D16, D16
32584C:  VMUL.F32        S0, S0, S0
325850:  VADD.F32        S0, S0, S2
325854:  VADD.F32        S0, S0, S3
325858:  VLDR            S2, =90.0
32585C:  VSQRT.F32       S0, S0
325860:  VCMPE.F32       S0, S2
325864:  VMRS            APSR_nzcv, FPSCR
325868:  BGE             loc_3258AC
32586A:  LDRB.W          R0, [R8]
32586E:  CBZ             R0, loc_3258B2
325870:  ADD.W           R2, R6, #0xC
325874:  ADD.W           R0, R6, #8
325878:  ADD.W           R12, R6, #0x14
32587C:  ADDS            R1, R6, #4
32587E:  LDR             R3, [R2]
325880:  ADD.W           LR, R6, #0x10
325884:  LDR             R2, [R0]
325886:  LDR             R0, [R5]
325888:  LDR             R5, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x325890)
32588A:  LDR             R1, [R1]
32588C:  ADD             R5, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
32588E:  LDR.W           R12, [R12]
325892:  LDR.W           R6, [LR]
325896:  LDR             R5, [R5]; CRoadBlocks::aScriptRoadBlocks ...
325898:  ADD.W           R5, R5, R4,LSL#2
32589C:  LDRB            R5, [R5,#0x1A]
32589E:  STRD.W          R6, R12, [SP,#0x1D0+var_1D0]
3258A2:  STR             R5, [SP,#0x1D0+var_1C8]
3258A4:  BLX             j__ZN11CRoadBlocks29CreateRoadBlockBetween2PointsE7CVectorS0_j; CRoadBlocks::CreateRoadBlockBetween2Points(CVector,CVector,uint)
3258A8:  MOVS            R0, #0
3258AA:  B               loc_3258AE
3258AC:  MOVS            R0, #1
3258AE:  STRB.W          R0, [R8]
3258B2:  ADD             R0, SP, #0x1D0+var_F8; this
3258B4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3258B8:  ADD             R0, SP, #0x1D0+var_B0; this
3258BA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3258BE:  ADD             SP, SP, #0x170
3258C0:  VPOP            {D8-D15}
3258C4:  ADD             SP, SP, #4
3258C6:  POP.W           {R8-R11}
3258CA:  POP             {R4-R7,PC}
