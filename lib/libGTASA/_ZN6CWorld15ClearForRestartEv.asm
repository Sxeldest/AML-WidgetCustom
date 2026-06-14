; =========================================================
; Game Engine Function: _ZN6CWorld15ClearForRestartEv
; Address            : 0x4232E8 - 0x4233BC
; =========================================================

4232E8:  PUSH            {R4-R7,LR}
4232EA:  ADD             R7, SP, #0xC
4232EC:  PUSH.W          {R8-R11}
4232F0:  SUB             SP, SP, #4
4232F2:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x4232F8)
4232F4:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
4232F6:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
4232F8:  LDR             R0, [R0]; this
4232FA:  CMP             R0, #2
4232FC:  IT EQ
4232FE:  BLXEQ           j__ZN12CCutsceneMgr18DeleteCutsceneDataEv; CCutsceneMgr::DeleteCutsceneData(void)
423302:  BLX             j__ZN15CProjectileInfo20RemoveAllProjectilesEv; CProjectileInfo::RemoveAllProjectiles(void)
423306:  BLX             j__ZN7CObject20DeleteAllTempObjectsEv; CObject::DeleteAllTempObjects(void)
42330A:  BLX             j__ZN7CObject23DeleteAllMissionObjectsEv; CObject::DeleteAllMissionObjects(void)
42330E:  BLX             j__ZN11CPopulation31ConvertAllObjectsToDummyObjectsEv; CPopulation::ConvertAllObjectsToDummyObjects(void)
423312:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42331C)
423314:  MOV.W           R11, #0
423318:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42331A:  LDR.W           R8, [R0]; CWorld::ms_aRepeatSectors ...
42331E:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423324)
423320:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423322:  LDR.W           R9, [R0]; CWorld::ms_aRepeatSectors ...
423326:  ADD.W           R10, R11, R11,LSL#1
42332A:  ADD.W           R0, R8, R10,LSL#2
42332E:  LDR             R6, [R0,#4]
423330:  CBZ             R6, loc_423366
423332:  LDRD.W          R4, R5, [R6]
423336:  LDR             R0, [R4]
423338:  LDR             R1, [R0,#0x10]
42333A:  MOV             R0, R4
42333C:  BLX             R1
42333E:  LDRB.W          R0, [R4,#0x3A]
423342:  AND.W           R0, R0, #7
423346:  SUBS            R0, #2
423348:  UXTB            R0, R0
42334A:  CMP             R0, #2
42334C:  ITT LS
42334E:  MOVLS           R0, R4; this
423350:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
423354:  LDR             R0, [R6]
423356:  CMP             R0, #0
423358:  ITTT NE
42335A:  LDRNE           R1, [R0]
42335C:  LDRNE           R1, [R1,#4]
42335E:  BLXNE           R1
423360:  CMP             R5, #0
423362:  MOV             R6, R5
423364:  BNE             loc_423332
423366:  LDR.W           R5, [R9,R10,LSL#2]
42336A:  CBZ             R5, loc_4233A0
42336C:  LDRD.W          R4, R6, [R5]
423370:  LDR             R0, [R4]
423372:  LDR             R1, [R0,#0x10]
423374:  MOV             R0, R4
423376:  BLX             R1
423378:  LDRB.W          R0, [R4,#0x3A]
42337C:  AND.W           R0, R0, #7
423380:  SUBS            R0, #2
423382:  UXTB            R0, R0
423384:  CMP             R0, #2
423386:  ITT LS
423388:  MOVLS           R0, R4; this
42338A:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
42338E:  LDR             R0, [R5]
423390:  CMP             R0, #0
423392:  ITTT NE
423394:  LDRNE           R1, [R0]
423396:  LDRNE           R1, [R1,#4]
423398:  BLXNE           R1
42339A:  CMP             R6, #0
42339C:  MOV             R5, R6
42339E:  BNE             loc_42336C
4233A0:  ADD.W           R11, R11, #1
4233A4:  CMP.W           R11, #0x100
4233A8:  BNE             loc_423326
4233AA:  BLX             j__ZN8CPickups6ReInitEv; CPickups::ReInit(void)
4233AE:  ADD             SP, SP, #4
4233B0:  POP.W           {R8-R11}
4233B4:  POP.W           {R4-R7,LR}
4233B8:  B.W             sub_19E728
