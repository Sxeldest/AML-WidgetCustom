; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleHandsUp5CloneEv
; Address            : 0x357718 - 0x35775E
; =========================================================

357718:  PUSH            {R4,R6,R7,LR}
35771A:  ADD             R7, SP, #8
35771C:  SUB             SP, SP, #0x18
35771E:  MOV             R4, R0
357720:  MOVS            R0, #dword_34; this
357722:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
357726:  LDR.W           R12, =(aHandsup - 0x357736); "HandsUp"
35772A:  MOVS            R2, #0
35772C:  LDR             R1, [R4,#0x20]
35772E:  MOVT            R2, #0xC080
357732:  ADD             R12, PC; "HandsUp"
357734:  MOVS            R3, #0
357736:  MOVW            R4, #0x19D
35773A:  STRD.W          R2, R1, [SP,#0x20+var_20]; float
35773E:  MOVS            R1, #0; int
357740:  STRD.W          R4, R12, [SP,#0x20+var_18]; int
357744:  MOVS            R2, #0x8E; int
357746:  STR             R3, [SP,#0x20+var_10]; int
357748:  MOV.W           R3, #0x40800000; int
35774C:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
357750:  LDR             R1, =(_ZTV18CTaskSimpleHandsUp_ptr - 0x357756)
357752:  ADD             R1, PC; _ZTV18CTaskSimpleHandsUp_ptr
357754:  LDR             R1, [R1]; `vtable for'CTaskSimpleHandsUp ...
357756:  ADDS            R1, #8
357758:  STR             R1, [R0]
35775A:  ADD             SP, SP, #0x18
35775C:  POP             {R4,R6,R7,PC}
