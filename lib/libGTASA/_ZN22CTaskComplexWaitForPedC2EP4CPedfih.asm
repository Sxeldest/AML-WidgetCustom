; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForPedC2EP4CPedfih
; Address            : 0x5362CC - 0x536310
; =========================================================

5362CC:  PUSH            {R4-R7,LR}
5362CE:  ADD             R7, SP, #0xC
5362D0:  PUSH.W          {R8}
5362D4:  MOV             R8, R3
5362D6:  MOV             R5, R2
5362D8:  MOV             R6, R1
5362DA:  MOV             R4, R0
5362DC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5362E0:  LDR             R0, =(_ZTV22CTaskComplexWaitForPed_ptr - 0x5362EA)
5362E2:  MOVS            R2, #0
5362E4:  LDR             R1, [R7,#arg_0]
5362E6:  ADD             R0, PC; _ZTV22CTaskComplexWaitForPed_ptr
5362E8:  STRH            R2, [R4,#0x24]
5362EA:  STR             R5, [R4,#0x10]
5362EC:  LDR             R0, [R0]; `vtable for'CTaskComplexWaitForPed ...
5362EE:  STR.W           R8, [R4,#0x14]
5362F2:  STRB            R1, [R4,#0x18]
5362F4:  MOV             R1, R4
5362F6:  STRD.W          R2, R2, [R4,#0x1C]
5362FA:  ADDS            R0, #8
5362FC:  STR             R0, [R4]
5362FE:  MOV             R0, R6; this
536300:  STR.W           R6, [R1,#0xC]!; CEntity **
536304:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
536308:  MOV             R0, R4
53630A:  POP.W           {R8}
53630E:  POP             {R4-R7,PC}
