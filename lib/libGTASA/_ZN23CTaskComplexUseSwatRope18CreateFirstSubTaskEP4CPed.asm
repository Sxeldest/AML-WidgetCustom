; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRope18CreateFirstSubTaskEP4CPed
; Address            : 0x511D68 - 0x511D9E
; =========================================================

511D68:  PUSH            {R7,LR}
511D6A:  MOV             R7, SP
511D6C:  SUB             SP, SP, #0x10
511D6E:  MOVS            R0, #dword_20; this
511D70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511D74:  LDR             R1, =(aAbseil - 0x511D80); "Abseil"
511D76:  MOVS            R2, #0
511D78:  MOVW            R3, #0x1A7
511D7C:  ADD             R1, PC; "Abseil"
511D7E:  STRD.W          R3, R1, [SP,#0x18+var_18]
511D82:  MOVS            R1, #0
511D84:  STR             R2, [SP,#0x18+var_10]
511D86:  MOVS            R2, #0x98
511D88:  MOV.W           R3, #0x40800000
511D8C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
511D90:  LDR             R1, =(_ZTV17CTaskSimpleAbseil_ptr - 0x511D96)
511D92:  ADD             R1, PC; _ZTV17CTaskSimpleAbseil_ptr
511D94:  LDR             R1, [R1]; `vtable for'CTaskSimpleAbseil ...
511D96:  ADDS            R1, #8
511D98:  STR             R1, [R0]
511D9A:  ADD             SP, SP, #0x10
511D9C:  POP             {R7,PC}
