; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleCarFallOut5CloneEv
; Address            : 0x5072E0 - 0x50732A
; =========================================================

5072E0:  PUSH            {R4-R7,LR}
5072E2:  ADD             R7, SP, #0xC
5072E4:  PUSH.W          {R8}
5072E8:  MOV             R6, R0
5072EA:  MOVS            R0, #dword_1C; this
5072EC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5072F0:  LDRD.W          R5, R8, [R6,#0x10]
5072F4:  MOV             R4, R0
5072F6:  LDR             R6, [R6,#0x18]
5072F8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5072FC:  LDR             R0, =(_ZTV21CTaskSimpleCarFallOut_ptr - 0x507308)
5072FE:  MOVS            R1, #0
507300:  STRB            R1, [R4,#8]
507302:  CMP             R5, #0
507304:  ADD             R0, PC; _ZTV21CTaskSimpleCarFallOut_ptr
507306:  STR             R1, [R4,#0xC]
507308:  MOV             R1, R4
50730A:  STRD.W          R8, R6, [R4,#0x14]
50730E:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarFallOut ...
507310:  ADD.W           R0, R0, #8
507314:  STR             R0, [R4]
507316:  STR.W           R5, [R1,#0x10]!; CEntity **
50731A:  ITT NE
50731C:  MOVNE           R0, R5; this
50731E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
507322:  MOV             R0, R4
507324:  POP.W           {R8}
507328:  POP             {R4-R7,PC}
