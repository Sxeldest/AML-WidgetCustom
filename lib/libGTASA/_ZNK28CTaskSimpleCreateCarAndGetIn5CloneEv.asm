; =========================================================
; Game Engine Function: _ZNK28CTaskSimpleCreateCarAndGetIn5CloneEv
; Address            : 0x507404 - 0x50743A
; =========================================================

507404:  PUSH            {R4,R5,R7,LR}
507406:  ADD             R7, SP, #8
507408:  MOV             R4, R0
50740A:  MOVS            R0, #dword_34; this
50740C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
507410:  LDR             R5, [R4,#0x14]
507412:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
507416:  LDR             R1, =(_ZTV28CTaskSimpleCreateCarAndGetIn_ptr - 0x50741E)
507418:  MOVS            R2, #0
50741A:  ADD             R1, PC; _ZTV28CTaskSimpleCreateCarAndGetIn_ptr
50741C:  LDR             R1, [R1]; `vtable for'CTaskSimpleCreateCarAndGetIn ...
50741E:  ADDS            R1, #8
507420:  STR             R1, [R0]
507422:  VLDR            D16, [R4,#8]
507426:  LDR             R1, [R4,#0x10]
507428:  STRD.W          R1, R5, [R0,#0x10]
50742C:  STR             R2, [R0,#0x18]
50742E:  STRD.W          R2, R2, [R0,#0x28]
507432:  STRH            R2, [R0,#0x30]
507434:  VSTR            D16, [R0,#8]
507438:  POP             {R4,R5,R7,PC}
