; =========================================================
; Game Engine Function: _ZNK22CTaskGangHassleVehicle5CloneEv
; Address            : 0x518560 - 0x5185C2
; =========================================================

518560:  PUSH            {R4-R7,LR}
518562:  ADD             R7, SP, #0xC
518564:  PUSH.W          {R8,R9,R11}
518568:  MOV             R6, R0
51856A:  MOVS            R0, #dword_44; this
51856C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
518570:  MOV             R4, R0
518572:  LDR             R5, [R6,#0x10]
518574:  LDRB.W          R8, [R6,#0x18]
518578:  LDRD.W          R9, R6, [R6,#0x1C]
51857C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
518580:  LDR             R0, =(_ZTV22CTaskGangHassleVehicle_ptr - 0x518590)
518582:  MOVS            R1, #0
518584:  MOV.W           R2, #0xFFFFFFFF
518588:  STRH.W          R1, [R4,#0x40]
51858C:  ADD             R0, PC; _ZTV22CTaskGangHassleVehicle_ptr
51858E:  STR             R2, [R4,#0x14]
518590:  STRD.W          R9, R6, [R4,#0x1C]
518594:  CMP             R5, #0
518596:  LDR             R0, [R0]; `vtable for'CTaskGangHassleVehicle ...
518598:  STRB.W          R8, [R4,#0x18]
51859C:  STRB.W          R1, [R4,#0x30]
5185A0:  ADD.W           R0, R0, #8
5185A4:  STRD.W          R1, R1, [R4,#0x34]
5185A8:  STR             R1, [R4,#0x3C]
5185AA:  MOV             R1, R4
5185AC:  STR             R0, [R4]
5185AE:  STR.W           R5, [R1,#0x10]!; CEntity **
5185B2:  ITT NE
5185B4:  MOVNE           R0, R5; this
5185B6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5185BA:  MOV             R0, R4
5185BC:  POP.W           {R8,R9,R11}
5185C0:  POP             {R4-R7,PC}
