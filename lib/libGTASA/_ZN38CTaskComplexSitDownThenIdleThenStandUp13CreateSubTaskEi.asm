; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUp13CreateSubTaskEi
; Address            : 0x4EC964 - 0x4EC9EE
; =========================================================

4EC964:  PUSH            {R4-R7,LR}
4EC966:  ADD             R7, SP, #0xC
4EC968:  PUSH.W          {R11}
4EC96C:  MOV             R5, R0
4EC96E:  MOVS            R4, #0
4EC970:  CMP             R1, #0xDE
4EC972:  BEQ             loc_4EC99A
4EC974:  CMP             R1, #0xDD
4EC976:  BEQ             loc_4EC9BA
4EC978:  CMP             R1, #0xDC
4EC97A:  BNE             loc_4EC9E6
4EC97C:  MOVS            R0, #word_10; this
4EC97E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC982:  MOV             R4, R0
4EC984:  LDRB            R5, [R5,#0x10]
4EC986:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC98A:  LDR             R0, =(_ZTV18CTaskSimpleSitDown_ptr - 0x4EC994)
4EC98C:  MOVS            R1, #0; unsigned int
4EC98E:  STRB            R5, [R4,#8]
4EC990:  ADD             R0, PC; _ZTV18CTaskSimpleSitDown_ptr
4EC992:  STRB            R1, [R4,#9]
4EC994:  STR             R1, [R4,#0xC]
4EC996:  LDR             R0, [R0]; `vtable for'CTaskSimpleSitDown ...
4EC998:  B               loc_4EC9E2
4EC99A:  MOVS            R0, #word_10; this
4EC99C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC9A0:  LDRB            R5, [R5,#0x10]
4EC9A2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC9A6:  LDR             R1, =(_ZTV18CTaskSimpleStandUp_ptr - 0x4EC9AE)
4EC9A8:  STRB            R5, [R0,#8]
4EC9AA:  ADD             R1, PC; _ZTV18CTaskSimpleStandUp_ptr
4EC9AC:  STRB            R4, [R0,#9]
4EC9AE:  STR             R4, [R0,#0xC]
4EC9B0:  MOV             R4, R0
4EC9B2:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandUp ...
4EC9B4:  ADDS            R1, #8; unsigned int
4EC9B6:  STR             R1, [R0]
4EC9B8:  B               loc_4EC9E6
4EC9BA:  MOVS            R0, #dword_20; this
4EC9BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC9C0:  LDR             R6, [R5,#0xC]
4EC9C2:  MOV             R4, R0
4EC9C4:  LDRB            R5, [R5,#0x10]
4EC9C6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC9CA:  LDR             R0, =(_ZTV18CTaskSimpleSitIdle_ptr - 0x4EC9D4)
4EC9CC:  MOVS            R1, #0
4EC9CE:  STRB            R5, [R4,#8]
4EC9D0:  ADD             R0, PC; _ZTV18CTaskSimpleSitIdle_ptr
4EC9D2:  STR             R6, [R4,#0xC]
4EC9D4:  STR.W           R1, [R4,#0x1A]
4EC9D8:  STR.W           R1, [R4,#0x16]
4EC9DC:  LDR             R0, [R0]; `vtable for'CTaskSimpleSitIdle ...
4EC9DE:  STRD.W          R1, R1, [R4,#0x10]
4EC9E2:  ADDS            R0, #8
4EC9E4:  STR             R0, [R4]
4EC9E6:  MOV             R0, R4
4EC9E8:  POP.W           {R11}
4EC9EC:  POP             {R4-R7,PC}
