; =========================================================
; Game Engine Function: _ZN19CPedGroupMembershipC2ERKS_
; Address            : 0x4B1B4C - 0x4B1B5A
; =========================================================

4B1B4C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CPedGroupMembership::CPedGroupMembership(CPedGroupMembership const&)'
4B1B4E:  ADD             R7, SP, #8
4B1B50:  MOV             R4, R0
4B1B52:  BLX             j__ZN19CPedGroupMembership4FromERKS_; CPedGroupMembership::From(CPedGroupMembership const&)
4B1B56:  MOV             R0, R4
4B1B58:  POP             {R4,R6,R7,PC}
