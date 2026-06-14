; =========================================================
; Game Engine Function: _ZN20CTaskComplexStealCar14ControlSubTaskEP4CPed
; Address            : 0x4F886C - 0x4F88F6
; =========================================================

4F886C:  PUSH            {R4-R7,LR}
4F886E:  ADD             R7, SP, #0xC
4F8870:  PUSH.W          {R8}
4F8874:  MOV             R6, R0
4F8876:  MOV             R5, R1
4F8878:  LDR             R4, [R6,#8]
4F887A:  LDR             R0, [R4]
4F887C:  LDR             R1, [R0,#0x14]
4F887E:  MOV             R0, R4
4F8880:  BLX             R1
4F8882:  MOVW            R1, #0x2BD
4F8886:  CMP             R0, R1
4F8888:  BNE             loc_4F88EE
4F888A:  LDRB            R0, [R6,#0x18]
4F888C:  CBZ             R0, loc_4F88EE
4F888E:  LDRB            R0, [R6,#0x19]
4F8890:  CBZ             R0, loc_4F88A4
4F8892:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F889A)
4F8894:  MOVS            R1, #0
4F8896:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F8898:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F889A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F889C:  STRB            R1, [R6,#0x19]
4F889E:  STR             R0, [R6,#0x10]
4F88A0:  MOV             R1, R0
4F88A2:  B               loc_4F88AE
4F88A4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F88AC)
4F88A6:  LDR             R1, [R6,#0x10]
4F88A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F88AA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F88AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F88AE:  LDR             R2, [R6,#0x14]
4F88B0:  ADD             R1, R2
4F88B2:  CMP             R1, R0
4F88B4:  BHI             loc_4F88EE
4F88B6:  LDR             R0, [R6,#8]
4F88B8:  MOVS            R2, #1
4F88BA:  MOVS            R3, #0
4F88BC:  MOV.W           R8, #0
4F88C0:  LDR             R1, [R0]
4F88C2:  LDR             R6, [R1,#0x1C]
4F88C4:  MOV             R1, R5
4F88C6:  BLX             R6
4F88C8:  CMP             R0, #1
4F88CA:  BNE             loc_4F88EE
4F88CC:  MOVS            R0, #off_18; this
4F88CE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F88D2:  MOV             R4, R0
4F88D4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F88D8:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x4F88E2)
4F88DA:  STRH.W          R8, [R4,#0x10]
4F88DE:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4F88E0:  STR.W           R8, [R4,#0x14]
4F88E4:  STRD.W          R8, R8, [R4,#8]
4F88E8:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4F88EA:  ADDS            R0, #8
4F88EC:  STR             R0, [R4]
4F88EE:  MOV             R0, R4
4F88F0:  POP.W           {R8}
4F88F4:  POP             {R4-R7,PC}
