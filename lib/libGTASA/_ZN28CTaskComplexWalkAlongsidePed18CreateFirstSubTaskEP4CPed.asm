; =========================================================
; Game Engine Function: _ZN28CTaskComplexWalkAlongsidePed18CreateFirstSubTaskEP4CPed
; Address            : 0x535C7C - 0x535CA8
; =========================================================

535C7C:  MOV             R2, R1; CPed *
535C7E:  LDR             R1, [R0,#0xC]
535C80:  CMP             R1, #0
535C82:  ITT EQ
535C84:  MOVEQ           R0, #0; this
535C86:  BXEQ            LR
535C88:  LDRB.W          R1, [R2,#0x485]
535C8C:  LSLS            R1, R1, #0x1F
535C8E:  ITT EQ
535C90:  MOVWEQ          R1, #0x38B; int
535C94:  BEQ             _ZNK28CTaskComplexWalkAlongsidePed13CreateSubTaskEiP4CPed; CTaskComplexWalkAlongsidePed::CreateSubTask(int,CPed *)
535C96:  LDR.W           R3, [R2,#0x590]
535C9A:  MOV.W           R1, #0x2C0
535C9E:  CMP             R3, #0
535CA0:  IT EQ
535CA2:  MOVWEQ          R1, #0x38B; int
535CA6:  B               _ZNK28CTaskComplexWalkAlongsidePed13CreateSubTaskEiP4CPed; CTaskComplexWalkAlongsidePed::CreateSubTask(int,CPed *)
