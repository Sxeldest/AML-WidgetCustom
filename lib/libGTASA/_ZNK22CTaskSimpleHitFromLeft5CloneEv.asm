; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleHitFromLeft5CloneEv
; Address            : 0x49750C - 0x497542
; =========================================================

49750C:  PUSH            {R7,LR}
49750E:  MOV             R7, SP
497510:  SUB             SP, SP, #0x10
497512:  MOVS            R0, #dword_20; this
497514:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
497518:  LDR             R1, =(aHitfromleft - 0x497524); "HitFromLeft"
49751A:  MOVS            R2, #0
49751C:  MOVW            R3, #0x195
497520:  ADD             R1, PC; "HitFromLeft"
497522:  STRD.W          R3, R1, [SP,#0x18+var_18]
497526:  MOVS            R1, #0
497528:  STR             R2, [SP,#0x18+var_10]
49752A:  MOVS            R2, #0x21 ; '!'
49752C:  MOV.W           R3, #0x40800000
497530:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
497534:  LDR             R1, =(_ZTV22CTaskSimpleHitFromLeft_ptr - 0x49753A)
497536:  ADD             R1, PC; _ZTV22CTaskSimpleHitFromLeft_ptr
497538:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitFromLeft ...
49753A:  ADDS            R1, #8
49753C:  STR             R1, [R0]
49753E:  ADD             SP, SP, #0x10
497540:  POP             {R7,PC}
