; =========================================================
; Game Engine Function: _ZN7CDarkel23RegisterKillNotByPlayerEPK4CPed11eWeaponType
; Address            : 0x30435C - 0x3043EC
; =========================================================

30435C:  PUSH            {R4,R6,R7,LR}
30435E:  ADD             R7, SP, #8
304360:  MOV             R4, R0
304362:  MOV.W           R0, #0xFFFFFFFF; int
304366:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30436A:  CMP             R0, R4
30436C:  BEQ             loc_3043B8
30436E:  MOV.W           R0, #0xFFFFFFFF; int
304372:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304376:  LDR.W           R0, [R0,#0x444]
30437A:  MOV.W           R2, #0x2D4
30437E:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x304386)
304380:  LDR             R0, [R0,#0x38]
304382:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
304384:  LDR             R1, [R1]; CPedGroups::ms_groups ...
304386:  MLA.W           R0, R0, R2, R1
30438A:  MOV             R1, R4; CPed *
30438C:  ADDS            R0, #8; this
30438E:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
304392:  CMP             R0, #1
304394:  BNE             loc_3043B8
304396:  MOVS            R0, #dword_44; this
304398:  MOV.W           R1, #0x40000000; unsigned __int16
30439C:  BLX             j__ZN6CStats13DecrementStatEtf; CStats::DecrementStat(ushort,float)
3043A0:  MOVS            R0, #(dword_A0+3); this
3043A2:  MOV.W           R1, #0x3F800000; unsigned __int16
3043A6:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3043AA:  MOVS            R0, #0; this
3043AC:  MOV.W           R1, #0x150; unsigned __int8
3043B0:  MOV.W           R2, #0x3F800000; unsigned int
3043B4:  BLX             j__ZN6CStats30DisplayScriptStatUpdateMessageEhjf; CStats::DisplayScriptStatUpdateMessage(uchar,uint,float)
3043B8:  MOVS            R0, #dword_78; this
3043BA:  MOV.W           R1, #0x3F800000; unsigned __int16
3043BE:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3043C2:  LDR.W           R0, [R4,#0x59C]
3043C6:  SUB.W           R1, R0, #9
3043CA:  CMP             R1, #8
3043CC:  BCS             loc_3043DC
3043CE:  MOVS            R0, #(dword_EC+3); this
3043D0:  MOV.W           R1, #0x3F800000; unsigned __int16
3043D4:  POP.W           {R4,R6,R7,LR}
3043D8:  B.W             j_j__ZN6CStats13IncrementStatEtf; j_CStats::IncrementStat(ushort,float)
3043DC:  CMP             R0, #8
3043DE:  BEQ             loc_3043E8
3043E0:  CMP             R0, #7
3043E2:  IT NE
3043E4:  POPNE           {R4,R6,R7,PC}
3043E6:  B               loc_3043CE
3043E8:  MOVS            R0, #0xF0
3043EA:  B               loc_3043D0
