; =========================================================
; Game Engine Function: _ZN30CTaskComplexGetUpAndStandStill17CreateNextSubTaskEP4CPed
; Address            : 0x52B4D8 - 0x52B512
; =========================================================

52B4D8:  PUSH            {R4,R6,R7,LR}
52B4DA:  ADD             R7, SP, #8
52B4DC:  SUB             SP, SP, #8
52B4DE:  MOV             R4, R0
52B4E0:  LDR             R0, [R4,#8]
52B4E2:  LDR             R1, [R0]
52B4E4:  LDR             R1, [R1,#0x14]
52B4E6:  BLX             R1
52B4E8:  CMP             R0, #0xCD
52B4EA:  BNE             loc_52B50C
52B4EC:  LDR             R0, [R4,#8]
52B4EE:  LDRB            R0, [R0,#8]
52B4F0:  CBZ             R0, loc_52B50C
52B4F2:  MOVS            R0, #dword_20; this
52B4F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52B4F8:  MOV.W           R1, #0x41000000
52B4FC:  MOVS            R2, #0; bool
52B4FE:  STR             R1, [SP,#0x10+var_10]; float
52B500:  MOVS            R1, #0; int
52B502:  MOVS            R3, #0; bool
52B504:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
52B508:  ADD             SP, SP, #8
52B50A:  POP             {R4,R6,R7,PC}
52B50C:  MOVS            R0, #0
52B50E:  ADD             SP, SP, #8
52B510:  POP             {R4,R6,R7,PC}
