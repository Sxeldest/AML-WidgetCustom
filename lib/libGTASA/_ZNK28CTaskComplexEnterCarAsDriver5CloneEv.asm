; =========================================================
; Game Engine Function: _ZNK28CTaskComplexEnterCarAsDriver5CloneEv
; Address            : 0x4FD428 - 0x4FD4AC
; =========================================================

4FD428:  PUSH            {R4-R7,LR}
4FD42A:  ADD             R7, SP, #0xC
4FD42C:  PUSH.W          {R11}
4FD430:  MOV             R4, R0
4FD432:  MOVS            R0, #dword_50; this
4FD434:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FD438:  MOV             R5, R0
4FD43A:  LDR             R6, [R4,#0xC]
4FD43C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FD440:  VMOV.I32        Q8, #0
4FD444:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4FD450)
4FD446:  ADD.W           R1, R5, #0x14
4FD44A:  CMP             R6, #0
4FD44C:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4FD44E:  VST1.32         {D16-D17}, [R1]
4FD452:  MOV.W           R1, #6
4FD456:  STR             R1, [R5,#0x24]
4FD458:  MOV.W           R1, #0
4FD45C:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4FD45E:  STRH            R1, [R5,#0x28]
4FD460:  STR             R1, [R5,#0x38]
4FD462:  ADD.W           R0, R0, #8
4FD466:  STRB.W          R1, [R5,#0x3C]
4FD46A:  STR             R1, [R5,#0x40]
4FD46C:  STRB.W          R1, [R5,#0x44]
4FD470:  MOVW            R1, #0
4FD474:  LDRB            R2, [R5,#0x10]
4FD476:  MOVT            R1, #0xBF80
4FD47A:  STR             R1, [R5,#0x48]
4FD47C:  MOV             R1, R5
4FD47E:  STR             R0, [R5]
4FD480:  AND.W           R0, R2, #0xF0
4FD484:  ORR.W           R0, R0, #1
4FD488:  STRB            R0, [R5,#0x10]
4FD48A:  STR.W           R6, [R1,#0xC]!; CEntity **
4FD48E:  ITT NE
4FD490:  MOVNE           R0, R6; this
4FD492:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FD496:  LDR             R0, =(_ZTV28CTaskComplexEnterCarAsDriver_ptr - 0x4FD49C)
4FD498:  ADD             R0, PC; _ZTV28CTaskComplexEnterCarAsDriver_ptr
4FD49A:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsDriver ...
4FD49C:  ADDS            R0, #8
4FD49E:  STR             R0, [R5]
4FD4A0:  LDR             R0, [R4,#0x24]
4FD4A2:  STR             R0, [R5,#0x24]
4FD4A4:  MOV             R0, R5
4FD4A6:  POP.W           {R11}
4FD4AA:  POP             {R4-R7,PC}
