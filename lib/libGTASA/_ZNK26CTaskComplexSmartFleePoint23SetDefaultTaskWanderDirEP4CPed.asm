; =========================================================
; Game Engine Function: _ZNK26CTaskComplexSmartFleePoint23SetDefaultTaskWanderDirEP4CPed
; Address            : 0x5136A8 - 0x5136D6
; =========================================================

5136A8:  PUSH            {R4,R5,R7,LR}
5136AA:  ADD             R7, SP, #8
5136AC:  MOV             R4, R0
5136AE:  LDR.W           R0, [R1,#0x440]
5136B2:  LDR             R5, [R0,#0x14]
5136B4:  CMP             R5, #0
5136B6:  IT EQ
5136B8:  POPEQ           {R4,R5,R7,PC}
5136BA:  LDR             R0, [R5]
5136BC:  LDR             R1, [R0,#0x14]
5136BE:  MOV             R0, R5
5136C0:  BLX             R1
5136C2:  CMP.W           R0, #0x390
5136C6:  BNE             locret_5136D4
5136C8:  LDR             R1, [R4,#8]; CTaskComplexWander *
5136CA:  MOV             R0, R5; this
5136CC:  POP.W           {R4,R5,R7,LR}
5136D0:  B.W             sub_19535C
5136D4:  POP             {R4,R5,R7,PC}
