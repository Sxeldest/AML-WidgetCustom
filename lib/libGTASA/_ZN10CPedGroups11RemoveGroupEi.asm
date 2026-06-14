; =========================================================
; Game Engine Function: _ZN10CPedGroups11RemoveGroupEi
; Address            : 0x4B72F0 - 0x4B7334
; =========================================================

4B72F0:  LDR             R1, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B72F6)
4B72F2:  ADD             R1, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B72F4:  LDR             R1, [R1]; CPedGroups::ms_activeGroups ...
4B72F6:  LDRB            R1, [R1,R0]
4B72F8:  CMP             R1, #0
4B72FA:  IT EQ
4B72FC:  BXEQ            LR
4B72FE:  PUSH            {R4,R5,R7,LR}
4B7300:  ADD             R7, SP, #0x10+var_8
4B7302:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B7310)
4B7304:  MOV.W           R3, #0x2D4
4B7308:  LDR             R2, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7312)
4B730A:  MOVS            R5, #0
4B730C:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B730E:  ADD             R2, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7310:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B7312:  MLA.W           R4, R0, R3, R1
4B7316:  LDR             R1, [R2]; CPedGroups::ms_activeGroups ...
4B7318:  STRB            R5, [R1,R0]
4B731A:  ADD.W           R0, R4, #8; this
4B731E:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B7322:  ADD.W           R0, R4, #0x30 ; '0'; this
4B7326:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B732A:  STRB.W          R5, [R4,#0x2D0]
4B732E:  POP.W           {R4,R5,R7,LR}
4B7332:  BX              LR
