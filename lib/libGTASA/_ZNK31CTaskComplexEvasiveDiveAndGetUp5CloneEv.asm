; =========================================================
; Game Engine Function: _ZNK31CTaskComplexEvasiveDiveAndGetUp5CloneEv
; Address            : 0x50F230 - 0x50F286
; =========================================================

50F230:  PUSH            {R4-R7,LR}
50F232:  ADD             R7, SP, #0xC
50F234:  PUSH.W          {R8,R9,R11}
50F238:  MOV             R6, R0
50F23A:  MOVS            R0, #dword_24; this
50F23C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50F240:  LDRD.W          R5, R8, [R6,#0xC]
50F244:  MOV             R4, R0
50F246:  LDRB.W          R9, [R6,#0x20]
50F24A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50F24E:  LDR             R0, =(_ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr - 0x50F25C)
50F250:  MOV             R1, R4
50F252:  STR.W           R8, [R4,#0x10]
50F256:  CMP             R5, #0
50F258:  ADD             R0, PC; _ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr
50F25A:  LDR             R0, [R0]; `vtable for'CTaskComplexEvasiveDiveAndGetUp ...
50F25C:  ADD.W           R0, R0, #8
50F260:  STR             R0, [R4]
50F262:  STR.W           R5, [R1,#0xC]!; CEntity **
50F266:  VLDR            D16, [R6,#0x14]
50F26A:  LDR             R0, [R6,#0x1C]
50F26C:  STR             R0, [R4,#0x1C]
50F26E:  STRB.W          R9, [R4,#0x20]
50F272:  VSTR            D16, [R4,#0x14]
50F276:  ITT NE
50F278:  MOVNE           R0, R5; this
50F27A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50F27E:  MOV             R0, R4
50F280:  POP.W           {R8,R9,R11}
50F284:  POP             {R4-R7,PC}
