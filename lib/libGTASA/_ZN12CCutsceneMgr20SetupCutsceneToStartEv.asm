; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr20SetupCutsceneToStartEv
; Address            : 0x465188 - 0x46536A
; =========================================================

465188:  PUSH            {R4-R7,LR}
46518A:  ADD             R7, SP, #0xC
46518C:  PUSH.W          {R8-R11}
465190:  SUB             SP, SP, #4
465192:  VPUSH           {D8}
465196:  SUB             SP, SP, #0x10
465198:  LDR             R0, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x4651A4)
46519A:  VMOV.F32        S0, #1.0
46519E:  LDR             R1, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x4651A6)
4651A0:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
4651A2:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
4651A4:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneOffset ...
4651A6:  LDR             R1, [R1]; CCutsceneMgr::ms_numCutsceneObjs ...
4651A8:  VLDR            S2, [R0,#8]
4651AC:  LDR.W           R8, [R1]; CCutsceneMgr::ms_numCutsceneObjs
4651B0:  VADD.F32        S0, S2, S0
4651B4:  CMP.W           R8, #0
4651B8:  VSTR            S0, [R0,#8]
4651BC:  BEQ.W           loc_465340
4651C0:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x4651C8)
4651C2:  LDR             R1, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x4651CE)
4651C4:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
4651C6:  VLDR            S16, =0.00097656
4651CA:  ADD             R1, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
4651CC:  LDR.W           R10, [R0]; CCutsceneMgr::ms_pCutsceneObjects ...
4651D0:  LDR             R0, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x4651DA)
4651D2:  LDR.W           R9, [R1]; CCutsceneMgr::ms_cutsceneOffset ...
4651D6:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
4651D8:  LDR             R5, [R0]; CCutsceneMgr::ms_cutsceneOffset ...
4651DA:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x4651E0)
4651DC:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
4651DE:  LDR             R0, [R0]; CCutsceneMgr::ms_pCutsceneObjects ...
4651E0:  STR             R0, [SP,#0x38+var_2C]
4651E2:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x4651E8)
4651E4:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
4651E6:  LDR             R6, [R0]; CCutsceneMgr::ms_pCutsceneObjects ...
4651E8:  LDR             R0, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x4651EE)
4651EA:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
4651EC:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneOffset ...
4651EE:  STR             R0, [SP,#0x38+var_30]
4651F0:  LDR             R0, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x4651F6)
4651F2:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
4651F4:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneOffset ...
4651F6:  STR             R0, [SP,#0x38+var_38]
4651F8:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x4651FE)
4651FA:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
4651FC:  LDR             R0, [R0]; CCutsceneMgr::ms_pCutsceneObjects ...
4651FE:  STR             R0, [SP,#0x38+var_34]
465200:  ADD.W           R4, R10, R8,LSL#2
465204:  LDR.W           R0, [R4,#-4]
465208:  LDR             R0, [R0,#0x18]
46520A:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClump; RpAnimBlendClumpGetFirstAssociation(RpClump *)
46520E:  LDR.W           R1, [R4,#-4]
465212:  CBZ             R0, loc_465226
465214:  LDR.W           R2, [R1,#0x184]
465218:  CBZ             R2, loc_46523C
46521A:  LDRH.W          R1, [R0,#0x2E]!
46521E:  BIC.W           R1, R1, #0x40 ; '@'
465222:  STRH            R1, [R0]
465224:  B               loc_465310
465226:  LDR             R4, [R1,#0x14]
465228:  LDRD.W          R3, R2, [R5]; CCutsceneMgr::ms_cutsceneOffset
46522C:  LDR             R0, [R5,#(dword_9ABFA0 - 0x9ABF98)]
46522E:  CBZ             R4, loc_465278
465230:  STR             R3, [R4,#0x30]
465232:  LDR             R3, [R1,#0x14]
465234:  STR             R2, [R3,#0x34]
465236:  LDR             R1, [R1,#0x14]
465238:  ADDS            R1, #0x38 ; '8'
46523A:  B               loc_46527E
46523C:  LDR             R2, [R0,#0x14]
46523E:  LDR             R3, [R2,#4]
465240:  LDRB            R4, [R2,#0xA]
465242:  LDR             R2, [R3,#8]
465244:  CBZ             R4, loc_46529C
465246:  LDRSH.W         R4, [R2,#0xC]
46524A:  LDRSH.W         R3, [R2,#0xA]
46524E:  LDRSH.W         R2, [R2,#0xE]
465252:  VMOV            S2, R4
465256:  VMOV            S0, R2
46525A:  VCVT.F32.S32    S0, S0
46525E:  VCVT.F32.S32    S4, S2
465262:  VMOV            S2, R3
465266:  VCVT.F32.S32    S6, S2
46526A:  VMUL.F32        S2, S0, S16
46526E:  VMUL.F32        S0, S4, S16
465272:  VMUL.F32        S4, S6, S16
465276:  B               loc_4652A8
465278:  STRD.W          R3, R2, [R1,#4]
46527C:  ADDS            R1, #0xC
46527E:  STR             R0, [R1]
465280:  LDR             R0, [SP,#0x38+var_2C]
465282:  VLDR            D16, [R9]
465286:  ADD.W           R0, R0, R8,LSL#2
46528A:  LDR.W           R1, [R9,#(dword_9ABFA0 - 0x9ABF98)]
46528E:  LDR.W           R0, [R0,#-4]
465292:  STR.W           R1, [R0,#0x194]
465296:  VSTR            D16, [R0,#0x18C]
46529A:  B               loc_465316
46529C:  VLDR            S4, [R2,#0x14]
4652A0:  VLDR            S0, [R2,#0x18]
4652A4:  VLDR            S2, [R2,#0x1C]
4652A8:  LDR             R2, [SP,#0x38+var_30]
4652AA:  VLDR            S14, [R2]
4652AE:  VLDR            S8, [R2,#4]
4652B2:  VLDR            S10, [R2,#8]
4652B6:  VADD.F32        S4, S4, S14
4652BA:  VADD.F32        S12, S0, S8
4652BE:  LDR             R2, [R1,#0x14]
4652C0:  VADD.F32        S6, S2, S10
4652C4:  CBZ             R2, loc_4652D6
4652C6:  VSTR            S4, [R2,#0x30]
4652CA:  LDR             R2, [R1,#0x14]
4652CC:  VSTR            S12, [R2,#0x34]
4652D0:  LDR             R1, [R1,#0x14]
4652D2:  ADDS            R1, #0x38 ; '8'
4652D4:  B               loc_4652EA
4652D6:  VSTR            S4, [R1,#4]
4652DA:  VSTR            S12, [R1,#8]
4652DE:  ADDS            R1, #0xC
4652E0:  LDR             R2, [SP,#0x38+var_38]
4652E2:  VLDR            S8, [R2,#4]
4652E6:  VLDR            S10, [R2,#8]
4652EA:  VSTR            S6, [R1]
4652EE:  VADD.F32        S2, S2, S10
4652F2:  LDR             R1, [SP,#0x38+var_34]
4652F4:  VADD.F32        S0, S0, S8
4652F8:  ADD.W           R1, R1, R8,LSL#2
4652FC:  LDR.W           R1, [R1,#-4]
465300:  VSTR            S4, [R1,#0x18C]
465304:  VSTR            S0, [R1,#0x190]
465308:  VSTR            S2, [R1,#0x194]
46530C:  LDRH.W          R1, [R0,#0x2E]!
465310:  ORR.W           R1, R1, #1; CEntity *
465314:  STRH            R1, [R0]
465316:  ADD.W           R4, R6, R8,LSL#2
46531A:  SUB.W           R11, R8, #1
46531E:  LDR.W           R0, [R4,#-4]; this
465322:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
465326:  LDR.W           R0, [R4,#-4]; this
46532A:  LDR             R1, [R0,#0x18]
46532C:  LDRB            R1, [R1]
46532E:  CMP             R1, #2
465330:  IT EQ
465332:  BLXEQ           j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
465336:  CMP.W           R11, #0
46533A:  MOV             R8, R11
46533C:  BNE.W           loc_465200
465340:  BLX             j__ZN6CTimer6UpdateEv; CTimer::Update(void)
465344:  BLX             j__ZN6CTimer6UpdateEv; CTimer::Update(void)
465348:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x465352)
46534A:  MOVS            R2, #1
46534C:  LDR             R1, =(_ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr - 0x465354)
46534E:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
465350:  ADD             R1, PC; _ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr
465352:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
465354:  LDR             R1, [R1]; CCutsceneMgr::ms_cutsceneTimer ...
465356:  STRB            R2, [R0]; CCutsceneMgr::ms_running
465358:  MOVS            R0, #0
46535A:  STR             R0, [R1]; CCutsceneMgr::ms_cutsceneTimer
46535C:  ADD             SP, SP, #0x10
46535E:  VPOP            {D8}
465362:  ADD             SP, SP, #4
465364:  POP.W           {R8-R11}
465368:  POP             {R4-R7,PC}
