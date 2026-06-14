; =========================================================
; Game Engine Function: _ZN17InteriorManager_c17GetVisibleEffectsEP20InteriorEffectInfo_ti
; Address            : 0x44C218 - 0x44C3FC
; =========================================================

44C218:  PUSH            {R4-R7,LR}
44C21A:  ADD             R7, SP, #0xC
44C21C:  PUSH.W          {R8-R11}
44C220:  SUB.W           SP, SP, #0x2000
44C224:  SUB             SP, SP, #0x3C
44C226:  LDR             R0, =(TheCamera_ptr - 0x44C234)
44C228:  MOV             R4, R1
44C22A:  STR             R2, [SP,#0x2058+var_202C]
44C22C:  ADD.W           R8, SP, #0x2058+var_2024
44C230:  ADD             R0, PC; TheCamera_ptr
44C232:  MOVS            R5, #0
44C234:  MOVS            R3, #(stderr+1)
44C236:  LDR             R1, [R0]; TheCamera
44C238:  MOVW            R0, #0xFFFF
44C23C:  STRH.W          R0, [R7,#var_22]
44C240:  MOV.W           R0, #(elf_hash_bucket+0x704)
44C244:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
44C246:  STRD.W          R0, R8, [SP,#0x2058+var_2058]; __int16 *
44C24A:  ADD.W           R0, R2, #0x30 ; '0'
44C24E:  CMP             R2, #0
44C250:  STRD.W          R3, R5, [SP,#0x2058+var_2050]; CEntity **
44C254:  SUB.W           R3, R7, #-var_22; bool
44C258:  STRD.W          R5, R5, [SP,#0x2058+var_2048]; bool
44C25C:  MOV.W           R2, #0; float
44C260:  STR             R5, [SP,#0x2058+var_2040]; bool
44C262:  IT EQ
44C264:  ADDEQ           R0, R1, #4; this
44C266:  MOVS            R1, #0x42C80000; CVector *
44C26C:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
44C270:  LDRSH.W         R0, [R7,#var_22]
44C274:  CMP             R0, #1
44C276:  BLT.W           loc_44C3EE
44C27A:  ADD.W           R1, R4, #8
44C27E:  STR             R1, [SP,#0x2058+var_2030]
44C280:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44C28E)
44C282:  MOVS            R5, #0
44C284:  MOV.W           R9, #0
44C288:  STR             R4, [SP,#0x2058+var_2028]
44C28A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44C28C:  LDR             R3, [R1]; CModelInfo::ms_modelInfoPtrs ...
44C28E:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x44C294)
44C290:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
44C292:  LDR             R6, [R1]; CGame::currArea ...
44C294:  STRD.W          R6, R3, [SP,#0x2058+var_203C]
44C298:  LDR.W           R1, [R8,R9,LSL#2]
44C29C:  LDR             R2, [R1,#0x18]
44C29E:  CMP             R2, #0
44C2A0:  BEQ             loc_44C350
44C2A2:  LDRSH.W         R2, [R1,#0x26]
44C2A6:  LDRB.W          R1, [R1,#0x33]
44C2AA:  LDR.W           R10, [R3,R2,LSL#2]
44C2AE:  CMP             R1, #0xD
44C2B0:  ITT NE
44C2B2:  LDRNE           R2, [R6]; CGame::currArea
44C2B4:  CMPNE           R2, R1
44C2B6:  BNE             loc_44C350
44C2B8:  LDRB.W          R1, [R10,#0x23]
44C2BC:  CMP             R1, #0
44C2BE:  BEQ             loc_44C350
44C2C0:  MOVS            R6, #0
44C2C2:  MOV             R0, R10; this
44C2C4:  MOV             R1, R6; int
44C2C6:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
44C2CA:  MOV             R11, R0
44C2CC:  LDRB.W          R0, [R11,#0xC]; int
44C2D0:  CMP             R0, #5
44C2D2:  BNE             loc_44C33E
44C2D4:  LDR.W           R2, [R8,R9,LSL#2]; this
44C2D8:  BLX             j__ZN17InteriorManager_c23IsInteriorEffectVisibleEP9C2dEffectP7CEntity; InteriorManager_c::IsInteriorEffectVisible(C2dEffect *,CEntity *)
44C2DC:  CBZ             R0, loc_44C33E
44C2DE:  CMP             R5, #1
44C2E0:  BLT             loc_44C30C
44C2E2:  LDR.W           R1, [R8,R9,LSL#2]
44C2E6:  MOVS            R0, #0
44C2E8:  LDR             R2, [SP,#0x2058+var_2030]
44C2EA:  MOV             R12, R5
44C2EC:  MOV             R3, R5
44C2EE:  LDR.W           R5, [R2,#-8]
44C2F2:  CMP             R5, R1
44C2F4:  BNE             loc_44C304
44C2F6:  LDR             R5, [R2]
44C2F8:  LDRB.W          R4, [R11,#0x11]
44C2FC:  LDRB            R5, [R5,#0x11]
44C2FE:  CMP             R5, R4
44C300:  IT EQ
44C302:  MOVEQ           R0, #1
44C304:  ADDS            R2, #0x50 ; 'P'
44C306:  SUBS            R3, #1
44C308:  BNE             loc_44C2EE
44C30A:  B               loc_44C310
44C30C:  MOV             R12, R5
44C30E:  MOVS            R0, #0
44C310:  LDR             R1, [SP,#0x2058+var_202C]
44C312:  MOV             R5, R12
44C314:  CMP             R5, R1
44C316:  BGE             loc_44C33E
44C318:  LSLS            R0, R0, #0x18
44C31A:  BNE             loc_44C33E
44C31C:  ADD.W           R1, R5, R5,LSL#2
44C320:  LDR             R3, [SP,#0x2058+var_2028]
44C322:  LDR.W           R0, [R8,R9,LSL#2]
44C326:  ADDS            R5, #1
44C328:  LSLS            R2, R1, #4
44C32A:  STR             R0, [R3,R2]
44C32C:  ADD.W           R0, R3, R1,LSL#4
44C330:  MOVS            R1, #1
44C332:  STR             R6, [R0,#0x28]
44C334:  STRD.W          R1, R11, [R0,#4]
44C338:  MOVS            R1, #0
44C33A:  STRB.W          R1, [R0,#0x4C]
44C33E:  LDRB.W          R0, [R10,#0x23]
44C342:  ADDS            R6, #1
44C344:  CMP             R6, R0
44C346:  BLT             loc_44C2C2
44C348:  LDRH.W          R0, [R7,#var_22]
44C34C:  LDRD.W          R6, R3, [SP,#0x2058+var_203C]
44C350:  ADD.W           R9, R9, #1
44C354:  SXTH            R1, R0
44C356:  CMP             R9, R1
44C358:  BLT             loc_44C298
44C35A:  CMP             R5, #1
44C35C:  BLT             loc_44C3EE
44C35E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44C368)
44C360:  MOVS            R6, #0
44C362:  STR             R5, [SP,#0x2058+var_2034]
44C364:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44C366:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
44C368:  STR             R0, [SP,#0x2058+var_202C]
44C36A:  ADD.W           R0, R6, R6,LSL#2
44C36E:  LDR             R2, [SP,#0x2058+var_2028]
44C370:  LSLS            R1, R0, #4
44C372:  LDR             R1, [R2,R1]
44C374:  LDR             R2, [SP,#0x2058+var_202C]
44C376:  LDRSH.W         R1, [R1,#0x26]
44C37A:  LDR.W           R4, [R2,R1,LSL#2]
44C37E:  LDRB.W          R1, [R4,#0x23]
44C382:  CBZ             R1, loc_44C3E6
44C384:  LDR             R1, [SP,#0x2058+var_2028]
44C386:  MOVS            R5, #0
44C388:  ADD.W           R9, R1, R0,LSL#4
44C38C:  ADD.W           R8, R9, #4
44C390:  ADD.W           R10, R9, #8
44C394:  ADD.W           R11, R9, #0x28 ; '('
44C398:  LDR.W           R0, [R11]
44C39C:  CMP             R5, R0
44C39E:  BEQ             loc_44C3DC
44C3A0:  MOV             R0, R4; this
44C3A2:  MOV             R1, R5; int
44C3A4:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
44C3A8:  LDRB            R1, [R0,#0xC]
44C3AA:  CMP             R1, #5
44C3AC:  BNE             loc_44C3DC
44C3AE:  LDR.W           R1, [R10]
44C3B2:  LDRB            R2, [R0,#0x11]
44C3B4:  LDRB            R1, [R1,#0x11]
44C3B6:  CMP             R1, R2
44C3B8:  BNE             loc_44C3DC
44C3BA:  LDR.W           R1, [R8]
44C3BE:  CMP             R1, #7
44C3C0:  BGT             loc_44C3DC
44C3C2:  ADD.W           R1, R9, R1,LSL#2
44C3C6:  STR             R0, [R1,#8]
44C3C8:  LDR.W           R0, [R8]
44C3CC:  ADD.W           R0, R9, R0,LSL#2
44C3D0:  STR             R5, [R0,#0x28]
44C3D2:  LDR.W           R0, [R8]
44C3D6:  ADDS            R0, #1
44C3D8:  STR.W           R0, [R8]
44C3DC:  LDRB.W          R0, [R4,#0x23]
44C3E0:  ADDS            R5, #1
44C3E2:  CMP             R5, R0
44C3E4:  BLT             loc_44C398
44C3E6:  LDR             R5, [SP,#0x2058+var_2034]
44C3E8:  ADDS            R6, #1
44C3EA:  CMP             R6, R5
44C3EC:  BNE             loc_44C36A
44C3EE:  MOV             R0, R5
44C3F0:  ADD.W           SP, SP, #0x2000
44C3F4:  ADD             SP, SP, #0x3C ; '<'
44C3F6:  POP.W           {R8-R11}
44C3FA:  POP             {R4-R7,PC}
