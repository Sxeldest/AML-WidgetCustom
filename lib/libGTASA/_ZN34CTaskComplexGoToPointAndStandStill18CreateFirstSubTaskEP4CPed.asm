; =========================================================
; Game Engine Function: _ZN34CTaskComplexGoToPointAndStandStill18CreateFirstSubTaskEP4CPed
; Address            : 0x51D724 - 0x51D746
; =========================================================

51D724:  MOV             R2, R1; CPed *
51D726:  LDRB.W          R1, [R0,#0x24]
51D72A:  AND.W           R1, R1, #0xFB
51D72E:  STRB.W          R1, [R0,#0x24]
51D732:  LDR.W           R3, [R2,#0x484]
51D736:  MOV.W           R1, #0x2C0
51D73A:  TST.W           R3, #0x100
51D73E:  IT EQ
51D740:  MOVEQ.W         R1, #0x384; int
51D744:  B               _ZNK34CTaskComplexGoToPointAndStandStill13CreateSubTaskEiP4CPed; CTaskComplexGoToPointAndStandStill::CreateSubTask(int,CPed *)
