; =========================================================
; Game Engine Function: _ZN34CTaskComplexGoToPointAndStandStill17CreateNextSubTaskEP4CPed
; Address            : 0x51D3D4 - 0x51D434
; =========================================================

51D3D4:  PUSH            {R4,R5,R7,LR}
51D3D6:  ADD             R7, SP, #8
51D3D8:  MOV             R5, R0
51D3DA:  MOV             R4, R1
51D3DC:  LDR             R0, [R5,#8]
51D3DE:  LDR             R1, [R0]
51D3E0:  LDR             R1, [R1,#0x14]
51D3E2:  BLX             R1
51D3E4:  CMP             R0, #0xCB
51D3E6:  BEQ             loc_51D40A
51D3E8:  CMP.W           R0, #0x384
51D3EC:  BEQ             loc_51D410
51D3EE:  CMP.W           R0, #0x2C0
51D3F2:  ITT NE
51D3F4:  MOVNE           R0, #0
51D3F6:  POPNE           {R4,R5,R7,PC}
51D3F8:  LDRB.W          R0, [R4,#0x485]
51D3FC:  MOVW            R1, #0x516
51D400:  LSLS            R0, R0, #0x1F
51D402:  IT EQ
51D404:  MOVEQ.W         R1, #0x384
51D408:  B               loc_51D42A
51D40A:  MOVW            R1, #0x516
51D40E:  B               loc_51D42A
51D410:  LDR             R0, [R5,#8]
51D412:  MOVS            R2, #0x10
51D414:  LDRB.W          R1, [R5,#0x24]
51D418:  LDRB            R0, [R0,#0x1D]
51D41A:  AND.W           R1, R1, #0xEF
51D41E:  AND.W           R0, R2, R0,LSL#2
51D422:  ORRS            R0, R1
51D424:  MOVS            R1, #0xCB; int
51D426:  STRB.W          R0, [R5,#0x24]
51D42A:  MOV             R0, R5; this
51D42C:  MOV             R2, R4; CPed *
51D42E:  POP.W           {R4,R5,R7,LR}
51D432:  B               _ZNK34CTaskComplexGoToPointAndStandStill13CreateSubTaskEiP4CPed; CTaskComplexGoToPointAndStandStill::CreateSubTask(int,CPed *)
