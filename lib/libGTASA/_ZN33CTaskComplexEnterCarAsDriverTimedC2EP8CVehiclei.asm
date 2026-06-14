; =========================================================
; Game Engine Function: _ZN33CTaskComplexEnterCarAsDriverTimedC2EP8CVehiclei
; Address            : 0x4F7398 - 0x4F73DE
; =========================================================

4F7398:  PUSH            {R4-R7,LR}
4F739A:  ADD             R7, SP, #0xC
4F739C:  PUSH.W          {R11}
4F73A0:  MOV             R6, R2
4F73A2:  MOV             R5, R1
4F73A4:  MOV             R4, R0
4F73A6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F73AA:  LDR             R0, =(_ZTV33CTaskComplexEnterCarAsDriverTimed_ptr - 0x4F73B6)
4F73AC:  MOVS            R1, #6
4F73AE:  STR             R6, [R4,#0x10]
4F73B0:  CMP             R5, #0
4F73B2:  ADD             R0, PC; _ZTV33CTaskComplexEnterCarAsDriverTimed_ptr
4F73B4:  STR             R1, [R4,#0x14]
4F73B6:  MOV.W           R1, #0
4F73BA:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsDriverTimed ...
4F73BC:  STRH            R1, [R4,#0x20]
4F73BE:  STRD.W          R1, R1, [R4,#0x18]
4F73C2:  MOV             R1, R4
4F73C4:  ADD.W           R0, R0, #8
4F73C8:  STR             R0, [R4]
4F73CA:  STR.W           R5, [R1,#0xC]!; CEntity **
4F73CE:  ITT NE
4F73D0:  MOVNE           R0, R5; this
4F73D2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F73D6:  MOV             R0, R4
4F73D8:  POP.W           {R11}
4F73DC:  POP             {R4-R7,PC}
