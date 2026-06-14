; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleHitWall5CloneEv
; Address            : 0x497C50 - 0x497C86
; =========================================================

497C50:  PUSH            {R7,LR}
497C52:  MOV             R7, SP
497C54:  SUB             SP, SP, #0x10
497C56:  MOVS            R0, #dword_20; this
497C58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
497C5C:  LDR             R1, =(aHitwall - 0x497C68); "HitWall"
497C5E:  MOVS            R2, #0
497C60:  MOVW            R3, #0x19B
497C64:  ADD             R1, PC; "HitWall"
497C66:  STRD.W          R3, R1, [SP,#0x18+var_18]
497C6A:  MOVS            R1, #0
497C6C:  STR             R2, [SP,#0x18+var_10]
497C6E:  MOVS            R2, #0x26 ; '&'
497C70:  MOV.W           R3, #0x40800000
497C74:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
497C78:  LDR             R1, =(_ZTV18CTaskSimpleHitWall_ptr - 0x497C7E)
497C7A:  ADD             R1, PC; _ZTV18CTaskSimpleHitWall_ptr
497C7C:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitWall ...
497C7E:  ADDS            R1, #8
497C80:  STR             R1, [R0]
497C82:  ADD             SP, SP, #0x10
497C84:  POP             {R7,PC}
