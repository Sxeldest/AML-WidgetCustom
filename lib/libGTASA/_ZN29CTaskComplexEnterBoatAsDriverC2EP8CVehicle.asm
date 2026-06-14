; =========================================================
; Game Engine Function: _ZN29CTaskComplexEnterBoatAsDriverC2EP8CVehicle
; Address            : 0x4F8368 - 0x4F8394
; =========================================================

4F8368:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexEnterBoatAsDriver::CTaskComplexEnterBoatAsDriver(CVehicle *)'
4F836A:  ADD             R7, SP, #8
4F836C:  MOV             R5, R1
4F836E:  MOV             R4, R0
4F8370:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F8374:  LDR             R0, =(_ZTV29CTaskComplexEnterBoatAsDriver_ptr - 0x4F837E)
4F8376:  MOV             R1, R4
4F8378:  CMP             R5, #0
4F837A:  ADD             R0, PC; _ZTV29CTaskComplexEnterBoatAsDriver_ptr
4F837C:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterBoatAsDriver ...
4F837E:  ADD.W           R0, R0, #8
4F8382:  STR.W           R0, [R1],#0xC; CEntity **
4F8386:  STR             R5, [R1]
4F8388:  ITT NE
4F838A:  MOVNE           R0, R5; this
4F838C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F8390:  MOV             R0, R4
4F8392:  POP             {R4,R5,R7,PC}
