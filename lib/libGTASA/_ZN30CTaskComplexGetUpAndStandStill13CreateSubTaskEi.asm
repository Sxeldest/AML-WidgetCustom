; =========================================================
; Game Engine Function: _ZN30CTaskComplexGetUpAndStandStill13CreateSubTaskEi
; Address            : 0x52B488 - 0x52B4D4
; =========================================================

52B488:  PUSH            {R7,LR}
52B48A:  MOV             R7, SP
52B48C:  SUB             SP, SP, #8
52B48E:  CMP             R1, #0xCB
52B490:  BEQ             loc_52B4BA
52B492:  CMP             R1, #0xCD
52B494:  ITTT NE
52B496:  MOVNE           R0, #0
52B498:  ADDNE           SP, SP, #8
52B49A:  POPNE           {R7,PC}
52B49C:  MOVS            R0, #word_10; this
52B49E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52B4A2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52B4A6:  LDR             R1, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52B4B0)
52B4A8:  MOVS            R2, #0
52B4AA:  STRH            R2, [R0,#8]
52B4AC:  ADD             R1, PC; _ZTV16CTaskSimpleGetUp_ptr
52B4AE:  STR             R2, [R0,#0xC]
52B4B0:  LDR             R1, [R1]; `vtable for'CTaskSimpleGetUp ...
52B4B2:  ADDS            R1, #8; unsigned int
52B4B4:  STR             R1, [R0]
52B4B6:  ADD             SP, SP, #8
52B4B8:  POP             {R7,PC}
52B4BA:  MOVS            R0, #dword_20; this
52B4BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52B4C0:  MOV.W           R1, #0x41000000
52B4C4:  MOVS            R2, #0; bool
52B4C6:  STR             R1, [SP,#0x10+var_10]; float
52B4C8:  MOVS            R1, #0; int
52B4CA:  MOVS            R3, #0; bool
52B4CC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
52B4D0:  ADD             SP, SP, #8
52B4D2:  POP             {R7,PC}
