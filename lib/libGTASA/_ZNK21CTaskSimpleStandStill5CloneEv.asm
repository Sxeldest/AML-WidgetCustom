; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleStandStill5CloneEv
; Address            : 0x4F22E0 - 0x4F2318
; =========================================================

4F22E0:  PUSH            {R4-R7,LR}
4F22E2:  ADD             R7, SP, #0xC
4F22E4:  PUSH.W          {R11}
4F22E8:  MOV             R4, R0
4F22EA:  MOVS            R0, #dword_20; this
4F22EC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F22F0:  LDR             R5, [R4,#8]
4F22F2:  LDR             R6, [R4,#0x1C]
4F22F4:  LDRH            R4, [R4,#0x18]
4F22F6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F22FA:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4F2304)
4F22FC:  MOVS            R2, #0
4F22FE:  STR             R5, [R0,#8]
4F2300:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4F2302:  STRH            R2, [R0,#0x14]
4F2304:  STR             R6, [R0,#0x1C]
4F2306:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4F2308:  STRH            R4, [R0,#0x18]
4F230A:  STRD.W          R2, R2, [R0,#0xC]
4F230E:  ADDS            R1, #8
4F2310:  STR             R1, [R0]
4F2312:  POP.W           {R11}
4F2316:  POP             {R4-R7,PC}
