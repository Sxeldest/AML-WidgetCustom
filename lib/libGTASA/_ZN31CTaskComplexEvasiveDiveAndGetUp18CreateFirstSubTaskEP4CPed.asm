; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUp18CreateFirstSubTaskEP4CPed
; Address            : 0x50B494 - 0x50B4A6
; =========================================================

50B494:  LDRB.W          R2, [R0,#0x20]
50B498:  MOVW            R1, #0x386
50B49C:  CMP             R2, #0
50B49E:  IT EQ
50B4A0:  MOVWEQ          R1, #0x1F7; int
50B4A4:  B               _ZNK31CTaskComplexEvasiveDiveAndGetUp13CreateSubTaskEi; CTaskComplexEvasiveDiveAndGetUp::CreateSubTask(int)
