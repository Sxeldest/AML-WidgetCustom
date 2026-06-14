; =========================================================
; Game Engine Function: _ZN10CPlayerPed18DisbandPlayerGroupEv
; Address            : 0x4C9C7C - 0x4C9CDE
; =========================================================

4C9C7C:  PUSH            {R4,R5,R7,LR}
4C9C7E:  ADD             R7, SP, #8
4C9C80:  SUB             SP, SP, #0x10
4C9C82:  MOV             R4, R0
4C9C84:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C9C92)
4C9C86:  LDR.W           R0, [R4,#0x444]
4C9C8A:  MOV.W           R5, #0x2D4
4C9C8E:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C9C90:  LDR             R0, [R0,#0x38]
4C9C92:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C9C94:  MLA.W           R0, R0, R5, R1
4C9C98:  ADDS            R0, #8; this
4C9C9A:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
4C9C9E:  CMP             R0, #1
4C9CA0:  BLT             loc_4C9CC0
4C9CA2:  MOV.W           R0, #0
4C9CA6:  MOV.W           R2, #0; unsigned int
4C9CAA:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
4C9CAE:  MOV.W           R3, #0x3F800000; float
4C9CB2:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
4C9CB4:  ITE NE
4C9CB6:  MOVNE           R1, #0x95
4C9CB8:  MOVEQ           R1, #0x96; unsigned __int16
4C9CBA:  MOV             R0, R4; this
4C9CBC:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4C9CC0:  LDR.W           R0, [R4,#0x444]
4C9CC4:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C9CCC)
4C9CC6:  LDR             R0, [R0,#0x38]
4C9CC8:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C9CCA:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C9CCC:  MLA.W           R0, R0, R5, R1
4C9CD0:  MOVS            R1, #1; bool
4C9CD2:  ADDS            R0, #8; this
4C9CD4:  ADD             SP, SP, #0x10
4C9CD6:  POP.W           {R4,R5,R7,LR}
4C9CDA:  B.W             sub_19920C
