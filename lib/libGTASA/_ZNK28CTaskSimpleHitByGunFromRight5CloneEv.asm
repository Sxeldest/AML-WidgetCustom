; =========================================================
; Game Engine Function: _ZNK28CTaskSimpleHitByGunFromRight5CloneEv
; Address            : 0x497B1C - 0x497B52
; =========================================================

497B1C:  PUSH            {R7,LR}
497B1E:  MOV             R7, SP
497B20:  SUB             SP, SP, #0x10
497B22:  MOVS            R0, #dword_20; this
497B24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
497B28:  LDR             R1, =(aHitbygunfromri - 0x497B34); "HitByGunFromRight"
497B2A:  MOVS            R2, #0
497B2C:  MOV.W           R3, #0x19A
497B30:  ADD             R1, PC; "HitByGunFromRight"
497B32:  STRD.W          R3, R1, [SP,#0x18+var_18]
497B36:  MOVS            R1, #0
497B38:  STR             R2, [SP,#0x18+var_10]
497B3A:  MOVS            R2, #0x1F
497B3C:  MOV.W           R3, #0x40800000
497B40:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
497B44:  LDR             R1, =(_ZTV28CTaskSimpleHitByGunFromRight_ptr - 0x497B4A)
497B46:  ADD             R1, PC; _ZTV28CTaskSimpleHitByGunFromRight_ptr
497B48:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitByGunFromRight ...
497B4A:  ADDS            R1, #8
497B4C:  STR             R1, [R0]
497B4E:  ADD             SP, SP, #0x10
497B50:  POP             {R7,PC}
