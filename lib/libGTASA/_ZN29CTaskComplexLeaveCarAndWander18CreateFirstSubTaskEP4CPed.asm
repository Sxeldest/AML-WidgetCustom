; =========================================================
; Game Engine Function: _ZN29CTaskComplexLeaveCarAndWander18CreateFirstSubTaskEP4CPed
; Address            : 0x4F982C - 0x4F983E
; =========================================================

4F982C:  LDR.W           R2, [R1,#0x484]
4F9830:  MOV.W           R1, #0x2C0
4F9834:  TST.W           R2, #0x100
4F9838:  IT EQ
4F983A:  MOVEQ           R1, #0xC8; int
4F983C:  B               _ZNK29CTaskComplexLeaveCarAndWander13CreateSubTaskEi; CTaskComplexLeaveCarAndWander::CreateSubTask(int)
