; =========================================================
; Game Engine Function: _ZNK19CTaskSimpleDieInCar5CloneEv
; Address            : 0x4F2648 - 0x4F2688
; =========================================================

4F2648:  PUSH            {R4,R5,R7,LR}
4F264A:  ADD             R7, SP, #8
4F264C:  MOV             R4, R0
4F264E:  MOVS            R0, #word_28; this
4F2650:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2654:  LDRD.W          R5, R4, [R4,#8]
4F2658:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F265C:  LDR             R1, =(_ZTV19CTaskSimpleDieInCar_ptr - 0x4F266C)
4F265E:  MOVS            R2, #0
4F2660:  MOV.W           R3, #0x40800000
4F2664:  STRD.W          R5, R4, [R0,#8]
4F2668:  ADD             R1, PC; _ZTV19CTaskSimpleDieInCar_ptr
4F266A:  STRD.W          R2, R2, [R0,#0x10]
4F266E:  STRD.W          R3, R2, [R0,#0x18]
4F2672:  LDR             R1, [R1]; `vtable for'CTaskSimpleDieInCar ...
4F2674:  STR             R2, [R0,#0x24]
4F2676:  LDRB.W          R2, [R0,#0x20]
4F267A:  ADDS            R1, #8
4F267C:  STR             R1, [R0]
4F267E:  AND.W           R1, R2, #0xFC
4F2682:  STRB.W          R1, [R0,#0x20]
4F2686:  POP             {R4,R5,R7,PC}
