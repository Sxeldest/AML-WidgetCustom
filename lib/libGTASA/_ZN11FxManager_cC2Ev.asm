; =========================================================
; Game Engine Function: _ZN11FxManager_cC2Ev
; Address            : 0x36D00C - 0x36D03E
; =========================================================

36D00C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxManager_c::FxManager_c(void)'
36D00E:  ADD             R7, SP, #8
36D010:  MOV             R4, R0
36D012:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
36D016:  ADD.W           R0, R4, #0xC; this
36D01A:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
36D01E:  ADD.W           R0, R4, #0x1C; this
36D022:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
36D026:  ADD.W           R0, R4, #0x34 ; '4'; this
36D02A:  BLX             j__ZN10FxSphere_cC2Ev; FxSphere_c::FxSphere_c(void)
36D02E:  ADD.W           R0, R4, #0xAC; this
36D032:  BLX             j__ZN14FxMemoryPool_cC2Ev; FxMemoryPool_c::FxMemoryPool_c(void)
36D036:  MOVS            R0, #0
36D038:  STR             R0, [R4,#0x18]
36D03A:  MOV             R0, R4
36D03C:  POP             {R4,R6,R7,PC}
