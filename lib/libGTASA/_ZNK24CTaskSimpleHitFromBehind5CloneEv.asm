; =========================================================
; Game Engine Function: _ZNK24CTaskSimpleHitFromBehind5CloneEv
; Address            : 0x497D88 - 0x497DBE
; =========================================================

497D88:  PUSH            {R7,LR}
497D8A:  MOV             R7, SP
497D8C:  SUB             SP, SP, #0x10
497D8E:  MOVS            R0, #dword_20; this
497D90:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
497D94:  LDR             R1, =(aHitfrombehind - 0x497DA0); "HitFromBehind"
497D96:  MOVS            R2, #0
497D98:  MOV.W           R3, #0x19E
497D9C:  ADD             R1, PC; "HitFromBehind"
497D9E:  STRD.W          R3, R1, [SP,#0x18+var_18]
497DA2:  MOVS            R1, #0
497DA4:  STR             R2, [SP,#0x18+var_10]
497DA6:  MOVS            R2, #0x28 ; '('
497DA8:  MOV.W           R3, #0x40800000
497DAC:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
497DB0:  LDR             R1, =(_ZTV24CTaskSimpleHitFromBehind_ptr - 0x497DB6)
497DB2:  ADD             R1, PC; _ZTV24CTaskSimpleHitFromBehind_ptr
497DB4:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitFromBehind ...
497DB6:  ADDS            R1, #8
497DB8:  STR             R1, [R0]
497DBA:  ADD             SP, SP, #0x10
497DBC:  POP             {R7,PC}
