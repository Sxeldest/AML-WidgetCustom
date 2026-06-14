; =========================================================
; Game Engine Function: _ZNK27CTaskSimpleHitByGunFromLeft5CloneEv
; Address            : 0x4979E4 - 0x497A1A
; =========================================================

4979E4:  PUSH            {R7,LR}
4979E6:  MOV             R7, SP
4979E8:  SUB             SP, SP, #0x10
4979EA:  MOVS            R0, #dword_20; this
4979EC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4979F0:  LDR             R1, =(aHitbygunfromle - 0x4979FC); "HitByGunFromLeft"
4979F2:  MOVS            R2, #0
4979F4:  MOVW            R3, #0x199
4979F8:  ADD             R1, PC; "HitByGunFromLeft"
4979FA:  STRD.W          R3, R1, [SP,#0x18+var_18]
4979FE:  MOVS            R1, #0
497A00:  STR             R2, [SP,#0x18+var_10]
497A02:  MOVS            R2, #0x1D
497A04:  MOV.W           R3, #0x40800000
497A08:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
497A0C:  LDR             R1, =(_ZTV27CTaskSimpleHitByGunFromLeft_ptr - 0x497A12)
497A0E:  ADD             R1, PC; _ZTV27CTaskSimpleHitByGunFromLeft_ptr
497A10:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitByGunFromLeft ...
497A12:  ADDS            R1, #8
497A14:  STR             R1, [R0]
497A16:  ADD             SP, SP, #0x10
497A18:  POP             {R7,PC}
