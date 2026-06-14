; =========================================================
; Game Engine Function: _ZNK21CTaskInteriorLieInBed5CloneEv
; Address            : 0x52A314 - 0x52A36E
; =========================================================

52A314:  PUSH            {R4-R7,LR}
52A316:  ADD             R7, SP, #0xC
52A318:  PUSH.W          {R8}
52A31C:  MOV             R4, R0
52A31E:  MOVS            R0, #word_30; this
52A320:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52A324:  LDRD.W          R5, R6, [R4,#8]
52A328:  LDRB.W          R8, [R4,#0x11]
52A32C:  LDRB            R4, [R4,#0x10]
52A32E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52A332:  LDR             R1, =(_ZTV21CTaskInteriorLieInBed_ptr - 0x52A33E)
52A334:  MOVS            R2, #0
52A336:  STRH            R2, [R0,#0x24]
52A338:  CMP             R4, #0
52A33A:  ADD             R1, PC; _ZTV21CTaskInteriorLieInBed_ptr
52A33C:  STRD.W          R5, R6, [R0,#8]
52A340:  MOVW            R6, #0x151
52A344:  MOV.W           R3, #0xFFFFFFFF
52A348:  LDR             R1, [R1]; `vtable for'CTaskInteriorLieInBed ...
52A34A:  IT NE
52A34C:  MOVNE.W         R6, #0x154
52A350:  STR             R6, [R0,#0x2C]
52A352:  STRB.W          R8, [R0,#0x11]
52A356:  ADDS            R1, #8
52A358:  STRH            R2, [R0,#0x28]
52A35A:  STRB.W          R2, [R0,#0x2A]
52A35E:  STRD.W          R2, R3, [R0,#0x14]
52A362:  STRD.W          R2, R2, [R0,#0x1C]
52A366:  STR             R1, [R0]
52A368:  POP.W           {R8}
52A36C:  POP             {R4-R7,PC}
