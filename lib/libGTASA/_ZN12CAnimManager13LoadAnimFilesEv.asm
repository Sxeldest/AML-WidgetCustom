; =========================================================
; Game Engine Function: _ZN12CAnimManager13LoadAnimFilesEv
; Address            : 0x38E510 - 0x38E5C4
; =========================================================

38E510:  PUSH            {R4,R5,R7,LR}
38E512:  ADD             R7, SP, #8
38E514:  SUB             SP, SP, #0x108
38E516:  LDR             R0, =(__stack_chk_guard_ptr - 0x38E520)
38E518:  MOV             R2, SP
38E51A:  LDR             R1, =(aAnimPedIfp - 0x38E522); "ANIM\\PED.IFP"
38E51C:  ADD             R0, PC; __stack_chk_guard_ptr
38E51E:  ADD             R1, PC; "ANIM\\PED.IFP"
38E520:  LDR             R0, [R0]; __stack_chk_guard
38E522:  VLDR            D17, [R1]
38E526:  LDR             R0, [R0]
38E528:  STR             R0, [SP,#0x110+var_C]
38E52A:  ADDS            R0, R1, #5
38E52C:  MOVS            R1, #1
38E52E:  VLD1.8          {D16}, [R0]
38E532:  ORR.W           R0, R2, #5
38E536:  VST1.8          {D16}, [R0]
38E53A:  MOVS            R0, #2
38E53C:  VSTR            D17, [SP,#0x110+var_110]
38E540:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
38E544:  MOVS            R1, #1
38E546:  MOVS            R2, #0
38E548:  MOV             R4, R0
38E54A:  BLX             j__ZN12CAnimManager12LoadAnimFileEP8RwStreambPA32_Kc; CAnimManager::LoadAnimFile(RwStream *,bool,char const(*)[32])
38E54E:  MOV             R0, R4
38E550:  MOVS            R1, #0
38E552:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
38E556:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x38E55E)
38E558:  MOVS            R4, #0x14
38E55A:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
38E55C:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
38E55E:  LDR             R5, [R0]; CAnimManager::ms_numAnimAssocDefinitions
38E560:  UMULL.W         R1, R2, R5, R4
38E564:  ADD.W           R0, R1, #8
38E568:  CMP             R0, R1
38E56A:  IT CC
38E56C:  MOVCC.W         R0, #0xFFFFFFFF
38E570:  CMP             R2, #0
38E572:  IT NE
38E574:  MOVNE           R2, #1
38E576:  CMP             R2, #0
38E578:  IT NE
38E57A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
38E57E:  BLX             _Znaj; operator new[](uint)
38E582:  STRD.W          R4, R5, [R0]
38E586:  ADD.W           R4, R0, #8
38E58A:  CMP             R5, #0
38E58C:  BEQ             loc_38E5A2
38E58E:  ADD.W           R0, R5, R5,LSL#2
38E592:  LSLS            R5, R0, #2
38E594:  MOV             R0, R4; this
38E596:  BLX             j__ZN20CAnimBlendAssocGroupC2Ev; CAnimBlendAssocGroup::CAnimBlendAssocGroup(void)
38E59A:  SUBS            R5, #0x14
38E59C:  ADD.W           R0, R0, #0x14
38E5A0:  BNE             loc_38E596
38E5A2:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E5A8)
38E5A4:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E5A6:  LDR             R0, [R0]; this
38E5A8:  STR             R4, [R0]; CAnimManager::ms_aAnimAssocGroups
38E5AA:  BLX             j__ZN12CAnimManager21CreateAnimAssocGroupsEv; CAnimManager::CreateAnimAssocGroups(void)
38E5AE:  LDR             R0, =(__stack_chk_guard_ptr - 0x38E5B6)
38E5B0:  LDR             R1, [SP,#0x110+var_C]
38E5B2:  ADD             R0, PC; __stack_chk_guard_ptr
38E5B4:  LDR             R0, [R0]; __stack_chk_guard
38E5B6:  LDR             R0, [R0]
38E5B8:  SUBS            R0, R0, R1
38E5BA:  ITT EQ
38E5BC:  ADDEQ           SP, SP, #0x108
38E5BE:  POPEQ           {R4,R5,R7,PC}
38E5C0:  BLX             __stack_chk_fail
