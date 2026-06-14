; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleDrown5CloneEv
; Address            : 0x4F2838 - 0x4F2880
; =========================================================

4F2838:  PUSH            {R7,LR}
4F283A:  MOV             R7, SP
4F283C:  MOVS            R0, #word_2C; this
4F283E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2842:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F2846:  LDR.W           R12, =(_ZTV16CTaskSimpleDrown_ptr - 0x4F285A)
4F284A:  MOVS            R2, #0x8C
4F284C:  MOVS            R3, #0
4F284E:  MOV.W           R1, #0x40800000
4F2852:  STRD.W          R3, R2, [R0,#8]
4F2856:  ADD             R12, PC; _ZTV16CTaskSimpleDrown_ptr
4F2858:  STRD.W          R3, R3, [R0,#0x10]
4F285C:  MOVS            R2, #1
4F285E:  STRD.W          R1, R3, [R0,#0x18]
4F2862:  STR             R3, [R0,#0x24]
4F2864:  LDRB.W          R1, [R0,#0x20]
4F2868:  STRB.W          R2, [R0,#0x28]
4F286C:  LDR.W           R2, [R12]; `vtable for'CTaskSimpleDrown ...
4F2870:  AND.W           R1, R1, #0xFC
4F2874:  STRB.W          R1, [R0,#0x20]
4F2878:  ADD.W           R1, R2, #8
4F287C:  STR             R1, [R0]
4F287E:  POP             {R7,PC}
