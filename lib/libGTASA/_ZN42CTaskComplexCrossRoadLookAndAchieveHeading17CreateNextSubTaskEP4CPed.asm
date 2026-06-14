; =========================================================
; Game Engine Function: _ZN42CTaskComplexCrossRoadLookAndAchieveHeading17CreateNextSubTaskEP4CPed
; Address            : 0x4ECD48 - 0x4ECD80
; =========================================================

4ECD48:  PUSH            {R4,R5,R7,LR}
4ECD4A:  ADD             R7, SP, #8
4ECD4C:  SUB             SP, SP, #8
4ECD4E:  LDR             R0, [R0,#8]
4ECD50:  MOV             R4, R1
4ECD52:  LDR             R1, [R0]
4ECD54:  LDR             R1, [R1,#0x14]
4ECD56:  BLX             R1
4ECD58:  MOVW            R1, #0x386; unsigned int
4ECD5C:  MOVS            R5, #0
4ECD5E:  CMP             R0, R1
4ECD60:  BNE             loc_4ECD7A
4ECD62:  MOVS            R0, #dword_20; this
4ECD64:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECD68:  LDR.W           R1, [R4,#0x4E0]
4ECD6C:  MOVS            R2, #4
4ECD6E:  MOV.W           R3, #0x40800000
4ECD72:  STR             R5, [SP,#0x10+var_10]
4ECD74:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
4ECD78:  MOV             R5, R0
4ECD7A:  MOV             R0, R5
4ECD7C:  ADD             SP, SP, #8
4ECD7E:  POP             {R4,R5,R7,PC}
