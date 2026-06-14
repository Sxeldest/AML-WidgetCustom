; =========================================================
; Game Engine Function: _ZN9CPedGroupD2Ev
; Address            : 0x4B6D02 - 0x4B6D1C
; =========================================================

4B6D02:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CPedGroup::~CPedGroup()'
4B6D04:  ADD             R7, SP, #8
4B6D06:  MOV             R4, R0
4B6D08:  ADD.W           R0, R4, #0x30 ; '0'; this
4B6D0C:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B6D10:  ADD.W           R0, R4, #8; this
4B6D14:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B6D18:  MOV             R0, R4
4B6D1A:  POP             {R4,R6,R7,PC}
