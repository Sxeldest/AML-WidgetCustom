; =========================================================
; Game Engine Function: _ZNK23CTaskSimpleHitFromRight5CloneEv
; Address            : 0x497644 - 0x49767A
; =========================================================

497644:  PUSH            {R7,LR}
497646:  MOV             R7, SP
497648:  SUB             SP, SP, #0x10
49764A:  MOVS            R0, #dword_20; this
49764C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
497650:  LDR             R1, =(aHitfromright - 0x49765C); "HitFromRight"
497652:  MOVS            R2, #0
497654:  MOV.W           R3, #0x196
497658:  ADD             R1, PC; "HitFromRight"
49765A:  STRD.W          R3, R1, [SP,#0x18+var_18]
49765E:  MOVS            R1, #0
497660:  STR             R2, [SP,#0x18+var_10]
497662:  MOVS            R2, #0x23 ; '#'
497664:  MOV.W           R3, #0x40800000
497668:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
49766C:  LDR             R1, =(_ZTV23CTaskSimpleHitFromRight_ptr - 0x497672)
49766E:  ADD             R1, PC; _ZTV23CTaskSimpleHitFromRight_ptr
497670:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitFromRight ...
497672:  ADDS            R1, #8
497674:  STR             R1, [R0]
497676:  ADD             SP, SP, #0x10
497678:  POP             {R7,PC}
