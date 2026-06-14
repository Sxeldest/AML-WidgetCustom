; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleGetUp5CloneEv
; Address            : 0x5328F4 - 0x532914
; =========================================================

5328F4:  PUSH            {R7,LR}
5328F6:  MOV             R7, SP
5328F8:  MOVS            R0, #word_10; this
5328FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5328FE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
532902:  LDR             R1, =(_ZTV16CTaskSimpleGetUp_ptr - 0x53290C)
532904:  MOVS            R2, #0
532906:  STRH            R2, [R0,#8]
532908:  ADD             R1, PC; _ZTV16CTaskSimpleGetUp_ptr
53290A:  STR             R2, [R0,#0xC]
53290C:  LDR             R1, [R1]; `vtable for'CTaskSimpleGetUp ...
53290E:  ADDS            R1, #8
532910:  STR             R1, [R0]
532912:  POP             {R7,PC}
