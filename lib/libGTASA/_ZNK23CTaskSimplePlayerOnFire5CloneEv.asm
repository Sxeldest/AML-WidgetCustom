; =========================================================
; Game Engine Function: _ZNK23CTaskSimplePlayerOnFire5CloneEv
; Address            : 0x4F3BD0 - 0x4F3BF4
; =========================================================

4F3BD0:  PUSH            {R7,LR}
4F3BD2:  MOV             R7, SP
4F3BD4:  MOVS            R0, #off_18; this
4F3BD6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3BDA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F3BDE:  LDR             R1, =(_ZTV23CTaskSimplePlayerOnFire_ptr - 0x4F3BE8)
4F3BE0:  MOVS            R2, #0
4F3BE2:  STRH            R2, [R0,#0x10]
4F3BE4:  ADD             R1, PC; _ZTV23CTaskSimplePlayerOnFire_ptr
4F3BE6:  STRB            R2, [R0,#0x14]
4F3BE8:  STRD.W          R2, R2, [R0,#8]
4F3BEC:  LDR             R1, [R1]; `vtable for'CTaskSimplePlayerOnFire ...
4F3BEE:  ADDS            R1, #8
4F3BF0:  STR             R1, [R0]
4F3BF2:  POP             {R7,PC}
