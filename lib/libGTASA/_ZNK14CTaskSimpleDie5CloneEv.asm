; =========================================================
; Game Engine Function: _ZNK14CTaskSimpleDie5CloneEv
; Address            : 0x4F25C8 - 0x4F2640
; =========================================================

4F25C8:  PUSH            {R4-R7,LR}
4F25CA:  ADD             R7, SP, #0xC
4F25CC:  PUSH.W          {R8}
4F25D0:  VPUSH           {D8-D9}
4F25D4:  MOV             R4, R0
4F25D6:  MOVS            R0, #word_28; this
4F25D8:  LDR             R5, [R4,#0x10]
4F25DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F25DE:  CBZ             R5, loc_4F25F6
4F25E0:  VLDR            S16, [R4,#0x18]
4F25E4:  VLDR            S18, [R4,#0x1C]
4F25E8:  LDRD.W          R8, R5, [R4,#0x10]
4F25EC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F25F0:  MOVS            R4, #0xF
4F25F2:  MOVS            R6, #0
4F25F4:  B               loc_4F260C
4F25F6:  VLDR            S16, [R4,#0x18]
4F25FA:  VLDR            S18, [R4,#0x1C]
4F25FE:  LDRD.W          R6, R4, [R4,#8]
4F2602:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F2606:  MOV.W           R8, #0
4F260A:  MOVS            R5, #0
4F260C:  LDR             R1, =(_ZTV14CTaskSimpleDie_ptr - 0x4F2618)
4F260E:  MOVS            R3, #0
4F2610:  STRD.W          R6, R4, [R0,#8]
4F2614:  ADD             R1, PC; _ZTV14CTaskSimpleDie_ptr
4F2616:  STRD.W          R8, R5, [R0,#0x10]
4F261A:  VSTR            S16, [R0,#0x18]
4F261E:  VSTR            S18, [R0,#0x1C]
4F2622:  LDRB.W          R2, [R0,#0x20]
4F2626:  LDR             R1, [R1]; `vtable for'CTaskSimpleDie ...
4F2628:  STR             R3, [R0,#0x24]
4F262A:  AND.W           R2, R2, #0xFC
4F262E:  STRB.W          R2, [R0,#0x20]
4F2632:  ADDS            R1, #8
4F2634:  STR             R1, [R0]
4F2636:  VPOP            {D8-D9}
4F263A:  POP.W           {R8}
4F263E:  POP             {R4-R7,PC}
