; =========================================================
; Game Engine Function: _ZN25CTaskComplexPolicePursuit18CreateFirstSubTaskEP4CPed
; Address            : 0x53D81C - 0x53D848
; =========================================================

53D81C:  PUSH            {R4,R5,R7,LR}
53D81E:  ADD             R7, SP, #8
53D820:  MOV             R4, R1
53D822:  MOV             R5, R0
53D824:  STR             R4, [R5,#0x10]
53D826:  BLX             j__ZN25CTaskComplexPolicePursuit10SetPursuitEP4CPed; CTaskComplexPolicePursuit::SetPursuit(CPed *)
53D82A:  CBZ             R0, loc_53D832
53D82C:  MOVW            R1, #0x44D
53D830:  B               loc_53D83E
53D832:  LDRB            R0, [R5,#0xC]
53D834:  MOVW            R1, #0x516; int
53D838:  AND.W           R0, R0, #0xFB
53D83C:  STRB            R0, [R5,#0xC]
53D83E:  MOV             R0, R5; this
53D840:  MOV             R2, R4; CPed *
53D842:  POP.W           {R4,R5,R7,LR}
53D846:  B               _ZNK25CTaskComplexPolicePursuit13CreateSubTaskEiP4CPed; CTaskComplexPolicePursuit::CreateSubTask(int,CPed *)
