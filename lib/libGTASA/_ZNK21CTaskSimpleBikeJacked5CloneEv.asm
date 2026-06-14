; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleBikeJacked5CloneEv
; Address            : 0x507260 - 0x5072D2
; =========================================================

507260:  PUSH            {R4-R7,LR}
507262:  ADD             R7, SP, #0xC
507264:  PUSH.W          {R8-R10}
507268:  MOV             R6, R0
50726A:  MOVS            R0, #word_2C; this
50726C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
507270:  ADD.W           R10, R6, #0x14
507274:  MOV             R4, R0
507276:  LDM.W           R10, {R8-R10}
50727A:  LDR             R5, [R6,#0x20]
50727C:  LDRB.W          R6, [R6,#0x24]
507280:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
507284:  LDR             R0, =(_ZTV21CTaskSimpleBikeJacked_ptr - 0x507290)
507286:  MOVS            R2, #0
507288:  MOVS            R1, #0xBF
50728A:  STRB            R2, [R4,#8]
50728C:  ADD             R0, PC; _ZTV21CTaskSimpleBikeJacked_ptr
50728E:  STRD.W          R2, R1, [R4,#0xC]
507292:  STRD.W          R9, R10, [R4,#0x18]
507296:  MOV             R1, R4
507298:  LDR             R0, [R0]; `vtable for'CTaskSimpleBikeJacked ...
50729A:  CMP.W           R8, #0
50729E:  STRB.W          R6, [R4,#0x24]
5072A2:  MOV             R6, R4
5072A4:  STR             R2, [R4,#0x28]
5072A6:  ADD.W           R0, R0, #8
5072AA:  STR             R0, [R4]
5072AC:  STR.W           R5, [R6,#0x20]!
5072B0:  STR.W           R8, [R1,#0x14]!; CEntity **
5072B4:  BEQ             loc_5072BE
5072B6:  MOV             R0, R8; this
5072B8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5072BC:  LDR             R5, [R6]
5072BE:  CMP             R5, #0
5072C0:  ITTT NE
5072C2:  MOVNE           R0, R5; this
5072C4:  MOVNE           R1, R6; CEntity **
5072C6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5072CA:  MOV             R0, R4
5072CC:  POP.W           {R8-R10}
5072D0:  POP             {R4-R7,PC}
