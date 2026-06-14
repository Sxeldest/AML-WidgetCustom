; =========================================================
; Game Engine Function: _ZN26CTaskComplexOpenDriverDoorC2EP8CVehicle
; Address            : 0x4F7088 - 0x4F70F8
; =========================================================

4F7088:  PUSH            {R4,R5,R7,LR}
4F708A:  ADD             R7, SP, #8
4F708C:  MOV             R5, R1
4F708E:  MOV             R4, R0
4F7090:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F7094:  MOVS            R1, #6
4F7096:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4F70B0)
4F7098:  STR             R1, [R4,#0x24]
4F709A:  MOVS            R1, #0
4F709C:  STRH            R1, [R4,#0x28]
4F709E:  VMOV.I32        Q8, #0
4F70A2:  STR             R1, [R4,#0x38]
4F70A4:  ADD.W           R2, R4, #0x14
4F70A8:  STRB.W          R1, [R4,#0x3C]
4F70AC:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4F70AE:  STR             R1, [R4,#0x40]
4F70B0:  CMP             R5, #0
4F70B2:  STRB.W          R1, [R4,#0x44]
4F70B6:  LDRB            R1, [R4,#0x10]
4F70B8:  VST1.32         {D16-D17}, [R2]
4F70BC:  MOVW            R2, #0
4F70C0:  AND.W           R1, R1, #0xF0
4F70C4:  MOVT            R2, #0xBF80
4F70C8:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4F70CA:  ORR.W           R1, R1, #3
4F70CE:  STR             R2, [R4,#0x48]
4F70D0:  STRB            R1, [R4,#0x10]
4F70D2:  MOV             R1, R4
4F70D4:  ADD.W           R0, R0, #8
4F70D8:  STR             R0, [R4]
4F70DA:  STR.W           R5, [R1,#0xC]!; CEntity **
4F70DE:  ITT NE
4F70E0:  MOVNE           R0, R5; this
4F70E2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F70E6:  LDR             R0, =(_ZTV26CTaskComplexOpenDriverDoor_ptr - 0x4F70F0)
4F70E8:  MOVS            R1, #0xA
4F70EA:  STR             R1, [R4,#0x1C]
4F70EC:  ADD             R0, PC; _ZTV26CTaskComplexOpenDriverDoor_ptr
4F70EE:  LDR             R0, [R0]; `vtable for'CTaskComplexOpenDriverDoor ...
4F70F0:  ADDS            R0, #8
4F70F2:  STR             R0, [R4]
4F70F4:  MOV             R0, R4
4F70F6:  POP             {R4,R5,R7,PC}
