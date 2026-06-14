; =========================================================
; Game Engine Function: _ZN25CTaskComplexGetOnBoatSeat18CreateFirstSubTaskEP4CPed
; Address            : 0x5062AC - 0x5062DE
; =========================================================

5062AC:  PUSH            {R4,R6,R7,LR}
5062AE:  ADD             R7, SP, #8
5062B0:  SUB             SP, SP, #8
5062B2:  LDR             R0, [R0,#0xC]
5062B4:  LDR.W           R0, [R0,#0x388]
5062B8:  LDR.W           R4, [R0,#0xCC]
5062BC:  MOVS            R0, #dword_20; this
5062BE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5062C2:  MOVS            R1, #0
5062C4:  TST.W           R4, #0x400
5062C8:  STR             R1, [SP,#0x10+var_10]
5062CA:  ITE EQ
5062CC:  MOVEQ           R2, #0x51 ; 'Q'
5062CE:  MOVNE           R2, #0x3C ; '<'
5062D0:  MOVS            R1, #0
5062D2:  MOV.W           R3, #0x3F800000
5062D6:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
5062DA:  ADD             SP, SP, #8
5062DC:  POP             {R4,R6,R7,PC}
