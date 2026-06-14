; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleScratchHead5CloneEv
; Address            : 0x3578E0 - 0x357916
; =========================================================

3578E0:  PUSH            {R7,LR}
3578E2:  MOV             R7, SP
3578E4:  SUB             SP, SP, #0x10
3578E6:  MOVS            R0, #dword_20; this
3578E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3578EC:  LDR             R1, =(aScratchhead - 0x3578F8); "ScratchHead"
3578EE:  MOVS            R2, #0
3578F0:  MOVW            R3, #0x1A5
3578F4:  ADD             R1, PC; "ScratchHead"
3578F6:  STRD.W          R3, R1, [SP,#0x18+var_18]
3578FA:  MOVS            R1, #0
3578FC:  STR             R2, [SP,#0x18+var_10]
3578FE:  MOVS            R2, #0x87
357900:  MOV.W           R3, #0x40800000
357904:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
357908:  LDR             R1, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x35790E)
35790A:  ADD             R1, PC; _ZTV22CTaskSimpleScratchHead_ptr
35790C:  LDR             R1, [R1]; `vtable for'CTaskSimpleScratchHead ...
35790E:  ADDS            R1, #8
357910:  STR             R1, [R0]
357912:  ADD             SP, SP, #0x10
357914:  POP             {R7,PC}
