; =========================================================
; Game Engine Function: _ZNK27CTaskSimpleHitByGunFromRear5CloneEv
; Address            : 0x497778 - 0x4977AE
; =========================================================

497778:  PUSH            {R7,LR}
49777A:  MOV             R7, SP
49777C:  SUB             SP, SP, #0x10
49777E:  MOVS            R0, #dword_20; this
497780:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
497784:  LDR             R1, =(aHitbygunfromre - 0x497790); "HitByGunFromRear"
497786:  MOVS            R2, #0
497788:  MOVW            R3, #0x197
49778C:  ADD             R1, PC; "HitByGunFromRear"
49778E:  STRD.W          R3, R1, [SP,#0x18+var_18]
497792:  MOVS            R1, #0
497794:  STR             R2, [SP,#0x18+var_10]
497796:  MOVS            R2, #0x1E
497798:  MOV.W           R3, #0x40800000
49779C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4977A0:  LDR             R1, =(_ZTV27CTaskSimpleHitByGunFromRear_ptr - 0x4977A6)
4977A2:  ADD             R1, PC; _ZTV27CTaskSimpleHitByGunFromRear_ptr
4977A4:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitByGunFromRear ...
4977A6:  ADDS            R1, #8
4977A8:  STR             R1, [R0]
4977AA:  ADD             SP, SP, #0x10
4977AC:  POP             {R7,PC}
