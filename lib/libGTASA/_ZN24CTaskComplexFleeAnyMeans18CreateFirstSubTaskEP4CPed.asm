; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeans18CreateFirstSubTaskEP4CPed
; Address            : 0x514842 - 0x51486E
; =========================================================

514842:  MOV             R2, R1; CPed *
514844:  LDR.W           R1, [R2,#0x590]
514848:  CMP             R1, #0
51484A:  ITT NE
51484C:  LDRBNE.W        R1, [R2,#0x485]
514850:  MOVSNE.W        R1, R1,LSL#31
514854:  BNE             loc_514868
514856:  LDRB.W          R3, [R0,#0x40]
51485A:  MOV.W           R1, #0x3A0
51485E:  CMP             R3, #0
514860:  IT EQ
514862:  MOVEQ.W         R1, #0x390; int
514866:  B               _ZNK24CTaskComplexFleeAnyMeans13CreateSubTaskEiP4CPed; CTaskComplexFleeAnyMeans::CreateSubTask(int,CPed *)
514868:  MOV.W           R1, #0x2D4; int
51486C:  B               _ZNK24CTaskComplexFleeAnyMeans13CreateSubTaskEiP4CPed; CTaskComplexFleeAnyMeans::CreateSubTask(int,CPed *)
