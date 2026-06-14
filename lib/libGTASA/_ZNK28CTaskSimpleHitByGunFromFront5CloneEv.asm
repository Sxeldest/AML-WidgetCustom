; =========================================================
; Game Engine Function: _ZNK28CTaskSimpleHitByGunFromFront5CloneEv
; Address            : 0x4978B0 - 0x4978E6
; =========================================================

4978B0:  PUSH            {R7,LR}
4978B2:  MOV             R7, SP
4978B4:  SUB             SP, SP, #0x10
4978B6:  MOVS            R0, #dword_20; this
4978B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4978BC:  LDR             R1, =(aHitbygunfromfr - 0x4978C8); "HitByGunFromFront"
4978BE:  MOVS            R2, #0
4978C0:  MOV.W           R3, #0x198
4978C4:  ADD             R1, PC; "HitByGunFromFront"
4978C6:  STRD.W          R3, R1, [SP,#0x18+var_18]
4978CA:  MOVS            R1, #0
4978CC:  STR             R2, [SP,#0x18+var_10]
4978CE:  MOVS            R2, #0x1C
4978D0:  MOV.W           R3, #0x40800000
4978D4:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4978D8:  LDR             R1, =(_ZTV28CTaskSimpleHitByGunFromFront_ptr - 0x4978DE)
4978DA:  ADD             R1, PC; _ZTV28CTaskSimpleHitByGunFromFront_ptr
4978DC:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitByGunFromFront ...
4978DE:  ADDS            R1, #8
4978E0:  STR             R1, [R0]
4978E2:  ADD             SP, SP, #0x10
4978E4:  POP             {R7,PC}
