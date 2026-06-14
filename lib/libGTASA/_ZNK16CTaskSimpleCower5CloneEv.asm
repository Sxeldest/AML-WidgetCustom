; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleCower5CloneEv
; Address            : 0x357654 - 0x35768A
; =========================================================

357654:  PUSH            {R7,LR}
357656:  MOV             R7, SP
357658:  SUB             SP, SP, #0x10
35765A:  MOVS            R0, #dword_20; this
35765C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
357660:  LDR             R1, =(aCower - 0x35766C); "Cower"
357662:  MOVS            R2, #0
357664:  MOV.W           R3, #0x19C
357668:  ADD             R1, PC; "Cower"
35766A:  STRD.W          R3, R1, [SP,#0x18+var_18]
35766E:  MOVS            R1, #0
357670:  STR             R2, [SP,#0x18+var_10]
357672:  MOVS            R2, #0x8F
357674:  MOV.W           R3, #0x40800000
357678:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
35767C:  LDR             R1, =(_ZTV16CTaskSimpleCower_ptr - 0x357682)
35767E:  ADD             R1, PC; _ZTV16CTaskSimpleCower_ptr
357680:  LDR             R1, [R1]; `vtable for'CTaskSimpleCower ...
357682:  ADDS            R1, #8
357684:  STR             R1, [R0]
357686:  ADD             SP, SP, #0x10
357688:  POP             {R7,PC}
