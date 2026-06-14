; =========================================================
; Game Engine Function: _ZN27CTaskComplexGotoDoorAndOpenC2EP7CObject
; Address            : 0x525988 - 0x5259CC
; =========================================================

525988:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexGotoDoorAndOpen::CTaskComplexGotoDoorAndOpen(CObject *)'
52598A:  ADD             R7, SP, #8
52598C:  MOV             R5, R1
52598E:  MOV             R4, R0
525990:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
525994:  LDR             R0, =(_ZTV27CTaskComplexGotoDoorAndOpen_ptr - 0x5259A2)
525996:  MOVS            R2, #0
525998:  LDRB.W          R1, [R4,#0x34]
52599C:  CMP             R5, #0
52599E:  ADD             R0, PC; _ZTV27CTaskComplexGotoDoorAndOpen_ptr
5259A0:  STRH            R2, [R4,#0x30]
5259A2:  AND.W           R1, R1, #0xF0
5259A6:  STRD.W          R2, R2, [R4,#0x28]
5259AA:  LDR             R0, [R0]; `vtable for'CTaskComplexGotoDoorAndOpen ...
5259AC:  ORR.W           R1, R1, #1
5259B0:  STRB.W          R1, [R4,#0x34]
5259B4:  MOV             R1, R4
5259B6:  ADD.W           R0, R0, #8
5259BA:  STR             R0, [R4]
5259BC:  STR.W           R5, [R1,#0xC]!; CEntity **
5259C0:  ITT NE
5259C2:  MOVNE           R0, R5; this
5259C4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5259C8:  MOV             R0, R4
5259CA:  POP             {R4,R5,R7,PC}
