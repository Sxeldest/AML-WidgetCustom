; =========================================================
; Game Engine Function: _ZN37CTaskSimpleCarWaitForDoorNotToBeInUseC2EP8CVehicleii
; Address            : 0x50229C - 0x5022DA
; =========================================================

50229C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarWaitForDoorNotToBeInUse::CTaskSimpleCarWaitForDoorNotToBeInUse(CVehicle *, int, int)'
50229E:  ADD             R7, SP, #0xC
5022A0:  PUSH.W          {R8}
5022A4:  MOV             R8, R3
5022A6:  MOV             R6, R2
5022A8:  MOV             R5, R1
5022AA:  MOV             R4, R0
5022AC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5022B0:  LDR             R0, =(_ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr - 0x5022BC)
5022B2:  MOV             R1, R4
5022B4:  STR             R6, [R4,#0xC]
5022B6:  CMP             R5, #0
5022B8:  ADD             R0, PC; _ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr
5022BA:  STR.W           R8, [R4,#0x10]
5022BE:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarWaitForDoorNotToBeInUse ...
5022C0:  ADD.W           R0, R0, #8
5022C4:  STR             R0, [R4]
5022C6:  STR.W           R5, [R1,#8]!; CEntity **
5022CA:  ITT NE
5022CC:  MOVNE           R0, R5; this
5022CE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5022D2:  MOV             R0, R4
5022D4:  POP.W           {R8}
5022D8:  POP             {R4-R7,PC}
