; =========================================================
; Game Engine Function: _ZN18FurnitureManager_c13LoadFurnitureEv
; Address            : 0x475434 - 0x4755FA
; =========================================================

475434:  PUSH            {R4-R7,LR}
475436:  ADD             R7, SP, #0xC
475438:  PUSH.W          {R8-R11}
47543C:  SUB             SP, SP, #0x124
47543E:  MOV             R10, R0
475440:  LDR             R0, =(__stack_chk_guard_ptr - 0x475448)
475442:  ADR             R1, aRb_26; "rb"
475444:  ADD             R0, PC; __stack_chk_guard_ptr
475446:  LDR             R0, [R0]; __stack_chk_guard
475448:  LDR             R0, [R0]
47544A:  STR             R0, [SP,#0x140+var_20]
47544C:  ADR             R0, aDataFurniturDa; "data\\furnitur.dat"
47544E:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
475452:  MOV             R5, R0
475454:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
475458:  MOV             R9, R0
47545A:  CMP.W           R9, #0
47545E:  BEQ.W           loc_4755DA
475462:  ADR.W           R11, aS_3; "%s"
475466:  ADD             R4, SP, #0x140+var_40
475468:  ADR             R6, aSubgroup; "SUBGROUP:"
47546A:  MOV.W           R0, #0xFFFFFFFF
47546E:  MOV.W           R8, #0xFFFFFFFF
475472:  STR             R0, [SP,#0x140+var_11C]
475474:  B               loc_4755BE
475476:  MOV             R0, R9; s
475478:  MOV             R1, R11; format
47547A:  MOV             R2, R4
47547C:  BLX             sscanf
475480:  ADR             R1, aGroup; "GROUP:"
475482:  MOV             R0, R4; char *
475484:  BLX             strcmp
475488:  CMP             R0, #0
47548A:  BEQ             loc_475518
47548C:  MOV             R0, R4; char *
47548E:  MOV             R1, R6; char *
475490:  BLX             strcmp
475494:  CMP             R0, #0
475496:  BEQ             loc_475534
475498:  ADR             R1, aItem_0; "ITEM:"
47549A:  MOV             R0, R4; char *
47549C:  BLX             strcmp
4754A0:  CMP             R0, #0
4754A2:  BNE.W           loc_4755CC
4754A6:  ADD             R0, SP, #0x140+var_104
4754A8:  STR             R0, [SP,#0x140+var_140]
4754AA:  ADD             R0, SP, #0x140+var_108
4754AC:  STR             R0, [SP,#0x140+var_13C]; unsigned __int8
4754AE:  ADD             R0, SP, #0x140+var_10C
4754B0:  MOV             R2, R4
4754B2:  ADD             R4, SP, #0x140+var_80
4754B4:  STR             R0, [SP,#0x140+var_138]
4754B6:  ADD             R0, SP, #0x140+var_110
4754B8:  ADR             R1, aSSDDDD; "%s %s %d %d %d %d"
4754BA:  STR             R0, [SP,#0x140+var_134]
4754BC:  MOV             R0, R9; s
4754BE:  MOV             R3, R4
4754C0:  BLX             sscanf
4754C4:  ADD             R1, SP, #0x140+var_114; char *
4754C6:  MOV             R0, R4; this
4754C8:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
4754CC:  CMP             R0, #0
4754CE:  STRD.W          R8, R10, [SP,#0x140+var_124]
4754D2:  BEQ             loc_4755A2
4754D4:  ADD.W           R0, R8, R8,LSL#1
4754D8:  LDR.W           R4, [R10,R0,LSL#2]
4754DC:  CMP             R4, #0
4754DE:  BEQ             loc_4755AC
4754E0:  ADD.W           R11, SP, #0x140+var_10C
4754E4:  LDM.W           R11, {R6,R8,R11}
4754E8:  LDRD.W          R10, R9, [SP,#0x140+var_114]
4754EC:  LDR             R0, [R4,#8]
4754EE:  LDR             R1, [SP,#0x140+var_11C]
4754F0:  CMP             R0, R1
4754F2:  BNE             loc_475510
4754F4:  UXTB.W          R0, R9
4754F8:  UXTB            R1, R6
4754FA:  STRD.W          R1, R0, [SP,#0x140+var_140]; unsigned __int8
4754FE:  UXTH.W          R1, R10; unsigned __int16
475502:  SXTH.W          R2, R11; __int16
475506:  UXTB.W          R3, R8; unsigned __int8
47550A:  MOV             R0, R4; this
47550C:  BLX             j__ZN19FurnitureSubGroup_c12AddFurnitureEtshhh; FurnitureSubGroup_c::AddFurniture(ushort,short,uchar,uchar,uchar)
475510:  LDR             R4, [R4,#4]
475512:  CMP             R4, #0
475514:  BNE             loc_4754EC
475516:  B               loc_4755AC
475518:  MOV             R0, R9; s
47551A:  MOV             R9, R6
47551C:  ADD             R6, SP, #0x140+var_100
47551E:  ADR             R1, aSS_4; "%s %s"
475520:  MOV             R2, R4
475522:  MOV             R3, R6
475524:  BLX             sscanf
475528:  MOV             R1, R6; char *
47552A:  MOV             R6, R9
47552C:  BLX             j__ZN18FurnitureManager_c10GetGroupIdEPc; FurnitureManager_c::GetGroupId(char *)
475530:  MOV             R8, R0
475532:  B               loc_4755CC
475534:  ADD             R0, SP, #0x140+var_80
475536:  STR             R0, [SP,#0x140+var_140]; int
475538:  ADD             R0, SP, #0x140+var_108
47553A:  STR             R0, [SP,#0x140+var_13C]; int
47553C:  ADD             R0, SP, #0x140+var_104
47553E:  STR             R0, [SP,#0x140+var_138]; unsigned __int8
475540:  ADD             R0, SP, #0x140+var_10C
475542:  STR             R0, [SP,#0x140+var_134]
475544:  ADD             R0, SP, #0x140+var_110
475546:  STR             R0, [SP,#0x140+var_130]; unsigned __int8
475548:  ADD             R0, SP, #0x140+var_114
47554A:  ADD             R6, SP, #0x140+var_100
47554C:  STR             R0, [SP,#0x140+var_12C]
47554E:  ADD             R0, SP, #0x140+var_118
475550:  ADR             R1, aSSDDDDDDD; "%s %s %d %d %d %d %d %d %d"
475552:  STR             R0, [SP,#0x140+var_128]
475554:  MOV             R0, R9; s
475556:  MOV             R2, R4
475558:  MOV             R3, R6
47555A:  BLX             sscanf
47555E:  MOV             R1, R6; char *
475560:  BLX             j__ZN18FurnitureManager_c13GetSubGroupIdEPc; FurnitureManager_c::GetSubGroupId(char *)
475564:  MOV             R11, R8
475566:  MOV             R8, R10
475568:  MOV             R10, R0
47556A:  LDR             R0, [SP,#0x140+var_104]
47556C:  LDR             R2, [SP,#0x140+var_80]; int
47556E:  LDRD.W          R1, R3, [SP,#0x140+var_10C]; int
475572:  LDRB.W          R6, [SP,#0x140+var_110]
475576:  LDRB.W          LR, [SP,#0x140+var_114]
47557A:  LDRB.W          R12, [SP,#0x140+var_118]
47557E:  STMEA.W         SP, {R0,R1,R6}
475582:  ADD.W           R0, R11, R11,LSL#1
475586:  MOV             R1, R10; int
475588:  ADD.W           R0, R8, R0,LSL#2; this
47558C:  STRD.W          LR, R12, [SP,#0x140+var_134]; unsigned __int8
475590:  MOV             R10, R8
475592:  MOV             R8, R11
475594:  ADR             R6, aSubgroup; "SUBGROUP:"
475596:  STR             R1, [SP,#0x140+var_11C]
475598:  ADR.W           R11, aS_3; "%s"
47559C:  BLX             j__ZN16FurnitureGroup_c11AddSubGroupEiiiiihhh; FurnitureGroup_c::AddSubGroup(int,int,int,int,int,uchar,uchar,uchar)
4755A0:  B               loc_4755CC
4755A2:  ADD             R0, SP, #0x140+var_100
4755A4:  ADR             R1, aCannotFindMode; "Cannot find model %s"
4755A6:  MOV             R2, R4
4755A8:  BL              sub_5E6BC0
4755AC:  LDR             R0, [SP,#0x140+var_120]
4755AE:  ADR.W           R11, aS_3; "%s"
4755B2:  ADD             R4, SP, #0x140+var_40
4755B4:  ADR             R6, aSubgroup; "SUBGROUP:"
4755B6:  LDR.W           R8, [SP,#0x140+var_124]
4755BA:  MOV             R10, R0
4755BC:  B               loc_4755CC
4755BE:  LDRB.W          R0, [R9]
4755C2:  CMP             R0, #0x23 ; '#'
4755C4:  IT NE
4755C6:  CMPNE           R0, #0
4755C8:  BNE.W           loc_475476
4755CC:  MOV             R0, R5; this
4755CE:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4755D2:  MOV             R9, R0
4755D4:  CMP.W           R9, #0
4755D8:  BNE             loc_4755BE
4755DA:  MOV             R0, R5; this
4755DC:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4755E0:  LDR             R0, =(__stack_chk_guard_ptr - 0x4755E8)
4755E2:  LDR             R1, [SP,#0x140+var_20]
4755E4:  ADD             R0, PC; __stack_chk_guard_ptr
4755E6:  LDR             R0, [R0]; __stack_chk_guard
4755E8:  LDR             R0, [R0]
4755EA:  SUBS            R0, R0, R1
4755EC:  ITTT EQ
4755EE:  ADDEQ           SP, SP, #0x124
4755F0:  POPEQ.W         {R8-R11}
4755F4:  POPEQ           {R4-R7,PC}
4755F6:  BLX             __stack_chk_fail
