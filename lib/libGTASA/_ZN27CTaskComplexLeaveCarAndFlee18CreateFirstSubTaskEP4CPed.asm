; =========================================================
; Game Engine Function: _ZN27CTaskComplexLeaveCarAndFlee18CreateFirstSubTaskEP4CPed
; Address            : 0x4F9B90 - 0x4F9BA4
; =========================================================

4F9B90:  LDR.W           R2, [R1,#0x484]
4F9B94:  MOV.W           R1, #0x2C0
4F9B98:  TST.W           R2, #0x100
4F9B9C:  IT EQ
4F9B9E:  MOVWEQ          R1, #0x38E; int
4F9BA2:  B               _ZNK27CTaskComplexLeaveCarAndFlee13CreateSubTaskEi; CTaskComplexLeaveCarAndFlee::CreateSubTask(int)
