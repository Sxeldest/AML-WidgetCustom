; =========================================================
; Game Engine Function: _ZN10CPedGroups27RemoveAllFollowersFromGroupEi
; Address            : 0x4B7340 - 0x4B7364
; =========================================================

4B7340:  LDR             R1, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7346)
4B7342:  ADD             R1, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7344:  LDR             R1, [R1]; CPedGroups::ms_activeGroups ...
4B7346:  LDRB            R1, [R1,R0]
4B7348:  CMP             R1, #0
4B734A:  IT EQ
4B734C:  BXEQ            LR
4B734E:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B7358)
4B7350:  MOV.W           R2, #0x2D4
4B7354:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B7356:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B7358:  MLA.W           R0, R0, R2, R1
4B735C:  MOVS            R1, #0; bool
4B735E:  ADDS            R0, #8; this
4B7360:  B.W             _ZN19CPedGroupMembership18RemoveAllFollowersEb; CPedGroupMembership::RemoveAllFollowers(bool)
