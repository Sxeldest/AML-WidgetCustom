; =========================================================
; Game Engine Function: _ZN22CTaskComplexStuckInAir18CreateFirstSubTaskEP4CPed
; Address            : 0x5325DC - 0x5325F2
; =========================================================

5325DC:  MOV             R0, R1; this
5325DE:  LDR.W           R1, [R0,#0x440]
5325E2:  LDRH.W          R2, [R1,#0x276]
5325E6:  MOVS            R1, #0xCB
5325E8:  CMP             R2, #2
5325EA:  MOV             R2, R0; CPed *
5325EC:  IT EQ
5325EE:  MOVEQ           R1, #0xD0; int
5325F0:  B               _ZN22CTaskComplexStuckInAir13CreateSubTaskEiP4CPed; CTaskComplexStuckInAir::CreateSubTask(int,CPed *)
