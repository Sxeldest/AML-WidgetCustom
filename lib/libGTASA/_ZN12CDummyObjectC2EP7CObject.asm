; =========================================================
; Game Engine Function: _ZN12CDummyObjectC2EP7CObject
; Address            : 0x4527A4 - 0x4527F2
; =========================================================

4527A4:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CDummyObject::CDummyObject(CObject *)'
4527A6:  ADD             R7, SP, #8
4527A8:  MOV             R5, R1
4527AA:  MOV             R4, R0
4527AC:  BLX             j__ZN6CDummyC2Ev; CDummy::CDummy(void)
4527B0:  LDR             R0, =(_ZTV12CDummyObject_ptr - 0x4527B6)
4527B2:  ADD             R0, PC; _ZTV12CDummyObject_ptr
4527B4:  LDR             R0, [R0]; `vtable for'CDummyObject ...
4527B6:  ADDS            R0, #8
4527B8:  STR             R0, [R4]
4527BA:  LDRSH.W         R1, [R5,#0x26]; unsigned int
4527BE:  MOV             R0, R4; this
4527C0:  BLX             j__ZN7CEntity21SetModelIndexNoCreateEj; CEntity::SetModelIndexNoCreate(uint)
4527C4:  LDR             R1, [R5,#0x18]
4527C6:  CMP             R1, #0
4527C8:  ITTT NE
4527CA:  MOVNE           R0, R4
4527CC:  MOVNE           R2, #1
4527CE:  BLXNE           j__ZN7CEntity16AttachToRwObjectEP8RwObjectb; CEntity::AttachToRwObject(RwObject *,bool)
4527D2:  MOV             R0, R5; this
4527D4:  BLX             j__ZN7CEntity18DetachFromRwObjectEv; CEntity::DetachFromRwObject(void)
4527D8:  LDRH.W          R0, [R5,#0x38]; this
4527DC:  STRH.W          R0, [R4,#0x38]
4527E0:  LDRB.W          R1, [R5,#0x33]
4527E4:  STRB.W          R1, [R4,#0x33]
4527E8:  MOV             R1, R4; int
4527EA:  BLX             j__ZN9CIplStore13IncludeEntityEiP7CEntity; CIplStore::IncludeEntity(int,CEntity *)
4527EE:  MOV             R0, R4
4527F0:  POP             {R4,R5,R7,PC}
