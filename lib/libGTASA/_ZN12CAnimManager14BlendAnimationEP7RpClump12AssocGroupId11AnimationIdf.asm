; =========================================================
; Game Engine Function: _ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf
; Address            : 0x38E2F0 - 0x38E4FC
; =========================================================

38E2F0:  PUSH            {R4-R7,LR}
38E2F2:  ADD             R7, SP, #0xC
38E2F4:  PUSH.W          {R8-R11}
38E2F8:  SUB             SP, SP, #4
38E2FA:  VPUSH           {D8}
38E2FE:  SUB             SP, SP, #0x10
38E300:  MOV             R5, R2
38E302:  LDR             R2, =(ClumpOffset_ptr - 0x38E30C)
38E304:  MOV             R9, R1
38E306:  LDR             R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E312)
38E308:  ADD             R2, PC; ClumpOffset_ptr
38E30A:  ADD.W           R8, R9, R9,LSL#2
38E30E:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E310:  STR             R0, [SP,#0x38+var_30]
38E312:  LDR             R2, [R2]; ClumpOffset
38E314:  MOV             R4, R3
38E316:  LDR             R6, [R1]; CAnimManager::ms_aAnimAssocGroups ...
38E318:  LDR             R2, [R2]
38E31A:  LDR             R1, [R6]; CAnimManager::ms_aAnimAssocGroups
38E31C:  LDR.W           R10, [R0,R2]
38E320:  ADD.W           R0, R1, R8,LSL#2; this
38E324:  MOV             R1, R5; unsigned int
38E326:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
38E32A:  LDR             R1, [R6]; CAnimManager::ms_aAnimAssocGroups
38E32C:  LDRH            R0, [R0,#0xA]
38E32E:  STR             R0, [SP,#0x38+var_2C]
38E330:  ADD.W           R0, R1, R8,LSL#2; this
38E334:  MOV             R1, R5; unsigned int
38E336:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
38E33A:  LDRH            R0, [R0,#0xA]
38E33C:  VMOV            S16, R4
38E340:  LDR             R1, [R6]; CAnimManager::ms_aAnimAssocGroups
38E342:  AND.W           R11, R0, #0x10
38E346:  STR.W           R8, [SP,#0x38+var_34]
38E34A:  ADD.W           R0, R1, R8,LSL#2; this
38E34E:  MOV             R1, R5; unsigned int
38E350:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
38E354:  LDR.W           R1, [R10]
38E358:  MOV.W           R10, #0
38E35C:  CMP             R1, #0
38E35E:  BEQ.W           loc_38E468
38E362:  LDR             R2, [SP,#0x38+var_2C]
38E364:  CMP.W           R11, #0
38E368:  MOV.W           LR, #0
38E36C:  MOV.W           R3, #0
38E370:  LDRSH.W         R0, [R0,#0xA]
38E374:  IT EQ
38E376:  MOVEQ.W         LR, #1
38E37A:  AND.W           R2, R2, #0x20 ; ' '
38E37E:  VLDR            S0, =-0.05
38E382:  STR             R3, [SP,#0x38+var_2C]
38E384:  MOVS            R6, #0
38E386:  MOV             R8, R6
38E388:  SUBS            R6, R1, #4
38E38A:  CBZ             R2, loc_38E396
38E38C:  LDRB.W          R3, [R6,#0x2E]
38E390:  LSLS            R3, R3, #0x1A
38E392:  IT MI
38E394:  MOVMI           R10, R6
38E396:  LDRSH.W         R3, [R6,#0x2C]
38E39A:  CMP             R3, R5
38E39C:  ITT EQ
38E39E:  LDRSHEQ.W       R3, [R6,#0xE]
38E3A2:  CMPEQ           R3, R9
38E3A4:  BEQ             loc_38E426
38E3A6:  LDRH.W          R12, [R6,#0x2E]
38E3AA:  CMP.W           R11, #0
38E3AE:  MOV             R4, R11
38E3B0:  AND.W           R3, R12, #0x10
38E3B4:  IT NE
38E3B6:  MOVNE           R4, #1
38E3B8:  TEQ.W           R4, R3,LSR#4
38E3BC:  BNE             loc_38E3D0
38E3BE:  CMP.W           R0, #0xFFFFFFFF
38E3C2:  MOV.W           R3, #0
38E3C6:  IT GT
38E3C8:  MOVGT           R3, #1
38E3CA:  TEQ.W           R3, R12,LSR#15
38E3CE:  BNE             loc_38E3D8
38E3D0:  LDR             R1, [R1]
38E3D2:  CMP             R1, #0
38E3D4:  BNE             loc_38E388
38E3D6:  B               loc_38E42E
38E3D8:  VLDR            S2, [R6,#0x18]
38E3DC:  VCMPE.F32       S2, #0.0
38E3E0:  VMRS            APSR_nzcv, FPSCR
38E3E4:  BLE             loc_38E40C
38E3E6:  VNMUL.F32       S2, S2, S16
38E3EA:  VLDR            S4, [R6,#0x1C]
38E3EE:  MOVS            R3, #0
38E3F0:  VCMPE.F32       S4, S2
38E3F4:  VMRS            APSR_nzcv, FPSCR
38E3F8:  IT GT
38E3FA:  MOVGT           R3, #1
38E3FC:  ORRS.W          R3, R3, LR
38E400:  ITT NE
38E402:  VMINNE.F32      D1, D1, D0
38E406:  VSTRNE          S2, [R6,#0x1C]
38E40A:  B               loc_38E414
38E40C:  MOVS            R3, #0xBF800000
38E412:  STR             R3, [R6,#0x1C]
38E414:  ORR.W           R3, R12, #4
38E418:  STRH            R3, [R1,#0x2A]
38E41A:  MOVS            R3, #1
38E41C:  LDR             R1, [R1]
38E41E:  STR             R3, [SP,#0x38+var_2C]
38E420:  CMP             R1, #0
38E422:  BNE             loc_38E388
38E424:  B               loc_38E42E
38E426:  LDR             R1, [R1]
38E428:  CMP             R1, #0
38E42A:  BNE             loc_38E386
38E42C:  B               loc_38E436
38E42E:  CMP.W           R8, #0
38E432:  MOV             R6, R8
38E434:  BEQ             loc_38E46C
38E436:  VMOV.F32        S0, #1.0
38E43A:  VLDR            S2, [R6,#0x18]
38E43E:  LDR             R0, [R6,#0x14]
38E440:  VLDR            S4, [R6,#0x20]
38E444:  VSUB.F32        S0, S0, S2
38E448:  VMUL.F32        S0, S0, S16
38E44C:  VSTR            S0, [R6,#0x1C]
38E450:  VLDR            S0, [R0,#0x10]
38E454:  VCMP.F32        S4, S0
38E458:  VMRS            APSR_nzcv, FPSCR
38E45C:  ITTT EQ
38E45E:  MOVEQ           R0, R6; this
38E460:  MOVEQ           R1, #0; float
38E462:  BLXEQ           j__ZN21CAnimBlendAssociation5StartEf; CAnimBlendAssociation::Start(float)
38E466:  B               loc_38E4E6
38E468:  MOVS            R0, #0
38E46A:  STR             R0, [SP,#0x38+var_2C]
38E46C:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E474)
38E46E:  LDR             R1, [SP,#0x38+var_34]
38E470:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E472:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38E474:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
38E476:  ADD.W           R0, R0, R1,LSL#2; this
38E47A:  MOV             R1, R5; unsigned int
38E47C:  BLX             j__ZN20CAnimBlendAssocGroup13CopyAnimationEj; CAnimBlendAssocGroup::CopyAnimation(uint)
38E480:  MOV             R6, R0
38E482:  LDR             R0, =(ClumpOffset_ptr - 0x38E48E)
38E484:  LDR             R1, [SP,#0x38+var_30]
38E486:  CMP.W           R10, #0
38E48A:  ADD             R0, PC; ClumpOffset_ptr
38E48C:  LDR             R0, [R0]; ClumpOffset
38E48E:  LDR             R0, [R0]
38E490:  LDR             R5, [R1,R0]
38E492:  ITT NE
38E494:  LDRHNE          R0, [R6,#0x2E]
38E496:  ANDSNE.W        R0, R0, #0x20 ; ' '
38E49A:  BEQ             loc_38E4AE
38E49C:  MOV             R0, R6; this
38E49E:  MOV             R1, R10; CAnimBlendAssociation *
38E4A0:  BLX             j__ZN21CAnimBlendAssociation13SyncAnimationEPS_; CAnimBlendAssociation::SyncAnimation(CAnimBlendAssociation*)
38E4A4:  LDRH            R0, [R6,#0x2E]
38E4A6:  ORR.W           R0, R0, #1
38E4AA:  STRH            R0, [R6,#0x2E]
38E4AC:  B               loc_38E4B6
38E4AE:  MOV             R0, R6; this
38E4B0:  MOVS            R1, #0; float
38E4B2:  BLX             j__ZN21CAnimBlendAssociation5StartEf; CAnimBlendAssociation::Start(float)
38E4B6:  LDR             R1, [R5]
38E4B8:  ADDS            R0, R6, #4
38E4BA:  CMP             R1, #0
38E4BC:  ITTE NE
38E4BE:  STRNE           R0, [R1,#4]
38E4C0:  LDRNE           R1, [R5]
38E4C2:  MOVEQ           R1, #0; CAnimBlendHierarchy *
38E4C4:  CMP.W           R11, #0
38E4C8:  STRD.W          R1, R5, [R6,#4]
38E4CC:  STR             R0, [R5]
38E4CE:  ITT EQ
38E4D0:  LDREQ           R0, [SP,#0x38+var_2C]
38E4D2:  CMPEQ           R0, #0
38E4D4:  BNE             loc_38E4DE
38E4D6:  MOV.W           R0, #0x3F800000
38E4DA:  STR             R0, [R6,#0x18]
38E4DC:  B               loc_38E4EC
38E4DE:  MOVS            R0, #0
38E4E0:  VSTR            S16, [R6,#0x1C]
38E4E4:  STR             R0, [R6,#0x18]
38E4E6:  LDR             R0, [R6,#0x14]; this
38E4E8:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
38E4EC:  MOV             R0, R6
38E4EE:  ADD             SP, SP, #0x10
38E4F0:  VPOP            {D8}
38E4F4:  ADD             SP, SP, #4
38E4F6:  POP.W           {R8-R11}
38E4FA:  POP             {R4-R7,PC}
