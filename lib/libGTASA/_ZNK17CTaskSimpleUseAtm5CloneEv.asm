; =========================================================
; Game Engine Function: _ZNK17CTaskSimpleUseAtm5CloneEv
; Address            : 0x357820 - 0x357856
; =========================================================

357820:  PUSH            {R7,LR}
357822:  MOV             R7, SP
357824:  SUB             SP, SP, #0x10
357826:  MOVS            R0, #dword_20; this
357828:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35782C:  LDR             R1, =(aUseatm - 0x357838); "UseAtm"
35782E:  MOVS            R2, #0
357830:  MOV.W           R3, #0x1A4
357834:  ADD             R1, PC; "UseAtm"
357836:  STRD.W          R3, R1, [SP,#0x18+var_18]
35783A:  MOVS            R1, #0
35783C:  STR             R2, [SP,#0x18+var_10]
35783E:  MOVS            R2, #0x97
357840:  MOV.W           R3, #0x40800000
357844:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
357848:  LDR             R1, =(_ZTV17CTaskSimpleUseAtm_ptr - 0x35784E)
35784A:  ADD             R1, PC; _ZTV17CTaskSimpleUseAtm_ptr
35784C:  LDR             R1, [R1]; `vtable for'CTaskSimpleUseAtm ...
35784E:  ADDS            R1, #8
357850:  STR             R1, [R0]
357852:  ADD             SP, SP, #0x10
357854:  POP             {R7,PC}
