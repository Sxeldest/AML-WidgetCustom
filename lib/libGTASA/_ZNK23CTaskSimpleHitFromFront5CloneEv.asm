; =========================================================
; Game Engine Function: _ZNK23CTaskSimpleHitFromFront5CloneEv
; Address            : 0x4973D8 - 0x49740E
; =========================================================

4973D8:  PUSH            {R7,LR}
4973DA:  MOV             R7, SP
4973DC:  SUB             SP, SP, #0x10
4973DE:  MOVS            R0, #dword_20; this
4973E0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4973E4:  LDR             R1, =(aHitfromfront - 0x4973F0); "HitFromFront"
4973E6:  MOVS            R2, #0
4973E8:  MOV.W           R3, #0x194
4973EC:  ADD             R1, PC; "HitFromFront"
4973EE:  STRD.W          R3, R1, [SP,#0x18+var_18]
4973F2:  MOVS            R1, #0
4973F4:  STR             R2, [SP,#0x18+var_10]
4973F6:  MOVS            R2, #0x20 ; ' '
4973F8:  MOV.W           R3, #0x40800000
4973FC:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
497400:  LDR             R1, =(_ZTV23CTaskSimpleHitFromFront_ptr - 0x497406)
497402:  ADD             R1, PC; _ZTV23CTaskSimpleHitFromFront_ptr
497404:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitFromFront ...
497406:  ADDS            R1, #8
497408:  STR             R1, [R0]
49740A:  ADD             SP, SP, #0x10
49740C:  POP             {R7,PC}
