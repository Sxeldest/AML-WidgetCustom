; =========================================================
; Game Engine Function: _ZNK33CTaskComplexGoToBoatSteeringWheel5CloneEv
; Address            : 0x50737C - 0x5073B6
; =========================================================

50737C:  PUSH            {R4,R5,R7,LR}
50737E:  ADD             R7, SP, #8
507380:  MOV             R5, R0
507382:  MOVS            R0, #dword_24; this
507384:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
507388:  MOV             R4, R0
50738A:  LDR             R5, [R5,#0x18]
50738C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
507390:  LDR             R0, =(_ZTV33CTaskComplexGoToBoatSteeringWheel_ptr - 0x50739C)
507392:  MOVS            R1, #0
507394:  STRB            R1, [R4,#0x1C]
507396:  CMP             R5, #0
507398:  ADD             R0, PC; _ZTV33CTaskComplexGoToBoatSteeringWheel_ptr
50739A:  STR             R1, [R4,#0x20]
50739C:  MOV             R1, R4
50739E:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToBoatSteeringWheel ...
5073A0:  ADD.W           R0, R0, #8
5073A4:  STR             R0, [R4]
5073A6:  STR.W           R5, [R1,#0x18]!; CEntity **
5073AA:  ITT NE
5073AC:  MOVNE           R0, R5; this
5073AE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5073B2:  MOV             R0, R4
5073B4:  POP             {R4,R5,R7,PC}
