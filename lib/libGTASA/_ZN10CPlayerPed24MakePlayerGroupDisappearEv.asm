; =========================================================
; Game Engine Function: _ZN10CPlayerPed24MakePlayerGroupDisappearEv
; Address            : 0x4CA268 - 0x4CA2EA
; =========================================================

4CA268:  PUSH            {R4-R7,LR}
4CA26A:  ADD             R7, SP, #0xC
4CA26C:  PUSH.W          {R8-R11}
4CA270:  SUB             SP, SP, #4
4CA272:  MOV             R10, R0
4CA274:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA280)
4CA276:  MOVS            R5, #0
4CA278:  MOV.W           R8, #0x2D4
4CA27C:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA27E:  LDR.W           R11, [R0]; CPedGroups::ms_groups ...
4CA282:  LDR             R0, =(abTempNeverLeavesGroup_ptr - 0x4CA288)
4CA284:  ADD             R0, PC; abTempNeverLeavesGroup_ptr
4CA286:  LDR.W           R9, [R0]; abTempNeverLeavesGroup
4CA28A:  LDR.W           R0, [R10,#0x444]
4CA28E:  MOV             R1, R5; int
4CA290:  LDR             R0, [R0,#0x38]
4CA292:  MLA.W           R0, R0, R8, R11
4CA296:  ADDS            R0, #8; this
4CA298:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
4CA29C:  CMP             R0, #0
4CA29E:  ITT NE
4CA2A0:  LDRBNE.W        R1, [R0,#0x448]
4CA2A4:  CMPNE           R1, #2
4CA2A6:  BEQ             loc_4CA2DC
4CA2A8:  LDR             R6, [R0,#0x1C]
4CA2AA:  LDR.W           R3, [R0,#0x48C]
4CA2AE:  LDR.W           R1, [R0,#0x484]
4CA2B2:  BIC.W           R6, R6, #0x81
4CA2B6:  LDR.W           R2, [R0,#0x488]
4CA2BA:  LDR.W           R4, [R0,#0x490]
4CA2BE:  STR             R6, [R0,#0x1C]
4CA2C0:  UBFX.W          R6, R3, #0xE, #1
4CA2C4:  STRB.W          R6, [R9,R5]
4CA2C8:  ORR.W           R3, R3, #0x4000
4CA2CC:  STR.W           R1, [R0,#0x484]
4CA2D0:  STR.W           R2, [R0,#0x488]
4CA2D4:  STR.W           R3, [R0,#0x48C]
4CA2D8:  STR.W           R4, [R0,#0x490]
4CA2DC:  ADDS            R5, #1
4CA2DE:  CMP             R5, #7
4CA2E0:  BNE             loc_4CA28A
4CA2E2:  ADD             SP, SP, #4
4CA2E4:  POP.W           {R8-R11}
4CA2E8:  POP             {R4-R7,PC}
