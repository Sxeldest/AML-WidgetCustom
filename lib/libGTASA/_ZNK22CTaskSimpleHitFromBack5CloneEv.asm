; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleHitFromBack5CloneEv
; Address            : 0x4972A0 - 0x4972D6
; =========================================================

4972A0:  PUSH            {R7,LR}
4972A2:  MOV             R7, SP
4972A4:  SUB             SP, SP, #0x10
4972A6:  MOVS            R0, #dword_20; this
4972A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4972AC:  LDR             R1, =(aHitfromback - 0x4972B8); "HitFromBack"
4972AE:  MOVS            R2, #0
4972B0:  MOVW            R3, #0x193
4972B4:  ADD             R1, PC; "HitFromBack"
4972B6:  STRD.W          R3, R1, [SP,#0x18+var_18]
4972BA:  MOVS            R1, #0
4972BC:  STR             R2, [SP,#0x18+var_10]
4972BE:  MOVS            R2, #0x22 ; '"'
4972C0:  MOV.W           R3, #0x40800000
4972C4:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4972C8:  LDR             R1, =(_ZTV22CTaskSimpleHitFromBack_ptr - 0x4972CE)
4972CA:  ADD             R1, PC; _ZTV22CTaskSimpleHitFromBack_ptr
4972CC:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitFromBack ...
4972CE:  ADDS            R1, #8
4972D0:  STR             R1, [R0]
4972D2:  ADD             SP, SP, #0x10
4972D4:  POP             {R7,PC}
